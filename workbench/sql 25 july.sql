use world;
select name , indepyear+100, ifnull(indepyear,0) from country;
select name,indepyear,lifeexpectancy,coalesce(indepyear,lifeexpectancy,name) from country;

-- coalesce==>  return first not null value 

-- case statement ==>
-- if else 

-- if (condition ,true ,false)
-- if (condition ,true, if (condition2 ,true2, false) )

select name, population ,indepyear, 
if(indepyear>1947,'after india','before india') from country;

select name, population ,indepyear, 
if(indepyear>1947,'after india',if (indepyear>1920,'just before india','before india')) from country;

-- case statement -->

--
select name,population, indepyear,
case
	when  indepyear>1947   then 'after 1947'
    when  indepyear>=1919 then 'only after 1919'
else 'else condition'
end
from country;


-- Q1. name,continent,population,column name country,continent ,population 2-5 lakh ,avg population
-- if pop 5 lakh se jyada to large or baaki small 

select name , continent,population, 
case 
	when population>200000 and population <500000  then 'avg population'  
    when population >500000 then  'population large'
else 'small population'
end 
from country;



-- Q2. print the continent name and number of conuntry with the category of the continent coulumn 
-- if number of continent have 10+ country print small ,15+ avg , 25+ so large scall  

select continent, count(name) ,
case
	when count(name) >25  then 'large'
    when count(name)>15   then ' avg scale'
    when count(name)>10   then  'small scale'
else 'small'
end 
from country group by continent;


-- sub query ==> 
 




 
 
