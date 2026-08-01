use corr_db;

select * from employees_c;

select * from employee_c 
where salary in (select salary from employee_c where name ='a');

select * from employee_c 
where salary =any (select salary from employee_c where name ='a');

select * from employee_c
where salary <any (select salary from employee_c where name ='a');

select * from employee_c
where salary >any (select salary from employee_c where name ='a');

select * from employee_c
where salary > all (select salary from employee_c where name ='a');

-- select * from employee_c where salary in (100,300)

select min(salary) from employee_c;
select * from employee_c where salary =100;







