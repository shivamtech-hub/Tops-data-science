
use newschema;


-- 1. Create a table called Restaurants with columns: id, name, cuisine, rating, and city.
 -- Insert at least 5 sample records representing real or fictional restaurants you might find on Zomato.

CREATE TABLE Restaurant (
    customer_id INT PRIMARY KEY,
    Name VARCHAR(100),
    Cuisine VARCHAR(50),
    Rating DECIMAL(2,1),
    City VARCHAR(50)
);

INSERT INTO Restaurant (customer_id, Name, Cuisine, Rating, City)
VALUES
(1, 'Swagat Restaurant', 'South Indian', 4.3, 'Ahmedabad'),
(2, 'Swadisht Food', 'Gujarati', 4.1, 'Surat'),
(3, 'Dragon House', 'Chinese', 4.5, 'Mumbai'),
(4, 'Pizza Palace', 'Italian', 3.8, 'Pune'),
(5, 'Spice Garden', 'South Indian', 4.6, 'Delhi'),
(6, 'Royal Kitchen', 'North Indian', 4.2, 'Jaipur'),
(7, 'Food Junction', 'Chinese', 3.9, 'Vadodara'),
(8, 'Urban Tadka', 'Punjabi', 4.4, 'Chandigarh'),
(9, 'Green Leaf', 'Gujarati', 4.0, 'Rajkot'),
(10, 'Taste Hub', 'Italian', 3.7, 'Indore'),
(11, 'Swaad Restaurant', 'South Indian', 4.5, 'Ahmedabad'),
(12, 'Maharaja Palace', 'North Indian', 4.2, 'Delhi'),
(13, 'Chinese Wok', 'Chinese', 4.1, 'Surat'),
(14, 'Italian Kitchen', 'Italian', 4.3, 'Mumbai'),
(15, 'Dosa House', 'South Indian', 4.6, 'Bengaluru'),
(16, 'Punjabi Rasoi', 'Punjabi', 4.4, 'Amritsar'),
(17, 'Kathiyawadi Dhaba', 'Gujarati', 4.0, 'Rajkot'),
(18, 'Food Factory', 'Chinese', 3.6, 'Vadodara'),
(19, 'Italiano Cafe', 'Italian', 4.2, 'Pune'),
(20, 'Desi Zaika', 'North Indian', 4.5, 'Lucknow'),
(21, 'Swagat Cafe', 'South Indian', 3.9, 'Nashik'),
(22, 'Royal Dine', 'North Indian', 4.3, 'Jaipur'),
(23, 'Dragon Palace', 'Chinese', 4.0, 'Kolkata'),
(24, 'Pasta Point', 'Italian', 4.1, 'Hyderabad'),
(25, 'Udupi Garden', 'South Indian', 4.5, 'Chennai'),
(26, 'Tandoori Nights', 'Punjabi', 4.4, 'Delhi'),
(27, 'Gujarati Rasoi', 'Gujarati', 4.2, 'Ahmedabad'),
(28, 'Chopstick House', 'Chinese', 3.8, 'Mumbai'),
(29, 'Pizza Corner', 'Italian', 4.0, 'Surat'),
(30, 'Biryani Express', 'North Indian', 4.6, 'Hyderabad'),
(31, 'Swadisht Bhojanalay', 'Gujarati', 4.3, 'Vadodara'),
(32, 'South Spice', 'South Indian', 4.4, 'Bengaluru'),
(33, 'The Food Court', 'Chinese', 3.7, 'Indore'),
(34, 'Pasta House', 'Italian', 4.2, 'Pune'),
(35, 'Amritsari Kitchen', 'Punjabi', 4.5, 'Amritsar'),
(36, 'Rajasthani Thali', 'North Indian', 4.1, 'Jaipur'),
(37, 'Surti Locho House', 'Gujarati', 4.6, 'Surat'),
(38, 'Mumbai Masala', 'North Indian', 4.0, 'Mumbai'),
(39, 'Dosa Corner', 'South Indian', 4.3, 'Chennai'),
(40, 'China Town', 'Chinese', 4.1, 'Kolkata'),
(41, 'Italian Bite', 'Italian', 3.9, 'Delhi'),
(42, 'Ahmedabad Zaika', 'Gujarati', 4.4, 'Ahmedabad'),
(43, 'Hyderabad Spice', 'North Indian', 4.5, 'Hyderabad'),
(44, 'Bengaluru Tiffin', 'South Indian', 4.2, 'Bengaluru'),
(45, 'Pune Foodies', 'Chinese', 3.8, 'Pune'),
(46, 'Royal Punjab', 'Punjabi', 4.6, 'Chandigarh'),
(47, 'Indore Kitchen', 'North Indian', 4.0, 'Indore'),
(48, 'Nashik Garden', 'Italian', 4.3, 'Nashik'),
(49, 'Lucknow Nawab', 'North Indian', 4.5, 'Lucknow'),
(50, 'Rajkot Rasoi', 'Gujarati', 4.1, 'Rajkot');

select * from restaurant;

-- 2. Write a SQL query to find all restaurants in the Restaurants table that have a
 -- rating greater than 4.0 and are located in either 'Ahmedabad' or 'Surat'.

select * from restaurant
where rating > 4.0
and city  in ('ahmedabad', 'surat');


-- 3. Using the LIKE operator, write a query to select all restaurants whose names start with 'Swa' (for example, 'Swagat', 'Swadisht') 
-- from the Restaurants table.<br><br><em><strong>Hint:</strong> Use LIKE 'Swa%'.</em>

select * from restaurant
where name like 'swa%';


-- 4. Write a SQL query using the BETWEEN keyword to find 
-- all restaurants in the Restaurants table with a rating between 3.5 and 4.5 (inclusive).

select * from restaurant
where rating between 3.5 and 4.5;

-- 5. Write a query to find all restaurants whose cuisine is either 'Chinese', 'Italian', or 'South Indian' using the IN operator.

select * from restaurant
where cuisine in ('chinese', 'italian', 'south indian');

SELECT * FROM restaurant;





