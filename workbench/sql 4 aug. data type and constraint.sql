use newdb2;
create table test1 ( rollno int); -- create ==> ddl statement
insert into test1 values(10); -- dml statement
insert into test1 values(30); -- dml statement
insert into test1 values('aman'); -- error bcoz of aman 
select * from test1;



-- tinyint [ 1 byte memory]
-- i byte = 8 bit
-- 2**8 ==> 256
--  -128 to 127

--  0 - 255 but no negative number 

create table test2 ( rollno tinyint); -- create ==> ddl statement
insert into test2 values (127); -- 
insert into test2 values (-128); -- 
insert into test2 values (true); -- 

select * from test2;

create table test3 ( rollno tinyint unsigned); -- create ==> ddl statement
insert into test3 values (129); -- 
insert into test3 values (255); -- 
insert into test3 values (256); -- error

select* from test3;


/* 
tinyint -> 1 byte
small int -> 2 byte
int -> 4 byte
big int -> 8 byte,64 byte (18446,744,073,709,551,616)



*/
-- string datatype
-- varchar
-- char ==> fixed size of character 

create table test4 (gender char(10)); -- create ==> ddl statement
insert into test4 values('male'); -- dml statement
select * from test4;


create table test5 (name varchar(20)); -- create ==> ddl statement
insert into test5 values('om'); -- 18 character block that can use at any other place 
select * from test5;

show table status like 'test4';

create table test7 (name char (10) , name2 varchar(20)); -- create ==> ddl statement
insert into test7 values('abc','abc'); -- 18 character block that can use at any other place 
select * from test7;

-- char will remove the trailing whitespace

select name, char_length(name),name2,char_length(name2)
from test7;


select table_name ,data_length from information_schema.tables
where table_schema=database()
and table_name in ('test7','test4');


-- set of rules that we apply on the column 
-- to prevent invalid data entry
-- mela ==> entry security guard 


-- not null

 create table test9 ( id int,name varchar (20));
 insert into test9 values (10,'abhishek');
 insert into test9 values (10,null); -- constraint worked 
 select * from test9;
 
 
  create table test10 ( id int,name varchar (20));
 insert into test10 values (10,'abhishek');
 insert into test10(id) values (11); 
 select * from test10;
 
 
  create table test12 ( id int,name varchar (20) default 'regex');
 insert into test9 values (10,'abhishek');
insert into test12(id) values (11);  -- default is regex
insert into test12(name) values ('tushar'); -- default in id is null 
 select * from test12;
 
 

 create table test13 ( id int unique ,name varchar (20));
 insert into test13 values (10,'abhishek');
insert into test13 values (10,'ujhwal'); -- error
insert into test13 values (11,'abhishek'); -- works
insert into test13 values (null,'happy'); -- works
insert into test13 values (null,'isha'); -- wroks
 
 select * from test13;
 
 -- 1 table only 1
 -- primary ==> unique + not null 
 
  create table test14 ( id int primary key,name varchar (20));
  insert into test14 values (10,'abhishek');
   insert into test14 values (10,'ads'); -- duplicate
  insert into test14 values (null, 'ads'); -- not null constraint
  
  select * from test14;
  
  
  
  
  
  
  
 





























