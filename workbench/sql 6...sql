-- function
-- block of code ,collection of statement ==> perform certain task 
-- code reusable 
-- code duplicacy is removed 
-- make your code divided into smaller section 

-- in build function 
-- scaler function ==> applies on every row and return the output for every row 

-- string, number ,dates

use world;

select name,continent,concat(name,' have ' ,continent) from country;

-- ws==> with seperate 

select name,continent,concat_ws('-',continent,' have ' ,name, 'country') from country;

-- substring ===>  extract string character

select name,upper(name),substr(name,2) from country;

select name,substr(name,2) ,substr(name,2,4) from country;

select name,substr(name,2) ,substr(name,2,4) , substr(name,1,4) from country;

select name,substr(name,-4,2) from country
where name='colombia'; 

-- ==> length = size , char length = number or character

select name , length(name),char_length(name) from country;

-- replace ==> replace character 

select name ,replace(name,'a','@') from country;

-- trim ==> use to remove wide spaces 

select trim('     he llo     ') ; 

select name,lpad( name, 6,'@') from country;

-- now ==>

-- yyyy-mm-dd   <==   dd/mm/yyyy (we can convert)

select current_date(),current_time(),current_timestamp(),now();

select now(), adddate(now(),2);  -- you can modify value (changing day date)

select payment_date , adddate(payment_date,3) from sakila.payment;

select now(), adddate(now(),1),adddate(now(),-1),adddate(now(),interval 1 year)
,adddate(now(),interval 1 quarter);

select now(),year(now() ) ,month(now()),
extract(month from now() ), extract( minute from now()) ,
weekday(now() );

select now(), concat('current month is ',month(now() ));

select now() , date_format(now(), 'year is %Y month is %m , weekday is %W');

use world;
select district, substr(district,1,5) from city;











