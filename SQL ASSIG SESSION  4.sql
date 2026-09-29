
-- Q  1.Create a table named MusicPlaylist with columns: id, song_name, artist, genre, and duration.Insert at least 5 records
   representing songs from your favorite Spotify playlist, then write a SELECT statement to retrieve all columns for all songs.
CREATE TABLE MusicPlaylist (
    id INT PRIMARY KEY,
    song_name VARCHAR(100),
    artist VARCHAR(100),
    genre VARCHAR(50),
    duration INT
);

INSERT INTO MusicPlaylist (id, song_name, artist, genre, duration)
VALUES
(1, 'Sar Aankhon Pe Mere', 'Arijit Singh', 'Hindi', 236),
(2, 'Bairi Piya', 'Shreya Ghoshal', 'Hindi', 230),
(3, 'Thinking of You', 'AP Dhillon', 'Punjabi', 180),
(4, 'Deewaniyat', 'Vishal Mishra', 'Hindi', 257),
(5, 'Bairan', 'Banjaare', 'Haryanvi', 151),
(6, 'Narayan Mil Jayega', 'Jubin Nautiyal', 'Hindi', 280),
(7, 'Afsaana Banaaya Aapne', 'Asees Kaur', 'Hindi', 225),
(8, 'Casa Tupka Anthemo', 'Yo Yo Honey Singh', 'Hindi', 190),
(9, 'Dealer', 'Diljit Dosanjh', 'Punjabi', 110),
(10, 'Kabze', 'Bintu Pabra', 'Haryanvi', 222);

select * from musicplaylist;


-- Q 2. Write a SQL query to display only the song_name and artist columns from the MusicPlaylist table, showing just the first 3 records using the LIMIT keyword.
select song_name,artist
from musicplaylist
limit 3;

-- Q  3.Suppose you have a table named FoodOrders with columns: id, restaurant, food_item, and order_date. Write a SQL query to list
       all unique restaurant names where you have placed orders, using the DISTINCT keyword.

select distinct restaurant_id
from restaurants;

-- Q 4.Write a SQL query on the FoodOrders table to select food_item as 'Dish' and order_date as 'Date Ordered', displaying 
  only these two columns with the column aliases in the output.
select items as dish,
orders as ordered_data
from restaurants;

-- Q 5.You tried running this query: SELECT DISTINCT food_item, restaurant FROM FoodOrders LIMIT 2, but it returns an error or doesn't work as expected.
Identify and fix the mistake in the query.<br><br><em><strong>Hint:</strong> Check the correct placement and usage of the LIMIT keyword in SQL syntax.</em>
select distinct items, restaurant_id
from restaurants
limit 2;



