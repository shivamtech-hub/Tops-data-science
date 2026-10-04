use `create database employee`;

-- Q 1. Create a CTE using the WITH clause to select all products with a rating above 4.5 from a 'Products' table, similar to how Flipkart or Myntra might highlight top-rated items.

with TopRatingProducts as (select * from products
where rating >4.5) select * from TopRatingProducts;

-- Q 2.Rewrite a query that finds all restaurants in 'Ahmedabad' with delivery charges under 50 from a 'Restaurants' table, first using a subquery and then using a CTE. Compare both queries for readability.<br><br><em><strong>Hint:</strong> Focus on making the CTE version cleaner and easier to understand.</em>

with AffordableRestaurants as (select * from restaurants
where city = 'Surat' and delivery_charges < 50  )
select  * from  AffordableRestaurants;

-- Q 3.Using two CTEs in a single query, find the top 3 most-followed users and the top 3 most-liked posts from a 'Users' and 'Posts' table (think Instagram-style data). Output both lists in the same result set.

with TopUsers as (select user_id as follower_id,
name as user_name,
followers_count as count_value,
'Top Users' as  top_follower
from users 
order by followers_count desc
limit 3),
TopPosts as (select post_id as posts_id,
post_content as post_name,
likes_count as count_value,
'Top Posts' as item_type
from posts 
order by likes_count desc 
limit 3)
select * from Topusers
union all
select * from TopPosts;

-- Q 4.Write a recursive CTE that generates a list of dates for the next 7 days starting from today, similar to how BookMyShow shows available dates for movie bookings.<br><br><em><strong>Hint:</strong> Use a base case for today and recursion to add one day at a time.</em>

with recursive datelist as (
select curdate() as booking_date
union all
select date_add(booking_date, interval 1 day)
from datelist
where booking_date< date_add(curdate(), interval 6 day))
select booking_date
from datelist;

-- Q 5.Given a messy SQL query that finds all users with more than 1000 followers from a 'Users' table, refactor it to use a CTE for better clarity and maintainability.

with PopularUsers as (select *  from users
where followers_count >1000)
select * from PopularUsers;










