use `create database employee`;

-- Q 1. Create two tables in your database: 'restaurants' (id, name, city) and 'dishes' (id, restaurant_id, dish_name, price). Insert at least 3 restaurants and 2-3 dishes for each restaurant.

CREATE TABLE restaurants (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE dishes (
    id INT PRIMARY KEY,
    restaurant_id INT,
    dish_name VARCHAR(100),
    price DECIMAL(10,2),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(id)
);
INSERT INTO restaurants (id, name, city) VALUES
(1, 'Spice Garden', 'Surat'),
(2, 'Food Palace', 'Ahmedabad'),
(3, 'Punjabi Tadka', 'Vadodara'),
(4, 'Royal Kitchen', 'Mumbai'),
(5, 'Tasty Bites', 'Delhi');

INSERT INTO dishes (id, restaurant_id, dish_name, price) VALUES
(1, 1, 'Paneer Butter Masala', 250.00),
(2, 1, 'Veg Biryani', 180.00),
(3, 2, 'Margherita Pizza', 299.00),
(4, 2, 'White Sauce Pasta', 220.00),
(5, 3, 'Dal Makhani', 200.00);

-- Q2. Write an SQL INNER JOIN query to display each dish along with its restaurant name and city, similar to how Zomato shows dish details with the restaurant info.

select * from restaurants;
select d.dish_name,d.price,r.name as restaurant_name,r.city
from dishes d
inner join restaurants r
on r.id = d.restaurant_id;

-- Q 3. Write an SQL LEFT JOIN query to list all restaurants and their dishes, showing restaurants even if they currently have no dishes on the menu.<br><br><em><strong>Hint:</strong> 
-- Use LEFT JOIN so restaurants without dishes still appear in the results with NULL for dish columns.</em>

select r.id,r.name as restaurant_name,r.city,d.dish_name,d.price
from restaurants r
left join dishes d
on r.id = d.restaurant_id;


-- Q 4.Write an SQL RIGHT JOIN query to display all dishes and their restaurant names, including any dishes that might not be linked to a restaurant (simulate a data error where a dish has a restaurant_id that doesn't match any restaurant).

select d.id dish_id,d.dish_name,r.name as restaurant_name,r.city
from restaurants r
right join dishes d
on d.restaurant_id = r.id;



-- Q.5 Given this scenario: You want to show a list of all playlists and the songs inside them, like Spotify.
-- Explain which JOIN type (INNER, LEFT, or RIGHT) you would use to show all playlists, even if some are empty, and write the SQL query for it.

select p.playlist_id,p.playlist_name,ps.song_name
from playlists p
left join playlist_songs ps
on p.playlist_id = ps.playlist_id;


select * from playlist_songs;
select * from playlists;

-- INNER JOIN  Only matching records from both tables.
-- LEFT JOIN  All records from the left table and matching records from the right.
-- RIGHT JOIN All records from the right table and matching records from the left.

