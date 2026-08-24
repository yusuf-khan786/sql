create database newdb;
use newdb;
create table xyz (
 id int primary key,
 name varchar(100),
 age int,
 city varchar(50));
 
savepoint department7_insert_chk1;

start transaction;

insert into xyz values(105,'adsfsf','21','jaipur');
insert into xyz values(107,'vvvv','22','jodhpur');

savepoint department7_insert_chk1; -- creating a reference point to revert to this transaction only

delete from xyz where dept_id= 105;

rollback to department7_insert_chk1; -- revert to specific point 
select * from xyz;


 -- > ddl statement end transaction here 
 
 
-- data control language 

-- authentication and authorization 

create user yusuf identified by 'yusuf123'; 

use newdb;
 
 show grants for yusuf;
 
 grant select on newdb.* to yusuf;
 
 -- H.W.
 
 -- give the select and insert permission to yusuf 
 -- provide the update permission on specific coloumn to this yusuf user 
 -- revoke the delete permission from this yusuf user 
 -- revoke all the permission from yusuf user 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 