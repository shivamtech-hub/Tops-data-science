
-- Q 1
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


-- Q 2
select song_name,artist
from musicplaylist
limit 3;

-- Q 3

select distinct restaurant_id
from restaurants;

-- Q 4
select items as dish,
orders as ordered_data
from restaurants;

-- Q 5
select distinct items, restaurant_id
from restaurants
limit 2;



