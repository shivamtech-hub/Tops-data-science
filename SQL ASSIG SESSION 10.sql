
-- Q 1. Create two tables: Influencers (id, name) and Collaborations (id, influencer1_id, influencer2_id, collab_date). 
-- Write a SQL FULL JOIN query to list all influencers and show their collaboration partner names if any, including influencers with no collaborations


CREATE TABLE Influencers (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Collaborations (
    id INT PRIMARY KEY,
    influencer1_id INT,
    influencer2_id INT,
    collab_date DATE
);

select i1.id,i1.name AS influencer_name,i2.name AS partner_name,c.collab_date
FROM Influencers i1
LEFT JOIN Collaborations c
ON i1.id = c.influencer1_id
LEFT JOIN Influencers i2
ON c.influencer2_id = i2.id
UNION
SELECT i1.id,i1.name AS influencer_name,i2.name AS partner_name,c.collab_date
FROM Influencers i1
RIGHT JOIN Collaborations c
ON i1.id = c.influencer1_id
LEFT JOIN Influencers i2
ON c.influencer2_id = i2.id;


-- Q 2.Using a SELF JOIN, write a query on a table called Playlists (id, user_id, playlist_name, parent_playlist_id) to display each playlist alongside its parent playlist name, similar to how Spotify shows nested playlists.
-- <br><br><em><strong>Hint:</strong> Join Playlists with itself on parent_playlist_id = id.</em>

SELECT p.id,p.user_id,p.playlist_name,p.parent_playlist_id,
parent.playlist_name AS parent_playlist_name
FROM Playlists p
LEFT JOIN Playlists parent
ON p.parent_playlist_id = parent.id;


-- Q 3.Given three tables: Users (id, username), Orders (id, user_id, order_date), and Payments (id, order_id, amount), write a 
-- SQL query using multiple JOINs to display each username, their order date, and payment amount, showing all users even if they have no orders or payments.

SELECT u.username,o.order_date,p.amount AS payment_amount
FROM Users u
LEFT JOIN Orders o
ON u.id = o.user_id
LEFT JOIN Payments p
ON o.id = p.order_id;

-- Q 4.You notice that your JOIN query between Zomato's Restaurants and Reviews tables is returning duplicate rows for some restaurants. Modify your query to eliminate duplicates and explain in one line why the duplicates were happening.
-- <br><br><em><strong>Hint:</strong> Use DISTINCT or GROUP BY and consider the relationship between restaurants and reviews.</em>

SELECT DISTINCTr.id,r.name,r.city
FROM Restaurants r
JOIN Reviews rev
ON r.id = rev.restaurant_id;


-- Q 5. Write two different JOIN queries on a Products and Categories table (like Flipkart) to list all products with their category names, 
-- but use different join conditions in each. Briefly explain which join condition is more efficient and why.

SELECT p.product_id,p.product_name,c.category_name
FROM Products p
INNER JOIN Categories c
ON p.category_id = c.category_id;

SELECT p.product_id,p.product_name,c.category_name
FROM Products p
INNER JOIN Categories c
ON c.category_id = (
SELECT p2.category_id
FROM Products p2
WHERE p2.product_id = p.product_id);

