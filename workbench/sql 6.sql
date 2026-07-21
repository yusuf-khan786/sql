-- DQL 
use world; -- access ka raha hu 
show tables; -- how many table in the database

select * from city;

select district,population ,district,population+1999 from city;
-- where clause

select * from city where name='kabul'
select district , population from city where name ='kabul';

select district , population ,countrycode from city where countrycode='ind' or population>2000000;

select * from city where countrycode='afg' and district='kabol';

select * from city where population>100000 and population<1500000;

select * from city where population between 100000 and 150000;

select * from city where population in (129170,117196);

select * from city where population =129170 or population = 117196;

-- like operator
select * from city where name = 'breda';

select * from city where name like 'breda';


select * from city where name like 'a%' ;
select * from city where name like 'b%a' ;

select * from city where name like '%a%' ; -- kahi bhi a aa sakta h 

-- _ ::----> -- (underscore)

select * from city where name like 'a__' ;
select * from city where name like 't___%' ;
select * from city where name like 's%_' ;  -- 2 charatar is needed 
select * from city where name like '_b%_' ;

-- question of 9/7/26

-- 1 
select name, population from city where name like '%e%'; 

-- 2

select name, population from city where name like '%b_'; 

-- 3
select name, population from city where name like '_a%_r_'; 

-- 4 
select name, population from city where name like '%aa%' ; 

-- 5 

select name, population from city where name like '_%e_e%_'; 

-- 14/7/26 question 

  -- 1) count the number of country which have a life expe. from 70.1 to 83.5 
  -- 2 ) get the total population of the country to got their ind. from 1990
  -- 3 count the number of country which are not slaved by any community
  -- 4  get the total country and total surface area for each region 
  -- 5 get the total country from each continent 
  -- 6  get the total country for each region for each continent 
  
  use world;
  
  select count(name) from country where lifeexpectancy between 70.1 and 83.5;
  
  select sum(population) from country where indepyear>1990 ;
  
  select count(name) from country where indepyear is null;
  
  select count(name), sum(surfacearea) from country ;
  
  select continent ,count(name) from country group by continent  ;
  
  select continent , region ,count(name) from country group by continent , region;
  
  select distinct(continent) from country;
  
  











