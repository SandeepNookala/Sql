
create database company ;
use company
===============
Employee table:
===============
drop table employee
truncate employee
create table if not exists employee (
emp_id int,
fname varchar(20) not null,
lname varchar(20)not null,
email varchar(20) not null,
salary int not null,
yoe int not null,
dept_no int not null,
months int,
years int );

==========
seed data:
==========

insert into employee (emp_id,fname,lname,email,salary,yoe,dept_no,months,years) 
values 
(1,' Sandeep ',' Nookala ','sandeep@gmail.com',100000,5,3,1,2021),
(2,' Satish ',' Nookala ','satish@gmail.com',1000000,10,1,1,2021),
(3,' Krishna ',' Nookala ','krishna@gmail.com',40000,20,2,1,2021),
(4,' Padma ',' taddu ','padma@gmail.com',40000,5,3,2,2021),
(5,' anusha ',' jangili ','anusha@gamil.com',20000,2,5,2,2021) ;


==================
Department table:
==================
drop table department
truncate department
create table department(
dept_no int,
dept_name varchar(20),
emp_count int,
manager_id int,
dept_salary int);

insert into department(dept_no,dept_name,manager_id) 
values
(1,'CSE',Null),
(2,'CIVIL',1),
(3,'MECH',2),
(4,'ECE',Null),
(5,'EEE',3),
(6,'MBA',Null),
(7,'PHARMACY',Null);