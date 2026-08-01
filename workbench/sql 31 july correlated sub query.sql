
-- correlated subquery ==>

-- is a query which knows as a dependent query 

-- a correlated subquery is type of subquery also call as dependent query 
-- in this the inner query dependent on outer query 
-- the inner query runs multiple times for each row of outer query 

show databases;
use corr_db;

select * from order1;

select order_id ,name,amount from 
order1 where name ='a' and amount = (select max(amount)from order1 where name ='a');

select order_id ,name,amount from 
order1 as o_outer where amount= (select max(amount)from order1 where name =o_outer.name);








