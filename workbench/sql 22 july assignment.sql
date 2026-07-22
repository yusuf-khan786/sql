create database joindb;
use joindb;
CREATE TABLE departments (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50),
location VARCHAR(50)
);
INSERT INTO departments VALUES
(10,'HR','Jaipur'),
(20,'IT','Bangalore'),
(30,'Finance','Mumbai'),
(40,'Marketing','Delhi'),
(50,'Legal','Pune');
CREATE TABLE employees (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
dept_id INT,
salary INT,
city VARCHAR(50)
);
INSERT INTO employees VALUES
(101,'Amit',10,45000,'Jaipur'),
(102,'Bhavna',20,72000,'Bangalore'),
(103,'Chirag',20,68000,'Bangalore'),
(104,'Divya',30,55000,'Mumbai'),
(105,'Esha',NULL,39000,'Delhi'),
(106,'Farhan',40,61000,'Delhi'),
(107,'Gaurav',60,50000,'Kolkata'),
(108,'Hina',30,83000,'Mumbai');
CREATE TABLE projects (
proj_id INT PRIMARY KEY,
proj_name VARCHAR(50),
dept_id INT,
budget INT
);
INSERT INTO projects VALUES
(1,'Payroll Revamp',10,120000),
(2,'Cloud Migration',20,500000),
(3,'Mobile App',20,300000),
(4,'Audit Automation',30,250000),
(5,'Brand Refresh',40,180000),
(6,'Data Lake',70,400000);



-- 1 
select e.emp_id , e.emp_name , d.dept_name,d.location from employees as e join departments as d on e.dept_id = d.dept_id; 

-- 2
select proj_id,p.proj_name,d.dept_name,budget from projects as p join departments as d on p.dept_id = d.dept_id;

-- 3 
select e.emp_id, e.emp_name, d.dept_name, d.dept_id, p.proj_name from employees as e join departments as d join projects as p on e.dept_id = d.dept_id
and d.dept_id=p.dept_id; 

-- 4
select e.emp_id, e.emp_name, d.dept_id, d.dept_name from employees as e left join departments as d
on e.dept_id = d.dept_id;

-- 5 
select d.dept_id ,d.dept_name , p.proj_name,budget from departments as d left join projects as p 
on p.dept_id =d.dept_id;

-- 6 
select e.emp_id,e.emp_name,e.dept_id from employees as e left join departments as d 
on e.dept_id = d.dept_id where d.dept_name is null;

-- 7 
select e.emp_name,e.dept_id, d.dept_name from employees as e right join departments as d
on e.dept_id = d.dept_id; 

-- 10
select * from employees as e cross join departments as d 
where (dept_name ='legal' or dept_name ='finance') and salary>70000;

-- 11 
select * from projects cross join departments 
where budget>=400000 and location in ('mumbai', 'pune');