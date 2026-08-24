use windowsdb;

select * , lead(amount,1) over() from orders;

select * , lead(amount,1) over(), lead(amount,2) over() from orders;

select * , lead(amount,1) over(), lag(amount,1) over() from orders;

select * , lag(amount,1) over (partition by customer_id order by order_date) from orders;

select * ,
 lag(amount,1,0) over (partition by customer_id order by order_date) as prev2,
      lag(amount,2,0) over(partition by customer_id order by order_date) as prev3,
amount + lag(amount,1,0) over (partition by customer_id order by order_date)+
		lag(amount,2,0) over(partition by customer_id order by order_date)
from orders; 


-- rows between

select customer_id , customer_name , amount , 
sum(amount) over(rows between unbounded preceding and current row) from orders;





















