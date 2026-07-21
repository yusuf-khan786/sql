create database moviesdb; -- DDL used to create database

use moviesdb; -- you are using the database(simple term folder)

create table deepika (filmname varchar(30), amount int, director varchar(30));

describe deepika;  -- show the whole table// tell about table

-- insert data---> DML 

insert into deepika values ('kalki','1000000' ,'kadran johar');

select * from deepika; -- select is DQL

show databases