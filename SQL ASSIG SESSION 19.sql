
# 1 Write an SQL query to find the top 5 highest-rated restaurants in Koramangala that serve North Indian cuisine, using the Zomato Bangalore dataset

SELECT 
    name,
    location,
    cuisines,
    rate,
    approx_cost_for_two
FROM zomato
WHERE location LIKE '%Koramangala%'
  AND cuisines LIKE '%North Indian%'
ORDER BY rate DESC
LIMIT 5;

# 2. Using SQL, calculate the average cost for two people for each cuisine type and list the 3 most expensive cuisines to eat in Bangalore.

SELECT 
    cuisines,
    ROUND(AVG(approx_cost_for_two), 2) AS avg_cost_for_two
FROM zomato
WHERE approx_cost_for_two IS NOT NULL
GROUP BY cuisines
ORDER BY avg_cost_for_two DESC
LIMIT 3;

# 3. Find all restaurants that offer online delivery but have a rating below 3.0, and suggest a marketing strategy to improve their ratings based on your findings.<br><br><em><strong>Hint:</strong> Look for patterns in location, cuisine, or price that might explain the low ratings.</em>


SELECT 
    name,
    location,
    cuisines,
    rate,
    approx_cost_for_two,
    online_order
FROM zomato
WHERE online_order = 'Yes'
  AND rate < 3.0
ORDER BY rate ASC;


SELECT 
    location,
    cuisines,
    COUNT(*) AS restaurant_count,
    ROUND(AVG(rate), 2) AS avg_rating,
    ROUND(AVG(approx_cost_for_two), 2) AS avg_cost
FROM zomato
WHERE online_order = 'Yes'
  AND rate < 3.0
GROUP BY location, cuisines
ORDER BY avg_rating ASC;

# 4. Write an SQL query to segment restaurants into three market segments based on average cost for two: budget (below 400), mid-range (400-800), and premium (above 800). Count how many restaurants fall into each segment.

SELECT 
    CASE
        WHEN approx_cost_for_two < 400 THEN 'Budget'
        WHEN approx_cost_for_two BETWEEN 400 AND 800 THEN 'Mid-Range'
        WHEN approx_cost_for_two > 800 THEN 'Premium'
    END AS market_segment,
    COUNT(*) AS restaurant_count
FROM zomato
WHERE approx_cost_for_two IS NOT NULL
GROUP BY 
    CASE
        WHEN approx_cost_for_two < 400 THEN 'Budget'
        WHEN approx_cost_for_two BETWEEN 400 AND 800 THEN 'Mid-Range'
        WHEN approx_cost_for_two > 800 THEN 'Premium'
    END
ORDER BY restaurant_count DESC;



# 5. Use ChatGPT or Copilot to help you write an SQL query that lists the top 10 most popular restaurant chains (by number of outlets) in the dataset, then run and validate the query yourself.<br><br><em><strong>Hint:</strong> Search for 'SQL group by count example' if you get stuck.</em>

SELECT 
    name AS restaurant_chain,
    COUNT(*) AS outlet_count
FROM zomato
WHERE name IS NOT NULL
GROUP BY name
ORDER BY outlet_count DESC
LIMIT 10;





