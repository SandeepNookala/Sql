
==================
professor  tables:
==================
drop table professor
create table Professor(
Name varchar(20),
dept_no int,
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
sl_no int,
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
customer
================
drop table customer
create table customer(
customer_id integer
);

insert into customer values(100),
(200),
(300),
(500),
(600),
(700)
;

================
orders
================
drop table orders
create table orders (
order_id integer,
customer_id integer,
item varchar(25),
order_date date,
order_amount integer
);

insert into orders values(1,100,'fan','2022-01-01',2000),
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
drop table student
truncate student
create table if not exists student (
student_id int,
fname varchar(20) not null,
lname varchar(20)not null,
email varchar(20) not null,
phone varchar(10) not null,
course_id int not null default 1,
marks int not null,
batch_date date,
soj varchar(20) not null
);

Seed data (intial insert data):
-------------------------------

insert into student (student_id,fname,lname,email,phone,course_id,marks,batch_date,soj) values 
(1,'Sandeep','Nookala','sandeep@gmail.com','7989681270',1,50,'2022-11-21','job_portal'),
(2,'Satish','Nookala','satish@gmail.com','9293111539',2,90,'2023-01-22','job_portal'),
(3,'Krishna','Nookala','krishna@gmail.com','9059741955',4,80,'2022-08-19','facebook'),
(4,'sonu','avula','sonu@gmail.com','8989681280',3,10,'2021-01-23','facebook'),
(5,'Padma','taddu','padma@gmail.com','9979897990',4,50,'2020-01-20','linkdin'),
(6,'anusha','jangili','anusha@gamil.com','6878581270',2,20,'1999-03-23','linkdin'),
(1,'Sandeep','Nookala','sandeep@gmail.com','7989681270',2,50,'2022-11-21','job_portal'),
(2,'Satish','Nookala','satish@gmail.com','9293111539',1,90,'2023-01-22','job_portal'),
(3,'Krishna','Nookala','krishna@gmail.com','9059741955',3,80,'2022-08-19','facebook'),
(4,'sonu','avula','sonu@gmail.com','8989681280',4,10,'2021-01-23','facebook'),
(5,'Padma','taddu','padma@gmail.com','9979897990',5,50,'2020-01-20','linkdin'),
(6,'anusha','jangili','anusha@gamil.com','6878581270',1,20,'1999-03-23','linkdin');

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



