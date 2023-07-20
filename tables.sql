
===============
Employee table:
===============
drop table employee
create table if not exists employee (
id int auto_increment,
fname varchar(20) not null,
lname varchar(20)not null,
email varchar(20) not null,
phone varchar(10) not null,
salary int not null,
yoe int not null,
company varchar(20),
dept_no int not null,
hire_date date,
primary key(id)
);

==========
seed data:
==========

insert into employee (fname,lname,email,phone,salary,yoe,
company,dept_no,hire_date) 
values 
('Sandeep','Nookala','sandeep@gmail.com','7989681270',100000,5,'tcs',1,'1994-11-11'),
('Satish','Nookala','satish@gmail.com','9293111539',1000000,10,'synecron',1,'1994-11-11'),
('Krishna','Nookala','krishna@gmail.com','9059741955',40000,20,'google',2,'1993-09-11'),
('sweety','gattu','sweety@gmail.com','8989681280',3000,1,'google',5,'1993-08-11'),
('Padma','taddu','padma@gmail.com','9979897990',40000,5,'microsoft',3,'1993-07-11'),
('anusha','jangili','anusha@gamil.com','6878581270',20000,2,'microsoft',5,'1992-06-11') ,
('akshitha','avula','akshitha@gamil.com','5878581270',200000,4,'microsoft',2,'1992-05-11');


==================
Department table:
==================
drop table department
truncate department
create table department(
sno int auto_increment,
dept_no int,
dept_name varchar(20),
emp_count int,
manager_id int,
primary key(sno) );

insert into department(dept_no,dept_name,manager_id) 
values
(1,'software',1),
(2,'HR',1),
(3,'sales',2),
(4,'marketing',Null),
(5,'Finance',3),
(6,'management',Null),
(7,'CEO',Null);

==================
professor  tables:
==================
create table Professor(
Name varchar(20),
dept_id int,
salary int
);

insert into professor 
values
('Pawan',1,30),
('Arun',1,40),
('Susanta',2,35),
('Paresh',3,27),
('Lava',4,22),
('Ajay',5,45);



============
apple tables
============

create table Apple (id int);
insert into Apple values(10),(10),(10);
drop table Apple;


create table Apple1 ( id int);
insert into Apple1 values(10),(10),(10),(20);
drop table Apple1;


create table Apple2 ( id int);
insert into Apple2 values(10),(10),(10),(20),(40),(NULL);
drop table Apple2;


create table Apple3 ( id int);
insert into Apple3 values(10),(10),(10),(20),(40),(NULL);
drop table Apple3;


===========
Banana tables
===========
create table Banana (id int);
insert into Banana values(10),(10);
drop table Banana;

create table Banana1 (id int);
insert into Banana1 values(10),(10),(30);
drop table Banana1;

create table Banana2 (id int);
insert into Banana2 values(10),(10),(30),(NULL),(NULL);
drop table Banana2;

create table Banana3 ( id int);
insert into Banana3 values(10),(10),(10),(20),(40),(NULL);
drop table Banana3;


===============
products tables
================

CREATE TABLE products(
product_id int,
product_name varchar(20),
unit_price int
)



============
sales tables
============
CREATE TABLE sales(
sl_no int,
product_id int,
qty int,
year int
)

================
customer_orders
================
drop table customer_orders
create table customer_orders (
order_id integer,
customer_id integer,
item varchar(25),
order_date date,
order_amount integer
);

insert into customer_orders values(1,100,'fan','2022-01-01',2000),
(2,100,'light','2022-01-01',2500),
(3,200,'fan','2022-01-01',2100),
(4,200,'light','2022-01-02',2000),
(5,300,'fan','2022-01-02',2200),
(6,300,'light','2022-01-02',2700),
(7,100,'light','2022-01-03',3000),
(8,400,'light','2022-01-03',1000),
(9,400,'fan','2022-01-03',3000)
;


======================
courses table :
======================
create table course(
course_id int auto_increment,
name varchar(20) not null,
months decimal(3,1) not null,
fee int not null,
primary key(course_id)
);

seed data:
-------------
insert into course(name,months,fee) values('big data',6.80,50000),
('web development',5.20,40000),
('data science',12.00,100000),
('devops',4.40,30000);



===================================
Student table (child table):
===================================
drop table
create table if not exists student (
student_id int,
fname varchar(20) not null,
lname varchar(20)not null,
email varchar(20) not null,
phone varchar(10) not null,
course_id int not null default 1,
marks int not null,
company varchar(20),
batch_date date,
soj varchar(20) not null
);

Seed data (intial insert data):
-------------------------------

insert into student (student_id,fname,lname,email,phone,course_id,marks,
company,batch_date,soj) values 
(1,'Sandeep','Nookala','sandeep@gmail.com','7989681270',1,50,'tcs','2022-11-21','job_portal'),
(2,'Satish','Nookala','satish@gmail.com','9293111539',2,90,'synecron','2023-01-22','job_portal'),
(3,'Krishna','Nookala','krishna@gmail.com','9059741955',4,80,'google','2022-08-19','facebook'),
(4,'sonu','avula','sonu@gmail.com','8989681280',3,10,'IBM','2021-01-23','facebook'),
(5,'Padma','taddu','padma@gmail.com','9979897990',4,50,'microsoft','2020-01-20','linkdin'),
(6,'anusha','jangili','anusha@gamil.com','6878581270',2,20,'facebook','1999-03-23','linkdin');

insert into student (fname,lname,email,phone,course_id,marks,
company,batch_date,soj) values ('teju','Nookala=','teju@gmail.com','8889681170',6,10,'tcs','11-11-21','facebook');



===============
location tables
================
drop table location
create table location(
student_id int, 
address varchar(20));

insert into location(student_id,address) 
values
(1,'hyd'),
(2,'wgl');



