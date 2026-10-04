
-- Q 1.Create a table called Orders with columns: order_id, user_id, order_date, and total_amount. Insert at least 7 sample rows representing different users and dates, similar to how food orders appear in Zomato or Swiggy.

CREATE TABLE ORDERS(
order_id int primary key,
user_id int,
order_date date, 
amount decimal(10,2));

INSERT INTO Orders (order_id, user_id, order_date, total_amount) VALUES
(101, 1, '2026-09-01', 450.00),
(102, 1, '2026-09-05', 300.00),
(103, 2, '2024-09-02', 250.00),
(104, 2, '2025-09-08', 600.00),
(105, 3, '2026-09-03', 500.00),
(106, 3, '2024-09-02', 200.00),
(107, 3, '2026-09-01', 350.00),
(108, 4, '2026-09-05', 750.00),
(109, 5, '2025-09-08', 400.00),
(110, 5, '2026-09-03', 550.00);

-- Q 2. Write a SQL query using the LAG() function to show each user's order_id, order_date, and the total_amount of their previous order (if any), ordered by user and date.
--- <br><br><em><strong>Hint:</strong> Use PARTITION BY user_id and ORDER BY order_date in your window function.</em>

select order_id,user_id,order_date,amount,
lag(amount) over(partition by user_id
order by order_date) as previous_order_amount
from orders
order by user_id ,order_date;

-- Q 3. Using the same Orders table, write a SQL query with the LEAD() function to display each order_id, order_date, and the next order's total_amount for the same user.
	
select order_id,user_id,amount,order_date,
lead(amount) over (partition by user_id 
order by order_date) as next_order_amount
from orders
order by user_id, order_date;

-- Q 4. Write a SQL query to calculate the running total of total_amount for each user, showing order_id, order_date, total_amount, and a column running_total that accumulates 
-- the sum as you move through each user's orders.<br><br><em><strong>Hint:</strong> Use SUM(total_amount) OVER (PARTITION BY user_id ORDER BY order_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW).</em>

select order_id,user_id,amount,order_date,
sum(amount) over(partition by user_id
order by order_date
rows between unbounded preceding and current row) as running_total
from orders
order by user_id,order_date;

-- Q 5. Write a SQL query to calculate a 3-order moving average of total_amount for each user, showing order_id, order_date, total_amount, and moving_avg columns.<br><br><em><strong>Constraint:</strong> 
-- Use SUM() OVER() with ROWS BETWEEN 2 PRECEDING AND CURRENT ROW to compute the moving average.</em>

select order_id,user_id,amount,order_date,
sum(amount) over (partition by user_id
order by order_date
rows between  2 preceding and current row )
/
count(amount) over(partition by user_id
order by order_date
rows between 2 preceding and current row) as moving_avg
from orders
order by user_id, order_date;




