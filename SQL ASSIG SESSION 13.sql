
-- Q 1.Create a table named Playlists with columns: id, user_id, playlist_name, and total_likes. Insert at least 8 sample rows with different users and playlists, making sure some playlists have the same user_id.

CREATE TABLE Playlists(
playlist_id int primary key,
user_id int,
playlist_name varchar(100),
total_likes int);

INSERT INTO playlists (playlist_id, playlist_name, user_id, total_likes)
VALUES
(1, 'Bollywood Hits', 101, 850),
(2, 'Chill Vibes', 101, 620),
(3, 'Workout Mix', 101, 740),
(4, 'Romantic Songs', 101, 530),
(5, 'Punjabi Beats', 102, 920),
(6, 'Party Songs', 102, 780),
(7, 'Travel Music', 102, 650),
(8, 'Sad Songs', 102, 480),
(9, 'Morning Motivation', 103, 560),
(10, 'Night Vibes', 103, 430);

-- Q 2. Write a SQL query using ROW_NUMBER() and the OVER() clause to assign a unique row number to each playlist, ordered by total_likes in descending order.

select playlist_name,user_id,total_likes,
row_number() over (order by total_likes desc) as rom_num
from playlists;

-- Q 3. Use the RANK() function with the OVER() clause to rank all playlists by total_likes, and display the playlist_name, user_id, total_likes, and their rank.

select playlist_name,user_id,total_likes,
rank() over (order by total_likes desc ) as playlist_rank
from playlists;

-- Q 4. Write a SQL query using DENSE_RANK() and PARTITION BY user_id to rank each user's playlists by total_likes, showing playlist_name, user_id, total_likes, and dense rank.<br><br><em><strong>Hint:</strong> This will show how popular each playlist is within each user's account, similar to how Spotify might rank your top playlists.</em>

select playlist_name,user_id,total_likes,
dense_rank() over (partition  by user_id order by total_likes desc) as dense_rn
from playlists;

-- Q 5. Imagine you want to show the top 2 playlists per user based on total_likes, like Spotify's 'Your Top Playlists' feature. Write a query using a window function to select only the top 2 playlists for each user.

select playlist_name,user_id,total_likes
from (select playlist_name,user_id,total_likes,
row_number() over(partition by user_id
order by total_likes desc) as rn
from playlists) as ranked_playlists
where rn <= 2;


