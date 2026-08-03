drop database if exists newdb2;
create database newdb2;

use newdb2;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(30)
);

INSERT INTO Customers VALUES
(101, 'Alice', 'New York'),
(102, 'Bob', 'Chicago'),
(103, 'Charlie', 'Dallas'),
(104, 'David', 'Seattle'),
(105, 'Emma', 'Boston'),
(106, 'Frank', 'Chicago'),
(107, 'Grace', 'Dallas'),
(108, 'Henry', 'Miami');



CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    status VARCHAR(20)
);


INSERT INTO Orders VALUES
(1001, 101, '2025-01-05', 1200, 'Delivered'),
(1002, 101, '2025-02-15', 800, 'Cancelled'),
(1003, 102, '2025-01-20', 3500, 'Delivered'),
(1004, 102, '2025-03-10', 600, 'Pending'),
(1005, 103, '2025-02-18', 900, 'Delivered'),
(1006, 104, '2025-03-05', 4500, 'Delivered'),
(1007, 104, '2025-04-01', 700, 'Pending'),
(1008, 105, '2025-01-11', 1500, 'Cancelled'),
(1009, 105, '2025-04-12', 2200, 'Delivered'),
(1010, 107, '2025-05-01', 1800, 'Pending');


select * from customers;
select * from orders;

-- exist use only with correlated sub query and exist operator only return one value 

-- diff between exists and in operator  

-- in opretor will check every list of value and return by subquery 

-- it will give you the output if atleast one value exists in inside subquery and it is used with correlated subquery

-- in --> non correlated usually and it check value in list 
-- exist --> correlated usually and whether any matching row exists and its faster than in opretor

-- exist and in uses ==> 

select * from customers where exists 
(select 1 from orders where orders.customer_id= customers.customer_id); -- we can write customer id in place of 1 

-- find a customer who never place an order
select * from customers where not exists 
(select 1 from orders where orders.customer_id= customers.customer_id);

-- find customer who have at least one order delivered order 
select * from orders;

select customer_id,customer_name from customers where exists 
(Select customer_id from orders where orders.customer_id = customers.customer_id and status = 'delivered');

-- find customers who have both delivered and pending orders
select * from customers where exists 
(Select customer_id from orders where orders.customer_id = customers.customer_id and status = 'delivered' or status= 'pending');


select customer_id,customer_name from customers where exists 
(Select customer_id from orders where orders.customer_id = customers.customer_id and status = 'delivered') 
and exists (Select customer_id from orders where orders.customer_id = customers.customer_id and status = 'pending');




 












