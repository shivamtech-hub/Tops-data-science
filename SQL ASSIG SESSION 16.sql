# 1. Import a CSV file of food delivery orders (with columns like order_id, restaurant_name, customer_name, order_amount, 
# order_date) into a new SQL table named FoodOrders using your database tool of choice.

load data infile 'c:/food_orders.csv'
into table foodorders
fields terminated by','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows
(order_id, restaurant_name,customer_name,order_amount,order_date);


# 2. Write SQL statements to create a table called TopSongs with columns: song_id, song_title, artist, streams, and release_date, 
# then insert at least 5 records representing popular tracks from Spotify.

CREATE TABLE TopSongs (
    song_id INT PRIMARY KEY,
    song_title VARCHAR(150),
    artist VARCHAR(100),
    streams BIGINT,
    release_date DATE);
    
    INSERT INTO TopSongs
(song_id, song_title, artist, streams, release_date)
VALUES
(1, 'Blinding Lights', 'The Weeknd', 4500000000, '2019-11-29'),
(2, 'Shape of You', 'Ed Sheeran', 4200000000, '2017-01-06'),
(3, 'As It Was', 'Harry Styles', 3000000000, '2022-04-01'),
(4, 'Starboy', 'The Weeknd', 2800000000, '2016-09-22'),
(5, 'One Dance', 'Drake', 2900000000, '2016-04-05'),
(6, 'Someone Like You', 'Adele', 2400000000, '2011-01-24'),
(7, 'Believer', 'Imagine Dragons', 2300000000, '2017-02-01'),
(8, 'Perfect', 'Ed Sheeran', 2500000000, '2017-03-03'),
(9, 'Dance Monkey', 'Tones and I', 2700000000, '2019-05-10'),
(10, 'Closer', 'The Chainsmokers', 2200000000, '2016-07-29');

# 3. Write an SQL query to find the top 3 customers who ordered the most from the FoodOrders table based on total order_amount, and display their names and total spent.

select customer_name,sum(order_amount) as total_spent
from foodorders
group by customer_name
order by total_spent desc
limit 3;

# 4. Generate a product performance report by writing an SQL query that lists each restaurant_name from FoodOrders, the number of orders, and the total order_amount,
# ordered by total order_amount descending.<br><br><em><strong>Hint:</strong> Use GROUP BY and ORDER BY clauses.</em>

select restaurant_name,count(order_id) as number_of_orders,
sum(order_amount) as total_order_amount
from foodorders
group by restaurant_name
order by total_order_amount desc;

# 5.Create an SQL query that calculates two KPIs for the FoodOrders table: (1) average order_amount and
 # (2) total number of unique customers, and format the output for dashboard display (two columns: kpi_name, kpi_value).
 
 select 'average order amount' as kpi_name,
 round(avg(order_amount), 2) as kpi_value
 from foodorders
 union all
 select 'Unique Customers' as kpi_name,
 count(distinct customer_name) as kpi_value
 from foodorders;
 






