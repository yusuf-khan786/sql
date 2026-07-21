use joinsdb;

select * from employees;
select * from departments;

-- we can use where or on both ::: 

-- inner join == common value with the match record

select e.employeeid , e.employeename,e.departmentid,d.departmentname from employees as e join departments as d
on e.departmentid = d.departmentid;

-- left join  == left table macthing and which is not appear in right table then it will give you null value  
select e.employeeid , e.employeename,e.departmentid,d.departmentname from employees as e left join departments as d
on e.departmentid = d.departmentid;

-- right join

select e.employeeid , e.employeename,e.departmentid,d.departmentname from employees as e right join departments as d
on e.departmentid = d.departmentid;


select e.employeeid,e.employeename,d.departmentid,d.departmentname from employees as e left join departments as d 
on e.departmentid = d.departmentid;

use world;

select * from city;
select * from country;

-- primary key- is a key which can be use to indentify every row in a table in unique and not null value 

-- forgien key is used to make/create a connection between 2 or more tables
-- forgien key:: countrycode refer to country ke code ko refer kar raha h bcoz vo primary key h 

select c.id, c.name,c.countrycode , cty.code,cty.name from city as c
join country as cty 
on c.countrycode=cty.code;

-- cross join/ cartesian join :: to indetify their relationship but 2 tables 
-- it return every single combinantion of rows.

select c.id, c.name,c.countrycode , cty.code,cty.name from city as c
cross join country as cty ;

-- 43 line and 48 both will give you same ouput 

select c.id, c.name,c.countrycode , cty.code,cty.name from city as c
join country as cty ;

select count(*) from 
 

