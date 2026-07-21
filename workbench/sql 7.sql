-- numeric fnction 

select * from country;

-- round 

select lifeexpectancy, round(lifeexpectancy) from country;

select 34.58, round(34.8);

select 76.469, round(76.469,1)

select 76.369, round(76.369,2);

-- round of to nearest 10,100,1000

select 9 , round(16.2,-1)  -- -1 means nearest 10th place par shift karo and first place of befrore decimal (-2 means 100 ,-3 means 1000 )
select 10 , round(256.2,-3); 

select round(34.857,1), truncate(34.857,1); --

select round(34.857,1), truncate(34.857,1),mod(3,5); 

select floor (34.9999); -- 1 niche niche wali value me convert karna / decimal ke pahle wale digit ko hi rakhta h 

select floor (34.9999), ceil(34.1);  -- ek upar wali value me convert karta h 

select abs(10.11),abs(-10.1234);

use world;

select name , countrycode ,population from city
where population between 1000000 and 5000000;

select name , countrycode from city 
where countrycode in ('ind')

select 236.51 , round(236.50,0)



