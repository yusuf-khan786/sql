-- 			drop database if exists foreigndb;
-- 			create database foreigndb;

-- 			use foreigndb;


-- 			CREATE TABLE customers (
-- 				customer_id INT PRIMARY KEY,
-- 				customer_name VARCHAR(50)
-- 			);

-- 			INSERT INTO customers VALUES
-- 			(101,'John'),
-- 			(102,'Alice'),
-- 			(103,'David');


-- 			CREATE TABLE products (
-- 				product_id INT PRIMARY KEY,
-- 				product_name VARCHAR(50)
-- 			);

-- 			INSERT INTO products VALUES
-- 			(1,'Laptop'),
-- 			(2,'Mouse'),
-- 			(3,'Keyboard');



-- 			CREATE TABLE orders (
-- 				order_id INT PRIMARY KEY,
-- 				customer_id INT,
-- 				product_id INT,
-- 				quantity INT
-- 			);

-- 			INSERT INTO orders
-- 			VALUES
-- 			(1,101,1,2);

-- 			INSERT INTO orders
-- 			VALUES
-- 			(2,999,1,1);



-- 			-- we do join. [Wrong name]
-- 			SELECT *
-- 			FROM orders o
-- 			LEFT JOIN customers c
-- 			ON o.customer_id=c.customer_id;



-- 			INSERT INTO orders
-- 			VALUES
-- 			(3,101,500,1);

-- 			-- wrong can't order if the product is not listed
-- 			SELECT *
-- 			FROM orders o
-- 			LEFT JOIN products p
-- 			ON o.product_id=p.product_id;




-- 			-- ----------- $$$$$$$$ ------

-- 			CREATE TABLE customers (
-- 				customer_id INT PRIMARY KEY,
-- 				customer_name VARCHAR(50)
-- 			);


-- 			CREATE TABLE products (
-- 				product_id INT PRIMARY KEY,
-- 				product_name VARCHAR(50)
-- 			);



DROP DATABASE IF EXISTS foreigndb;
CREATE DATABASE foreigndb;

USE foreigndb;

-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
--     FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
	constraint customer_id_fk foreign key (customer_id) references customers(customer_id) on delete cascade ,
    constraint product_id_fk foreign key (product_id) references products(product_id) on delete cascade
);
drop table orders;
-- Customers Data
INSERT INTO customers VALUES
(101,'John'),
(102,'Alice'),
(103,'David');

-- Products Data
INSERT INTO products VALUES
(1,'Laptop'),
(2,'Mouse'),
(3,'Keyboard');

-- Orders Data (Valid Records)
INSERT INTO orders VALUES
(1,101,1,2),
(2,102,2,1),
(3,103,3,5);

-- View Data
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;

-- Join with Customers
SELECT *
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id;

-- Join with Products
SELECT *
FROM orders o
JOIN products p
ON o.product_id = p.product_id;

desc orders;
-- constraint fk_name foreign key (col1) refernces parent_table (parent_column)
insert into customers values(108 , 'raja');
insert into orders values(1002 , 108 , 2 ,6);
insert into products values(6 ,'wire') ;
select * from orders join products 
on orders.product_id = products.product_id;                                       



-- homework what is group by statement , what is windows statemnent , differance btwn windows abd group by statement and primary key unique key



delete from customers where customer_id = 101;  -- delteing from child to parent 
select * from customers;

