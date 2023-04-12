
create database test
use test

drop database test 
drop table employee

show tables
---------------------------------------------------------
create table if not exists employee (
emp_id int auto_increment,
fname varchar(20) not null,
lname varchar(20)not null,
email varchar(20) not null,
phone varchar(10) not null,
salary int not null,
yoe int not null,
company varchar(20),
insert_date timestamp default now(),
update_date timestamp default now() on update now(),
primary key(emp_id)
);

insert into employee (fname,lname,email,phone,salary,yoe,
company) values 
('Sandeep','Nookala','sandeep@gmail.com','7989681270',100000,5,'tcs'),
('Satish','Nookala','satish@gmail.com','9293111539',1000000,10,'synecron'),
('Krishna','Nookala','krishna@gmail.com','9059741955',40000,20,'google'),
('sweety','Nookala','sweety@gmail.com','8989681280',3000,1,'google'),
('Padma','taddu','padma@gmail.com','9979897990',40000,5,'microsoft'),
('anusha','jangili','anusha@gamil.com','6878581270',20000,2,'microsoft') ;

---------------------------------------------------------------------------
create table dept(
dept_id int auto_increment,
dept_no int not null,
dept_name varchar(20) not null,
soj varchar(20) not null,
doj timestamp ,
location varchar(20) not null,
manger_id int,
primary key(dept_id)
);

insert into dept(dept_no,dept_name,soj,doj,location,manger_id) values
(1,'software','instagram','2022-11-11','Bangalore',2),
(1,'software','facebook','2020-01-01','Hyderabad',2),
(2,'Manager1','facebook','1978-09-09','Narsampet',NULL),
(3,'Manager2','instagram','2021-11-11','Hyderabad',NULL),
(4,'market','Linkdin','1988-11-08','Narsampet',3),
(4,'Sales','Linkdin','2022-10-10','Hyderabad',3);

-------------------------------------------------------------

CREATE TABLE order_details(
order_id varchar(8),
customer_name varchar(20),
order_date DATE);


 INSERT INTO order_details VALUES
     ('O0001','PRADEEP','2021-04-11'),
     ('O0002','KOUSHIK','2021-04-09'),
     ('O0003','SRINIVAS','2021-04-05'),
     ('O0004','SATWIK','2021-04-08'),
     ('O0005','LOKESH','2021-04-03');
--------------------------------------------------------------------------
