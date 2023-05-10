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

==================================================================
calculate no.of output rows in inner join ,left join ,right join ?
==================================================================

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

==================================================================
calculate no.of output rows in inner join ,left join ,right join ?
==================================================================
create table emp(Eno int ,dno int);

insert into emp(Eno,dno) values(101,10),(102,10),(103,Null)

create table dept1(Dno int, loc varchar(20));

insert into dept1(Dno,loc) values(10,'hyd'),(Null,'hyd');


