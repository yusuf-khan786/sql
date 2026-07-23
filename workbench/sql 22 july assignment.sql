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

-- 8 
select d.dept_name , p.proj_id , p.proj_name,d.dept_id from projects as p left join 
departments as d on d.dept_id = p.dept_id;

-- 9 
select d.dept_id,d.dept_name ,location from departments as d left join employees as e 
on d.dept_id = e.dept_id where e.dept_id is null;
-- 10
select * from employees as e cross join departments as d 
where (dept_name ='legal' or dept_name ='finance') and salary>70000;

-- 11 
select * from projects cross join departments 
where budget>=400000 and location in ('mumbai', 'pune');

-- 12
select count(*) from employees cross join departments ;

-- 13  Show employees whose salary is greater than 60000
select e.emp_id,e.emp_name,e.dept_id,e.salary,e.city 
from employees as e 
left join departments as d on 
e.emp_id = d.dept_id where e.salary > 60000;

-- 14 Q14. Show all employees based in Delhi or Mumbai
select e.emp_id , e.emp_name ,e.salary , e.city from employees as e left join departments as d on 
e.dept_id=d.dept_id
where city in ('delhi' ,'mumbai'); 

-- 15 
select e.emp_id,e.emp_name, e.dept_id ,e.salary from employees as e 
left join departments as d 
on e.dept_id=d.dept_id 
where e.dept_id is null;

-- 16 
select d.dept_id , d.dept_name,d.location from departments as d 
left join employees as e 
on d.dept_id = e.city
 where location in ('bangalore','delhi');
 
 -- 17 
 select d.dept_id , d.dept_name ,location from departments 
 as d left join employees as e 
 on d.dept_id = e.emp_id 
 where d.dept_id>=30;
 
 -- 18 
 select d.dept_id, d.dept_name,d.location from departments as d 
 left join employees as e 
 on d.dept_name
 where d.dept_name like 'f%' or d.dept_name like 'L%';

-- 19 
select p.proj_id ,p.proj_name ,p.dept_id , p.budget from projects as p
left join departments as d 
on p.proj_id = d.dept_id 
where p.budget between 200000 and 400000;

-- 20 
select p.proj_id,p.proj_name,p.dept_id , budget from projects as p 
left join departments as d 
on p.proj_id = d.dept_id 
where p.dept_id = 20;

-- 21 
select p.proj_id , p.proj_name , budget from projects as p 
left join departments as d 
on p.proj_id = d.dept_id 
where p.proj_name like '%a%' and budget<300000;

-- 22 
select e.emp_name,d.dept_name,location,p.proj_name from employees as e 
join departments as d
on e.dept_id = d.dept_id 
join projects as p 
on d.dept_id = p.dept_id ;

-- 23 
select e.emp_id , e.emp_name ,d.dept_name ,p.proj_name from employees as e
left join departments as d 
on e.dept_id = d.dept_id 
left join projects as p 
on d.dept_id = p.dept_id ;

-- 24 
select e.emp_name ,e.salary ,d.dept_name ,p.proj_name ,p.budget from employees as e 
left join departments as d 
on e.dept_id = d.dept_id 
left join  projects as p 
on d.dept_id = p.dept_id 
where e.salary>60000 and p.budget>250000;

-- 25 
select d.dept_id ,d.dept_name, e.emp_name , p.proj_name from departments as d 
left join employees as e 
on d.dept_id = e.dept_id 
left join  projects as p 
on d.dept_id = p.dept_id; 

-- 26 
 select e.emp_name,d.location, p.proj_name from employees as e 
 left join departments as d 
 on e.dept_id = d.dept_id 
 left join projects as p
 on p.dept_id = d.dept_id 
 where d.location in ('bangalore', 'mumbai');
 
 -- 27 
 select e1.emp_name as emp1_name, e2.emp_name as emp2_name,
e1.city from employees e1
join employees e2 on e1.city = e2.city and e1.emp_id < e2.emp_id;

-- 28
select  p.proj_name, d.dept_id, e.emp_name 
from projects p 
join departments d on p.dept_id = d.dept_id 
left join employees e on d.dept_id = e.dept_id;






