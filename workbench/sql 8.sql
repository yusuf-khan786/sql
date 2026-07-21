-- group by

use world;

select * from country;

select distinct (continent) from country;

select continent from country group by continent;

select distinct(continent), count(name) from country; -- ye nhi chali

select count(name) from country where continent='asia';
select count(name) from country where continent='north america';

select count(name),count(distinct(name)) from country;

select name ,count(name) from country group by name;

select * from city;

select name from city 
where district ='zuid-holland';

select count(name) from city where district='zuid-holland';

select district from city group by district;  -- * use nhi kar sakte 

select district ,count(name) , sum( population) from city group by district; 

select * from city;

select count(name) from city where countrycode ='afg';

select countrycode, count(name) from city group by countrycode;

select count(name) , count(code) , count(continent) , count(indepyear) from country; 

-- count did count count null values ,its skip null values ..

select count(name) from world where lifeexpectancy between 70.1 and 83.5;

select continent ,count(name) from country group by continent having count(name)>10;

use world;

select continent,count(name) from country where continent like 'a%' group by continent having count(name)>10;





