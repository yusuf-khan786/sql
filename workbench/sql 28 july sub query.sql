-- sub query :: a query is 

-- subquery practice

drop table employee_c;

create database corr_db;

use corr_db;

create table employee_c(id int,name varchar(20),salary int);

insert into employee_c values(1,'a',100),(2,'b',250),(3,'c',400),(4,'d',380),(5,'ram',250);

-- highest salary kya h 

select * from employee_c;

select max(salary) from employee_c;


select * from employee_c where salary =400;

select min(salary) from employee_c;

select * from employee_c where salary = 100;

-- nested query --> q query within a query 
-- nested query (subquery)
-- your outer query is depend on inner /nested query 

select * from employee_c where salary = (select min(salary) from employee_c);

-- subquery with max salary ==>

select * from employee_c where salary = (select max(salary) from employee_c);


select * from employee_c where salary = (select salary from employee_c where name = 'b');

-- find avg salary 
-- id and name where avg salary is > avg of all the employees

select avg(Salary) from employee_c;

select id ,name from employee_c where salary >(select avg(Salary) from employee_c );


use world;

-- get the name of city where the district is same for the city abu dhabi 
-- get all the column from the city table where is population is the max 
-- get the dist. and the name of the city where the coutry code is same for herat
-- get the dist. city and the population for all the countries where amsterdam is presend and sort the data by the population  

select * from city;
-- 1
select name,population from city where district = (select district from city where name = 'Abu Dhabi');
-- 2
select * from city where population = (select max(population) from city);

-- 3
select name , district from city where countrycode = (select countrycode from city where name = 'herat');

-- 4 
select name , district ,population,countrycode from city where countrycode= 
(select countrycode from city where name= 'amsterdam' order by population); 


-- there are many types of sub query 
-- this was single row subquery where the inner query return only 1 row 





