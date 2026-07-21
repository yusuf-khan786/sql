show databases;

use world;

describe country; -- table me kon kon se colomn h and uske datadtype 

-- data access

select * from country;

select name,continent from country ;

select continent, name, continent  from country; -- we can access the same column multiple times

select name, continent ,population from country;

select name, continent ,population, population+500 from country; -- we can also perform operataion but original flle me no changes 

SELECT *  -- sql is not case sensitive
 FROM 
 COUNTry  -- we can write in any format
 
 select name, continent ,population, population +1000-500+1000-1500 from country;
 
 select name,population ,population +1000-500+1000-500 as newpopulation from country;
 
 -- select ==> coloumn ko access karna 
 -- you can write a query (logic) in any case format 
 -- you can give a column name using as keyword
 
 select * from country
 where continent='asia';
 
  select * from country
 where name='bahrain'; -- all 

select name ,continent , population from country 
where name ='india';  -- specific column only 
 
  select * from country
 where population='1013662000'; 
 
  select name , continent from country where population=1013662000;
  
  select * from country where continent ='europe' or indepyear>1900;
  
select name , code  from  country 
  where surfacearea>1900;
  
select code,name from country where continent ='africa'and region = 'central africa';
select name , population ,region ,population+(population*10/100) as new_population from country where indepyear>1956;  
  
  
  
 
use world;

select * from country;
select * from city;

select city.name ,city.countrycode, country.code,country.name from city 
join country where city.countrycode=country.code and city.name = 'amsterdam';


 
 
 
 
 