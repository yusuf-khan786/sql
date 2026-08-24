create database testdb6;
use testdb6;
-- table structure
create table testdb6.employee1(id int);
select * from testdb6.employee1;
drop table testdb6.employee1;-- drop the table [data is remove and also it structure]
-- second time
create table testdb6.employee1(id int);
select * from testdb6.employee1;
-- ddl [alter]
alter table testdb6.employee1 add column name varchar(20);-- add a column 
alter table testdb6.employee1 drop column id; -- drop a specific column

select * from testdb6.employee1;
alter table testdb6.employee1 modify column name int ;
desc testdb6.employee1;
alter table testdb6.employee1 add column empid int ;-- change the data type
alter table testdb6.employee1 add constraint unique(name); -- add a column
alter table testdb6.employee2 drop constraint name; -- drop  a constraint in column

alter table testdb6.employee1 modify column empid int not null ; -- not null on a table column
 alter  TABLE testdb6.employee1 (
     id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);
alter table testdb6. employee1 rename column empid to id ;-- column name
alter table testdb6. employee1 rename employee2 ;-- column name
desc testdb6.employee2;
-- truncate 
select * from testdb6.employee2;
insert into testdb6.employee2 value(100,'name');
truncate testdb6.employee2; -- first it drop the table then recreate the table again
SET SQL_SAFE_UPDATES = 0;
insert into testdb6.employee2 value(10,199),(13,220),(11,899),(12,5738);
update  testdb6.employee2 set name='899'; -- will make change to every row
update  testdb6.employee2 set name='7123' where id =199; -- condition
delete from testdb6.employee2 where name =10;
select * from testdb6.employee2;
-- create a cse file upto 20 25 record and try to import this csv file in mysql database 
-- tcl
-- acid properties why its use in sql

