use emp;
-- Q. 1.Create a table called Orders with columns: order_id, user_name, total_amount, and order_date.
-- Insert 5 sample rows with different users and order amounts, including at least one NULL value for total_amount.
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_name VARCHAR(100),
    total_amount DECIMAL(10,2),
    order_date DATE
);

INSERT INTO Orders (order_id, user_name, total_amount, order_date)
VALUES
(1, 'Rahul', 1500.00, '2026-09-01'),
(2, 'Priya', 2200.00, '2026-09-02'),
(3, 'Amit', NULL, '2026-09-03'),
(4, 'Rahul', 1800.00, '2026-09-04'),
(5, 'Neha', 2500.00, '2026-09-05');

use emp;
select * from orders;

-- Q.2. Write a SQL query to count how many orders were placed by each user in the Orders table, displaying user_name and the number of orders as order_count.

select user_name, count(*)as order_count
from orders
group by user_name;

-- Q 3. Write a SQL query to calculate the average total_amount of all orders in the Orders table, making sure to ignore any NULL values.

select avg(total_amount) avg_amount
from orders;

-- Q 4. Suppose you are building a Flipkart-style dashboard: Write a SQL query to find the highest and lowest order amounts (MAX and MIN) from the Orders table, and display both values in a single result row.

select 
max(total_amount) AS highest_amount,
min(total_amount) as lowest_amouunt
from orders;


-- Q 5. Write a SQL query to calculate the total sales (SUM of total_amount) for all orders, but only include orders where total_amount is not NULL.
-- <br><br><em><strong>Hint:</strong> Use a WHERE clause to filter out NULL values before applying the SUM function.</em>

select sum(total_amount) as total_sales
from orders
where total_amount is not null;




