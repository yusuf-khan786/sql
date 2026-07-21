use companydb;
-- 1 
select dept,count(*) from employees group by dept;

-- 2 
select dept,sum(salary) from employees group by dept;

-- 3
select city ,avg(salary) from employees group by city;

-- 4 
select dept ,max(salary) from employees group by dept;

-- 5 
select dept,min(salary) from employees group by dept;

-- 6 
select dept, count(*) as empcount from employees group by dept Order by empcount desc;

-- 7 

select city , sum(salary) from employees group by city order by sum(salary) asc;

-- 8 
select name , dept, salary from employees order by dept asc, salary desc;

-- 9 
select name , city ,joindate from employees order by city asc , joindate asc;

-- 10 
select name ,role , salary from employees order by role asc , salary asc;

-- 11 
select dept , count(*) from employees group by dept having count(*) >7;

-- 12 

select dept , avg(salary) from employees group by dept having avg(salary) >65000;

-- 13

select city ,sum(salary) from employees group by city having sum(salary) >650000;

-- 14 
select dept ,max(salary) from employees group by dept having max(salary)>80000;

-- 15 
select role, count(*) from employees group by role having count(*)>5; 

-- 16 

select avg(salary) from employees;

-- 17)
select dept ,count(*) from employees where gender ='f' group by dept;

-- 18) 
select max(salary),min(salary) from employees; 

-- 19)
select sum(salary) from employees where joindate> '2019-01-01';

-- 20 
select gender ,avg(salary) from employees group by gender; 

-- 21 
select dept ,city, count(*) from employees group by dept, city order by dept , city;

-- 22 
select dept ,gender, avg(salary) from employees group by dept, gender order by dept , gender;

-- 23 ) 

select city , role , sum(salary) from employees group by city , role  order by city asc , sum(salary) desc;

-- 24 ) 
select dept ,role ,count(*) from employees group by dept , role having count(*)>1 order by dept,role;

-- 25 )
select city , gender , max(salary) from employees group by city, gender order by city ; 

-- 26 )
select dept , avg(salary) from employees group by dept having avg(salary) >60000 order by avg(salary) desc;

-- 27
select city,dept,count(*) from employees group by city,dept having count(*)>1 
order by count(*) desc, city; 

-- 28 
select role , sum(salary) from employees group by role having sum(salary)>300000 order by sum(salary) asc;

-- 29 
select upper(name), year(joindate) from employees order by joindate asc;

-- 30 
select year(joindate), count(*) from employees  group by year(joindate) order by year(joindate) ; 