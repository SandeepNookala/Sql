--------------------------------------------------------------------------------
Find the name,salary of each professor whose department is not equal to Arts and 
salary is greater than the smallest salary of the professor in Arts Department?
---------------------------------------------------------------------------------
create table department(
id int,
dept_name varchar(20),
manager_id int );

insert into department values(1,'Arts',1),(2,'Science',1),(3,'btech',2),(4,'mba',Null),(5,'cse',3),(6,'mba',Null),(7,'mech',Null);

truncate department
create table Professor(
Name varchar(20),
dept_id int,
salary int
);

insert into professor values('Pawan',1,30),('Arun',1,40),('Susanta',2,35),('Paresh',3,27),('Lava',4,22),('Ajay',5,45);

==================================================================
calculate no.of output rows in inner join ,left join ,right join ?
==================================================================

create table Apple (id int);
insert into Apple values(10),(10),(10);
drop table Apple;

create table Ball (id int);
insert into Ball values(10),(10);
drop table Ball;


create table Apple1 ( id int);
insert into Apple1 values(10),(10),(10),(20);
drop table Apple1;

create table Ball1 (id int);
insert into Ball1 values(10),(10),(30);
drop table Ball1;

create table Apple2 ( id int);
insert into Apple2 values(10),(10),(10),(20),(40),(NULL);
drop table Apple2;

create table Ball2 (id int);
insert into Ball2 values(10),(10),(30),(NULL),(NULL);
drop table Ball2;

create table Apple3 ( id int);
insert into Apple3 values(10),(10),(10),(20),(40),(NULL);
drop table Apple3;

create table Ball3 ( id int);
insert into Ball3 values(10),(10),(10),(20),(40),(NULL);
drop table Ball3;

==================================================================
calculate no.of output rows in inner join ,left join ,right join ?
==================================================================
create table student(Eno int ,dno int);

insert into student(Eno,dno) values(101,10),(102,10),(103,Null);

create table location(Dno int, loc varchar(20));

insert into location(Dno,loc) values(10,'hyd'),(Null,'hyd');

==================================================================

CREATE TABLE products(
product_id int,
product_name varchar(20),
unit_price int
)


CREATE TABLE sales(
sl_no int,
product_id int,
qty int,
year int
)

