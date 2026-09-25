create database emp;

use emp;

-- Create employee table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

-- Insert an employee
INSERT INTO employees
(employee_id, first_name, last_name, email, department, salary, hire_date)
VALUES
(1, 'Rahul', 'Patel', 'rahul@example.com', 'IT', 50000.00, '2026-01-15');

INSERT INTO employees
(employee_id, first_name, last_name, email, department, salary, hire_date)
VALUES
(2, 'Amit', 'Patel', 'amit@example.com', 'Finance', 50000.00, '2026-02-16');

INSERT INTO employees
(employee_id, first_name, last_name, email, department, salary, hire_date)
VALUES
(3, 'Priya', 'Shah', 'priyashah@example.com', 'HR', 48000.00, '2026-03-16');


select * from employees
where employees_id ='3';


select * from employees
where first_name ='Amit';

-- Get all employees
SELECT * FROM employees;

-- Find employees in IT
SELECT * FROM employees
WHERE department = 'IT';

-- Find employees earning more than 45,000
SELECT * FROM employees
WHERE salary > 45000;

-- Update an employee's salary
UPDATE employees
SET salary = 55000
WHERE employee_id = 1;

alter table employees
add city varchar (50);

update employees
set city = 'Surat'
where employee_id = '1';

-- Q - 5 
 -Table:-
A table in SQL is used to store related data in an organized format.
 For example, in a Zomato food delivery app, an orders table could store information about customers' food orders.

Column:
A column represents a specific type of information in a table. 
For example, the employees
 table could have columns such as employee_id, first_name, 
last_name, emails , departments , salary, hire_date ,  and city.

Row:
A row employees one complete record in a table.
 For example, one row could contain employee id 1 , first name rahul,
 last name patel, email rahul@gmail.com, department IT ,salary 50000, hire date 2026-01-15 and city surat .

Database:- A database is an organized collection of data that is stored electronically so that 
we can easily accessed, save, find, update, and manage information
 for exmple: in your  employees database, employee information such as employees id, first name, last name, email, 
 department, salary, hire date and city can be stored in an emplloyees table.
 
database:- collection of related data.
table:- stores data in rows and columns.
coloumns:- represents a specific type of information, such as salary or city.
row:- represents one complete employee record.
DBMS:- software used to create and manage database, such as MYSQL.
SQL:- language used to communication with and manage data in a database.
 
or A structured place where data is stored and managed.

 





