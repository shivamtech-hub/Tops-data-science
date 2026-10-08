
# 1. Create a SQL table called Restaurant with columns: id, name, cuisine, location, and average_rating. Insert at least 5 sample rows representing popular restaurants from Zomato.

CREATE TABLE Restaurant (
    ID INT PRIMARY KEY,
    NAME VARCHAR(100),
    cuisine VARCHAR(50),
    City VARCHAR(100),
    rating DECIMAL(2,1));
    
    
    INSERT INTO Restaurant (Id, name, cuisine, City, Rating)
VALUES
(1, 'Food Hub', 'Indian', 'Surat', 4.5),
(2, 'Spice Garden', 'Italian', 'Pune', 3.8),
(3, 'Green Leaf' , 'Chinese' , 'Surat', 4.2),
(4, 'Pizza Corner', 'Cafe', 'Ahemdabad', 4.6),
(5, 'Urban Cafe', 'Indian', 'Delhi', 3.9),
(6, 'Royal Dine', 'Maxican', 'Indore', 4.1),
(7, 'Tasty Bites', 'Italian', 'Pune', 4.3),
(8, 'Fresh Kitchen','Vadodara','Indian',3.7),
(9, 'The Food Palace','Surat','Chinese',4.1);

# 2. Write a SQL query to generate a report showing the number of restaurants for each cuisine type from your Restaurant table, 
# ordered by the count in descending order.<br><br><em><strong>Hint:</strong> Use GROUP BY and ORDER BY.</em>

select cuisine, count(*) as restaurant_count
from restaurant
group by cuisine order by restaurant_count desc;


# 3. Add a new table called Review with columns: id, restaurant_id, user_name, rating, and review_date. Insert at least 10 sample reviews, linking them to restaurants using restaurant_id.

CREATE TABLE Review (
    id INT PRIMARY KEY,
    restaurant_id INT,
    user_name VARCHAR(100),
    rating DECIMAL(3,1),
    review_date DATE,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(id));
    
    INSERT INTO Review (id, restaurant_id, user_name, rating, review_date)
VALUES
(1, 1, 'Amit Sharma', 4.5, '2026-08-01'),
(2, 2, 'Priya Patel', 4.2, '2026-08-02'),
(3, 3, 'Rahul Verma', 4.8, '2026-08-03'),
(4, 4, 'Neha Singh', 3.9, '2026-08-04'),
(5, 5, 'Karan Mehta', 4.6, '2026-08-05'),
(6, 6, 'Pooja Shah', 4.1, '2026-08-06'),
(7, 7, 'Rohit Kumar', 4.7, '2026-08-07'),
(8, 8, 'Sneha Joshi', 4.3, '2026-08-08'),
(9, 9, 'Vikas Gupta', 3.8, '2026-08-09'),
(10, 10, 'Anjali Patel', 4.4, '2026-08-10');

# 4. Write a SQL query using a JOIN to display each restaurant's name, cuisine, and its average review rating (from the Review table), 
#ordered by highest average rating first.<br><br><em><strong>Hint:</strong> Use JOIN and GROUP BY with aggregate functions.</em>

select r.name,r.cuisine, avg(rv.rating) as avg_review_rating
from restaurant r
left join review rv
on r.id = rv.restaurant_id
group by r.id,r.name,r.cuisine
order by avg_review_rating desc;

# 5. Use a window function to rank restaurants by their average review rating within each cuisine type, showing the restaurant name,
# cuisine, average rating, and rank.<br><br><em><strong>Hint:</strong> Use the RANK() or DENSE_RANK() window function partitioned by cuisine.</em>

select name,cuisine,rating,rank() over (partition by cuisine order by rating desc) as restaurant_rank
from(select r.*, avg(rv.rating) as avg_rating from restaurant r
left join review rv
on r.id = rv.restaurant_id
group by r.id,r.name,r.cuisine) as ranked_data
order by cuisine,restaurant_rank;


    
    











