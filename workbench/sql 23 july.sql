use joindb;

select d.dept_name, sum(budget) from projects p join departments d on p.dept_id = d.dept_id group by dept_name;

select * from employees;
select * from departments;

-- you need to find the department name and the total no of emp. is working in that dept. 

select d.dept_name , count(e.emp_id) from departments as d join employees as e on e.dept_id = d.dept_id group by d.dept_name; 

select d.dept_name , count(e.emp_id) from departments as d join employees as e on e.dept_id = d.dept_id group by d.dept_name having count(e.emp_id)>1; 

-- where and having difference 
-- where and having both can use with group by 
-- where clause is used to filer the data from the table but having is used to filter data from aggregate function 

