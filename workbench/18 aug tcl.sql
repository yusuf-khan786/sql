create database testdb;
use testdb;
select * from student_records_25;

/* 
-- TCL ( TCL STANDS FOR transaction control lang. transaction is set of sql statement 
example - cash deposit or cash withdrawl 

in sql acid stand for atomicity , consistency, isolation , and durabilty 
which insure your data is consitanc and intigreted 

A ---> atomicity ( ya to pura hoga ya kuch nhi ) 
no partiol work
 
C ---> consistency insure transaction is valid from one state to another 
and for consistency we use constraints 

I ---> isolation the changes done by one transaction do not effect the chnages by another tranasaction 

D ---> durability (to save permanently) once you save the changes it will permanent save 

*/


-- root connection 
create database tcldb;
use tcldb;

create table tcldb.test(id int, name varchar(20));
insert into tcldb.test values(18,'abhinav');

select * from tcldb.test;

select @@autocommit ; -- by default autocommit is 1 mean file will be automatically save 

start transaction ;

insert into tcldb.test values(19,'raj');

select * from tcldb.test; -- <== 2 rows here 

commit;  -- you saved the change in the database 

start transaction ;

insert into tcldb.test values(20,'japan');
insert into tcldb.test values(21,'north korea');

rollback; -- to revert the two inserted 

select * from tcldb.test; 

update tcldb.test set name = 'abacas';
start transaction;
insert into tcldb.test values(22,'ujhwal');
delete from tcldb.test;
rollback;
select * from tcldb.test; -- to revert the two lines inserted
















