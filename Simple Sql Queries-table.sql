
--------------------------------------------------------------------------------
Find the name,salary of each professor whose department is not equal to Arts and 
salary is greater than the smallest salary of the professor in Arts Department?
---------------------------------------------------------------------------------
create table department(
id int,
dept_name varchar(20)
);

insert into department values(1,'Arts'),(2,'Science'),(3,'btech'),(4,'mba');

create table Professor(
Name varchar(20),
dept_id int,
salary int
);

insert into professor values('Pawan',1,30),('Arun',1,40),('Susanta',2,35),('Paresh',3,27),('Lava',4,22),('Ajay',5,45);

------------------------------------------------------------------
calculate no.of output rows in inner join ,left join ,right join ?
------------------------------------------------------------------
create table A ( id int);
insert into A values(10),(10),(10);
drop table A;

create table B (id int);
insert into B values(10),(10);
drop table B;


create table A1 ( id int);
insert into A1 values(10),(10),(10),(20);
drop table A1;

create table B1 (id int);
insert into B1 values(10),(10),(30);
drop table B1;

create table A2 ( id int);
insert into A2 values(10),(10),(10),(20),(40),(NULL);
drop table A2;

create table B2 (id int);
insert into B2 values(10),(10),(30),(NULL),(NULL);
drop table B2;

create table s ( id int);
insert into s values(10),(10),(10),(20),(40),(NULL);
drop table s;

create table s1 ( id int);
insert into s1 values(10),(10),(10),(20),(40),(NULL);
drop table s1;

-------------------------------------------------------------

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
dept_no int not null,
primary key(emp_id)
);

insert into employee (fname,lname,email,phone,salary,yoe,
company,dept_no) values 
('Sandeep','Nookala','sandeep@gmail.com','7989681270',100000,5,'tcs',1),
('Satish','Nookala','satish@gmail.com','9293111539',1000000,10,'synecron',1),
('Krishna','Nookala','krishna@gmail.com','9059741955',40000,20,'google',2),
('sweety','gattu','sweety@gmail.com','8989681280',3000,1,'google',5),
('Padma','taddu','padma@gmail.com','9979897990',40000,5,'microsoft',3),
('anusha','jangili','anusha@gamil.com','6878581270',20000,2,'microsoft',5) ,
('sonu','avula','sonu@gamil.com','5878581270',200000,4,'microsoft',2);


---------------------------------------------------------------------------
create table dept(
dept_id int not null,
dept_name varchar(20) not null,
soj varchar(20) not null,
location varchar(20) not null,
manger_id int,
primary key(dept_id)
);

insert into dept(dept_id,dept_name,soj,location,manger_id) values
(1,'software','instagram','Bangalore',2),
(2,'owner','facebook','Hyderabad',NULL),
(3,'Admin','facebook','Narsampet',2),
(4,'Manager','instagram','Hyderabad',NULL),
(5,'market','Linkdin','Narsampet',3),
(6,'Sales','Linkdin','Hyderabad',3);

-------------------------------------------------------------
drop table dept

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
-------------------------------------------------------------
drop duplicates in dup_emp table?


create table if not exists dup_emp (
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
dept_no int not null,
primary key(emp_id)
);

insert into dup_emp (fname,lname,email,phone,salary,yoe,
company,dept_no) values 
('Sandeep','Nookala','sandeep@gmail.com','7989681270',100000,5,'tcs',1),
('Satish','Nookala','satish@gmail.com','9293111539',1000000,10,'synecron',1),
('Krishna','Nookala','krishna@gmail.com','9059741955',40000,20,'google',2),
('sweety','Nookala','sweety@gmail.com','8989681280',3000,1,'google',4),
('Padma','taddu','padma@gmail.com','9979897990',40000,5,'microsoft',3),
('anusha','jangili','anusha@gamil.com','6878581270',20000,2,'microsoft',5),
('Sandeep','Nookala','sandeep@gmail.com','7989681270',100000,5,'tcs',1),
('Satish','Nookala','satish@gmail.com','9293111539',1000000,10,'synecron',1),
('Krishna','Nookala','krishna@gmail.com','9059741955',40000,20,'google',2),
('sweety','Nookala','sweety@gmail.com','8989681280',3000,1,'google',4),
('Padma','taddu','padma@gmail.com','9979897990',40000,5,'microsoft',3),
('anusha','jangili','anusha@gamil.com','6878581270',20000,2,'microsoft',5) ;

-------------------------------------------
create table emp(Eno int ,dno int);

insert into emp(Eno,dno) values(101,10),(102,10),(103,Null)

create table dept1(Dno int, loc varchar(20));

insert into dept1(Dno,loc) values(10,'hyd'),(Null,'hyd');

------------------------------------------
create table icc_world_cup
(
Team_1 Varchar(20),
Team_2 Varchar(20),
Winner Varchar(20)
);
INSERT INTO icc_world_cup values('India','SL','India');
INSERT INTO icc_world_cup values('SL','Aus','Aus');
INSERT INTO icc_world_cup values('SA','Eng','Eng');
INSERT INTO icc_world_cup values('Eng','NZ','NZ');
INSERT INTO icc_world_cup values('Aus','India','India');

-----------------------------------------------------
create table customer_orders (
order_id integer,
customer_id integer,
order_date date,
order_amount integer
);

insert into customer_orders values(1,100,cast('2022-01-01' as date),2000),(2,200,cast('2022-01-01' as date),2500),(3,300,cast('2022-01-01' as date),2100)
,(4,100,cast('2022-01-02' as date),2000),(5,400,cast('2022-01-02' as date),2200),(6,500,cast('2022-01-02' as date),2700)
,(7,100,cast('2022-01-03' as date),3000),(8,400,cast('2022-01-03' as date),1000),(9,600,cast('2022-01-03' as date),3000)
;


