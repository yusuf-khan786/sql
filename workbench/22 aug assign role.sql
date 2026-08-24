create role if not exists 'hr_role';


-- no user in the role 
select to_user as 'user', to_host as 'host'
from mysql.role_edges
where from_user='hr_role';

-- create user
create user aman99 identified by 'aman1233';

-- assign permission to role 
grant select on newdb.* to hr_role;

-- role assign to user 

grant hr_role to aman99;

show grants for aman99;

-- aman99 user in the role 

select to_user as 'user', to_host as 'host'
from mysql.role_edges
where from_user='hr_role';


set default role hr_role to aman99;  -- assigning a default role to the user everytime 



-- practice of subquery 
-- recent hiring date from each department
select * from employee7 as u 
 where hire_date = (select max(hire_date) from employee7 where dept=u.dept);
 
 
select emp_name , dept, hire_date ,dept_hire_max , 
datediff(dept_hire_max , hire_date) from 
(select * , 
max(hire_date) over(partition by dept) as dept_hire_max from employee7);











