use emp;

-- Q 1.Create a table called Orders with columns: order_id, user_id, payment_method, and amount.
 -- Insert at least 8 sample records representing different users and payment methods (like UPI, Card, Wallet, COD).
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    user_name varchar(50),
    total_amount decimal(10,2),
    payment_method VARCHAR(20),
    order_date date
);

INSERT INTO Orders (order_id, user_id, user_name, total_amount, payment_method,order_date) VALUES
(1, 101, 'Rahul', 1500.00, 'UPI', '2026-09-01'),
(2, 102, 'Priya ', 2200.00, 'Card', '2026-09-02'),
(3, 103, 'Amit', NULL, 'Wallet', '2026-09-03'),
(4, 104, 'Rahul', 1800.00, 'COD', '2026-09-04'),
(5, 106, 'Neha', 2500.00, 'Net Banking', '2026-09-05'),
(6, 106, 'Amit', 3200.00, 'Cash', '2026-09-06'),
(7, 107, 'Priya', 1250.00, 'UPI', '2026-09-07'),
(8, 108, 'Rahul', 4100.00, 'Cash', '2026-09-08'),
(9, 109, 'Neha ', 2750.00, 'Wallet', '2026-09-09'),
(10, 110, 'Amit', 1950.00, 'COD', '2026-09-10');


select * from orders;

-- Q. 2.Write an SQL query to count how many orders were placed using each payment_method in the Orders table, similar to how Zomato shows payment breakdown in analytics.

select payment_method, count(*) AS ORDER_COUNT
FROM orders
group by payment_method;

-- Q. 3.Write an SQL query to find the total amount spent by each user_id in the Orders table. Display user_id and their total spend.
select user_id, sum(total_amount) as total_spend
from orders
group by user_id;

-- Q. 4 Write an SQL query to show only those payment methods where the average order amount is greater than 300, 
-- using GROUP BY and HAVING.<br><br><em><strong>Hint:</strong> Use AVG(amount) in your HAVING clause.</em>
select payment_method, avg(total_amount) AS avg_amount
from orders 
group by payment_method
having avg(total_amount) >300;

-- or
select payment_method, avg(total_amount) AS avg_amount
from orders
group by payment_method
having avg(total_amount) >300;

-- Q. 5 Explain the difference between WHERE and HAVING by giving one example query for each, using the Orders table.
--  Your examples should show a scenario where WHERE and HAVING filter different things.

-- WHERE is used to filter individual rows based on a specific condition before grouping or applying aggregate functions.


select * from orders
where total_amount >300;

-- GROUP BY is used to group rows with the same values into summary groups, 
       -- usually with aggregate functions like COUNT(), SUM(), and AVG().

select user_id,
sum(total_amount) as total_spend
from orders
group by user_id;

-- HAVING is used to filter groups after the GROUP BY operation, usually based on aggregate functions.

select payment_method,
avg(total_amount) as avg_amount
from orders
group by payment_method
having avg(total_amount)>500;



