-- Q 1. Create a table called Playlist with columns: id (INT, primary key), song_name (VARCHAR), artist (VARCHAR), and duration (INT, seconds). 
-- Insert a single row for your current favorite song.

CREATE TABLE Playlist (
    id INT PRIMARY KEY,
    song_name VARCHAR(100),
    artist VARCHAR(100),
    duration INT
);

INSERT INTO Playlist (id, song_name, artist, duration)
VALUES (1, 'Kesariya', 'Arijit Singh', 268);

-- Q.2.Insert 3 new rows into the Playlist table for songs you recently listened to on Spotify, including their song_name, artist,
 -- and duration.

INSERT INTO Playlist (id, song_name, artist, duration)
VALUES
(2, 'Excuses', 'AP Dhillon', 180),
(3, '295', 'Sidhu Moose Wala', 245),
(4, 'Heeriye', 'Arijit Singh', 192);
INSERT INTO Playlist (id, song_name, artist, duration)
VALUES
(5, 'Brown Munde', 'AP Dhillon', 258),
(6, 'Tum Hi Ho', 'Arijit Singh', 262),
(7, 'With You', 'AP Dhillon', 185),
(8, 'Chaleya', 'Arijit Singh', 170),
(9, 'Insane', 'AP Dhillon', 205),
(10, 'Apna Bana Le', 'Arijit Singh', 261),
(11, 'Maan Meri Jaan', 'King', 194),
(12, 'Tera Ban Jaunga', 'Akhil Sachdeva', 230),
(13, 'Perfect', 'Ed Sheeran', 263),
(14, 'Shape of You', 'Ed Sheeran', 234),
(15, 'Believer', 'Imagine Dragons', 204),
(16, 'Levitating', 'Dua Lipa', 203),
(17, 'Attention', 'Charlie Puth', 211),
(18, 'Love Me Like You Do', 'Ellie Goulding', 253),
(19, 'Stay', 'The Kid LAROI', 141),
(20, 'Flowers', 'Miley Cyrus', 200),
(21, 'Tera Yaar Hoon Main', 'Arijit Singh', 249),
(22, 'Agar Tum Saath Ho', 'Alka Yagnik', 329),
(23, 'Khairiyat', 'Arijit Singh', 274),
(24, 'Shayad', 'Arijit Singh', 247),
(25, 'Raabta', 'Arijit Singh', 297),
(26, 'Phir Bhi Tumko Chaahunga', 'Arijit Singh', 351),
(27, 'Hawayein', 'Arijit Singh', 298),
(28, 'Zaalima', 'Arijit Singh', 219),
(29, 'Gerua', 'Arijit Singh', 326),
(30, 'Samjhawan', 'Arijit Singh', 273),
(31, 'Daryaa', 'Ammy Virk', 276),
(32, 'Lover', 'Diljit Dosanjh', 214),
(33, 'Born To Shine', 'Diljit Dosanjh', 211),
(34, 'Do You Know', 'Diljit Dosanjh', 198),
(35, 'G.O.A.T.', 'Diljit Dosanjh', 217),
(36, 'Jalebi Baby', 'Tesher', 196),
(37, 'On My Way', 'Alan Walker', 193),
(38, 'Faded', 'Alan Walker', 212),
(39, 'Alone', 'Alan Walker', 164),
(40, 'Closer', 'The Chainsmokers', 244),
(41, 'Something Just Like This', 'Coldplay', 247),
(42, 'Counting Stars', 'OneRepublic', 257),
(43, 'Senorita', 'Shawn Mendes', 191),
(44, 'Havana', 'Camila Cabello', 217),
(45, 'Attention', 'Charlie Puth', 211),
(46, 'Photograph', 'Ed Sheeran', 258),
(47, 'Let Me Love You', 'DJ Snake', 205),
(48, 'Cheap Thrills', 'Sia', 211),
(49, 'Unstoppable', 'Sia', 217),
(50, 'Despacito', 'Luis Fonsi', 229);

SELECT * FROM PLAYLIST;

SELECT COUNT(*) AS TOTAL_RECORDS
FROM playlist;

-- Q.3.Update the artist name for one of your Playlist entries to fix a typo (for example, change 'Arjit Singh' to 'Arijit Singh') 
-- using the UPDATE statement with a WHERE clause.

UPDATE Playlist
SET artist = 'Arijit Singh'
WHERE artist = 'Arjit Singh';

UPDATE Playlist
SET artist = 'Arijit Singh'
WHERE id = 1;

-- Q.4.Delete a song from the Playlist table where the duration is less than 120 seconds 
-- using the DELETE statement and a WHERE clause.<br><br><em><strong>Hint:</strong> Make sure your WHERE clause is specific so you don’t accidentally delete all rows.</em>

DELETE FROM Playlist
WHERE id = 50
AND duration < 120;

-- Q.5.Write an SQL statement that would update the song_name for all songs by 'AP Dhillon' in your Playlist to add '(Remix)' at the end of the name, 
-- but only if the duration is more than 180 seconds.<br><br><em><strong>Constraint:</strong> Combine UPDATE with WHERE to target only the correct rows.</em>

UPDATE Playlist
SET song_name = CONCAT(song_name, ' (Remix)')
WHERE artist = 'AP Dhillon'
AND duration > 180;

select * from playlist;



