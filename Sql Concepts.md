




Data types:
===========

1.alpahabets - string/varchar
2.numeric - int,float,decimal
3.timestamp: 
      
	Now () / current_timestamp() - present time

Create table :
==============
create table course_new(
course_id int auto_increment,
name varchar(20) not null,
months decimal(3,1) not null,
fee int not null,
insert_date timestamp default now(),
Updated_date timestamp default now() on update now(),
primary key(course_id)
);

seed data:
-------------
insert into course_new(name,months,fee) values('big data',6.80,50000),
('web development',5.20,40000),
('data science',12.00,100000),
('devops',4.40,30000);


Case:
=====

select course_id,name,months,fee,
case
when months>6 then 'masters'
else 'diploma'
end as course_type
from course;



Case:
=====

select course_id,name,months,fee,
case
when months>6 then 'masters'
when months>4 then 'diploma'
else 'school'
end as course_type
from course;


select id,fname,lname,company,
case
when company in ('google','microsoft','facebook') then 'product Base'
else 'service based'
end as company_type 
from student;

*********************************************************
Ide-Groom:
==========
mysql-ctl cli

DDL - Data Definition language: 
===============================================
1.create
2.drop
3.alter
4.truncate


1.Create:
==========

CREATE DATABASE test;

create table if not exists employee(
first_name varchar(20),
middle_name varchar(20),
last_name varchar(20),
age int,
salary int,
experience float,
location varchar(20),
primary key(first_name)
);

Shows available databases:
---------------
SHOW DATABASES;
SHOW TABLES ;


To work On preferred database:
------------------
USE TEST;


Current Working database:
----------------------
SELECT DATABASE();


Show create table:
-----------------------
SHOW CREATE TABLE employee;
SHOW CREATE TABLE dept;


Structure of table:
---------------------
describe employee;
desc employee;


2.drop:
=================
drop database TEST;
drop table employee;

3.alter:    used to do strucutral changes to table 
==========

add new column:
----------------
alter table employee add column id int ;

drop column:
---------------
alter table employee drop column id; 

modify column:
---------------
alter table employee modify column first_name varchar(30);
alter table employee modify column location varchar(30);

primary key:
-----------
alter table employee drop primary key;

alter table employee add primary key (first_name);

4.truncate: remove all records
===========

truncate table employee;
************************************************************************


DML - Data manipulation language
================================
1.Insert 
2.select
3.Update
3.Delete
4.merge


1.insert data into tables:
===============================================

create table employee(
first_name varchar(20) NOT NULL,
middle_name varchar(20) ,
last_name varchar(20),
age int NOT NULL,
salary int NOT NULL,
experience float NOT NULL,
location varchar(20) default 'Narsampet'
);


Simple insert:
--------------

insert into employee(first_name,last_name ,age ,salary ,experience ,location) values('Sandeep','Nookala',28,90000,4.5,'bangalore');
insert into employee(first_name,last_name ,age ,salary ,experience ,location) values('Satish','Nookala',28,190000,9.5,'Hyderabad');
insert into employee(first_name,last_name ,age ,salary ,experience ,location) values('Krishna','Nookala',60,200000,30,'Narsampet');

insert into employee values('Krishna',NULL,'Nookala',60,200000,30,'Narsampet');
insert into employee values('Padma',NULL,'Nookala',50,10000,20,'Narsampet');
insert into employee values('teju',NULL,'Nookala',50,1,20,'hyd');

multiple inserts in one go:
--------------------------
insert into employee(first_name,last_name,age,salary,experience,location)
values('anusha','Nookala',27,100,2,'Hyderabad'),
('Sandeep','Nookala',28,90000,4.5,'bangalore'),
('Satish','Nookala',28,190000,9.5,'Hyderabad'),
('Krishna','Nookala',60,200000,30,'Narsampet'),
('swathi','Nookala',18,10,0.1,'Hyderabad'),
('Padma','Nookala',50,10000,20,'Narsampet');


2.select:
===================
simple select:
-------------
select * from employee;

select specfic column:
------------------------
select first_name,last_name from employee;

select specfic rows based on condition:
-----------------------------

select * from employee where age>27;
select * from employee where first_name = 'SANDEEP';

case sensitive select query:
==========================
select * from employee where binary first_name ='SANDEEP'; 

alias:
======
select first_name as name ,last_name as surname from employee;


3.UPDATE:
=========
update employee set last_name = 'gattu' where salary = 10;

update employee set last_name = 'jangili' where salary =100;

update employee set salary = salary+5000 ;

update employee set location = 'tirumalagiri' where first_name = 'swathi' and last_name = 'gattu';


4.Delete:
=========
remove specfic record:
=============
delete from employee where first_name= 'teju';

remove all record:
============
delete from employee;








*************************************************************
NULL = Unknown value

#Contraints:
=============

•	NOT NULL 

•	DEFAULT

•	PRIMARY KEY  
     .composite primary key
	 .auto_increment is best for primary key

•	UNIQUE 



 


1.NOT NULL:
===============================================

create table employee(first_name varchar(20) NOT NULL,
middle_name varchar(20) ,
last_name varchar(20) NOT NULL,
age int NOT NULL,
salary int NOT NULL,
experience float NOT NULL,
location varchar(20) NOT NULL
);

Check table schema:
-------------------
desc employee;


2. default values:
===============================================
create table employee(first_name varchar(20) NOT NULL,
middle_name varchar(20) ,
last_name varchar(20) NOT NULL,
age int NOT NULL,
salary int NOT NULL,
experience float NOT NULL,
location varchar(20) default 'Narsampet'
);

Check table schema:
------------------
desc employee;

insert multiple records into tables:
-----------------------------------
insert into employee(first_name,last_name ,age ,salary ,experience ,location) values('Sandeep','Nookala',28,90000,4.5,Null),('Satish','Nookala',28,190000,9.5,'Hyderabad');

insert into employee(first_name,last_name ,age ,salary ,experience) values('anusha','Nookala',27,100,2),('swathi','Nookala',18,10,0.1),('Krishna','Nookala',60,200000,30),('Padma','Nookala',50,10000,20);

reading data:
-------------
select * from employee;


Combination of NOTNULL and Default values:
===============================================

create table employee(first_name varchar(20) NOT NULL,
middle_name varchar(20) ,
last_name varchar(20) NOT NULL,
age int NOT NULL,
salary int NOT NULL,
experience float NOT NULL,
location varchar(20) NOT NULL default 'Narsampet'
);

insert multiple records into tables:
-----------------------
insert into employee(first_name,last_name ,age ,salary ,experience ,location) values('Sandeep','Nookala',28,90000,4.5,'bangalore'),('Satish','Nookala',28,190000,9.5,'Hyderabad');

insert into employee(first_name,last_name ,age ,salary ,experience) values('anusha','Nookala',27,100,2),('swathi','Nookala',18,10,0.1),('Krishna','Nookala',60,200000,30),('Padma','Nookala',50,10000,20);

read Data:
----------
select * from employee;

Check table schema:
-------------------
desc employee;


3. Primary Key:
===============================================

create table if not exists employee(
id int primary key,
first_name varchar(20) not null,
middle_name varchar(20),
last_name varchar(20) not null,
age int not null,
salary int not null,
experience float not null,
location varchar(20) not null default 'Narsampet'
);

multiple inserts:
-----------
insert into employee(id,first_name,last_name ,age ,salary ,experience ,location) values(4,'Sandeep','Nookala',28,90000,4.5,'bangalore'),(3,'Satish','Nookala',28,190000,9.5,'Hyderabad');

insert into employee(id,first_name,last_name ,age ,salary ,experience) values(5,'anusha','Nookala',27,100,2),(6,'swathi','Nookala',18,10,0.1),(1,'Krishna','Nookala',60,200000,30),(2,'Padma','Nookala',50,10000,20);

read Data:
----------
select * from employee;

Check table schema:
-------------------
desc employee;


composite primary key:
--------------------
create table if not exists employee(
first_name varchar(20) not null,
middle_name varchar(20),
last_name varchar(20) not null,
age int not null,
salary int not null,
experience float not null,
location varchar(20) not null default 'Narsampet',
primary key (first_name,last_name)
);

multiple inserts:
-----------
insert into employee(first_name,last_name ,age ,salary ,experience ,location) values('Sandeep','Nookala',28,90000,4.5,'bangalore'),('Satish','Nookala',28,190000,9.5,'Hyderabad');

insert into employee(first_name,last_name ,age ,salary ,experience) values('anusha','Nookala',27,100,2),('swathi','Nookala',18,10,0.1),('Krishna','Nookala',60,200000,30),('Padma','Nookala',50,10000,20);

read Data:
----------
select * from employee;

Check table schema:
-------------------
desc employee;


Check table schema:
-------------------
desc employee;

Auto increment is best for primarykey:
---------------------------------------

create table employee(
id int auto_increment,
first_name varchar(20) NOT NULL,
middle_name varchar(20) ,
last_name varchar(20),
age int NOT NULL,
salary int NOT NULL,
experience float NOT NULL,
location varchar(20) NOT NULL default 'Narasampet',
primary key(id),
unique key (first_name ,last_name)
);

multiple inserts:
-----------
insert into employee(first_name,last_name ,age ,salary ,experience ,location) values('Sandeep','Nookala',28,90000,4.5,'bangalore'),('Satish','Nookala',28,190000,9.5,'Hyderabad');

insert into employee(first_name,last_name ,age ,salary ,experience) values('anusha','Nookala',27,100,2),('swathi','Nookala',18,10,0.1),('Krishna','Nookala',60,200000,30),('Padma','Nookala',50,10000,20);

Check table schema:
-------------------
desc employee;




4.Unique key:
===============================================
create table if not exists employee(
id int auto_increment,
first_name varchar(20) not null,
middle_name varchar(20),
last_name varchar(20),
age int not null,
salary int not null,
experience float not null,
location varchar(20) not null default 'Narsampet',
primary key(id),
unique key (first_name,last_name)
);

multiple inserts:
-----------
insert into employee(id,first_name,last_name ,age ,salary ,experience ,location) values(1,'Sandeep','Nookala',28,90000,4.5,'bangalore'),(2,'Satish','Nookala',28,190000,9.5,'Hyderabad');

insert into employee(id,first_name,last_name ,age ,salary ,experience) values(3,'anusha','Nookala',27,100,2),(4,'swathi',NULL,18,10,0.1),(5,'Krishna','Nookala',60,200000,30),(6,'Padma','Nookala',50,10000,20);

read Data:
----------
select * from employee;

Check table schema:
-------------------
desc employee;



Contraints:
=============

•	FOREIGN KEY
      parent table
	  child table

1.FOREIGN KEY:
===============

create courses table:  (Parent table)
--------------------------------------
create table course(
course_id int auto_increment,
name varchar(20) not null,
months int not null,
fee int not null,
primary key(course_id)
);

seed data:
-------------
insert into course(name,months,fee) values('big data',6,50000),
('web development',5,40000),
('data science',12,100000),
('devops',4,30000);


insert into course (name,months,fee) values('data Structure',3,20000);

create Student table (child table):
---------------------------------

create table if not exists student (
id int auto_increment,
fname varchar(20) not null,
mname varchar(20),
lname varchar(20)not null,
email varchar(20) not null,
phone varchar(10) not null,
alternate_phone varchar(10),
enrollment_date timestamp not null,
course_id int not null default 1,
yoe int not null,
company varchar(20),
batch_date varchar(20) not null,
soj varchar(20) not null,
location varchar(20) not null,
primary key(id),
unique key(email),
foreign key(course_id ) references course(course_id)
);


Seed data (intial insert data):
===============================

insert into student (fname,lname,email,phone,course_id,yoe,
company,batch_date,soj,location) values 
('Sandeep','Nookala','sandeep@gmail.com','7989681270',1,5,'tcs','11-11-21','youtube','Bangalore'),
('Satish','Nookala','satish@gmail.com','9293111539',2,10,'synecron','31-01-22','google','Hyderabad'),
('Krishna','Nookala','krishna@gmail.com','9059741955',4,20,'google','12-08-19','facebook','Narsampet'),
('swathi','gattu','swathi@gmail.com','8989681280',3,1,'IBM','12-01-23','instagram','Hyderabad'),
('Padma','taddu','padma@gmail.com','9979897990',4,5,'microsoft','01-01-20','referal','Narsampet'),
('anusha','jangili','anusha@gamil.com','6878581270',2,2,'facebook','17-03-23','referal','Hyderabad');

insert into student (fname,lname,email,phone,course_id,yoe,
company,batch_date,soj,location) values ('teju','Nookala=','teju@gmail.com','8889681170',6,1,'tcs','11-11-21','facebook','tirupathi');


***********************************************************************
#Aggregate functions:
=====================

1.count:
======

select count(*) from student;

count & distinct:
===================
select count((company)) as company_count from student;

select count(distinct(company)) as company_count from student;

select count(distinct(location)) as diff_loc from student;

select count(*) from student where batch_date like '%-01-%';

group By:
=========

select count(*),company from student group by company;

select count(*),soj from student group by soj;

select location,count(*) from student group by location;

select location,soj,count(*) from student group by location,soj;

select course_id,count(*) from student group by course_id;

select batch_date,course_id,count(*) from student group by batch_date,course_id;


Min & Max:
==========

select min(yoe) from student;
select max(yoe) from student;

select max(yoe),soj from student group by soj ;

sum:
====

select sum(yoe),soj from student group by soj;

Age:
====

select avg(yoe),soj from student group by soj;
select avg(yoe),location from student group by location;
select avg(yoe)as avg_yoe,location from student group by location order by avg_yoe;
select company ,avg(yoe)as avg_yoe from student group by company order by avg_yoe desc;



having:
=======
select soj,count(*) as total from student group by soj having total>1;

where:
=======
select soj,count(*) as total from student where soj = 'referal'group by soj;


where and having:
=================

select location,count(*) as total from student where yoe >= 5 group by location having total>=1;



*********************************************************************

logical operators:
==================

1. equal       :  = 

select * from student where location = 'bangalore';

2. not equal   : !=

select * from student where location != 'bangalore';


3. and
=======
select * from student where location = 'bangalore' and yoe<8 and soj= 'youtube';



4.or
====
select * from student where yoe<6 or yoe>12;

select * from student where company = 'tcs' or company = 'google' or company = 'ibm';

between: (in range)
================
select * from student where yoe between 6 and 12;

not between: (not range)
================
select * from student where yoe not between 6 and 12;

in:(present within given list)
================
select * from student where company in ('tcs','google','ibm'); 

not in:(not present within given list)
================
select * from student where company not in ('tcs','google','ibm');


************************************************************************
DATETIME  format:  YYYY-MM-DD HH:MI: SS   Returns the current date. 
TIMESTAMP format:  YYYY-MM-DD HH:MI: SS   Returns the current time.

----------------------
present date and time:
----------------------
select now

select curdate()

select curtime()



YEAR 	  format:  YYYY or YY             Extracts the year part of a date  
DAY       format:  D                      Extracts the day part of a date  
MONTH     format:  M                      Extracts the month part of a date  
DATE	  format:  YYYY-MM-DD             Extracts the date part of a date  


------------------------------------------ 
ftech the day,month,year from date column:
------------------------------------------ 

select dept_id,day(doj) day from dept

select dept_id,month(doj) month from dept

select dept_id,year(doj) year from dept 

select dept_id,date(doj) date from dept


-------------------------------------------------
Extract() ---- day/month/year/seconds from date:
-------------------------------------------------

select dept_id,extract( year from doj) year,extract(month from doj) month ,
extract(day from doj)day from dept ;

---------------------------------------------------------
DATE_ADD() -----Adds a specified time interval to a date:
---------------------------------------------------------

select dept_id,date_add(doj ,interval 1 year ) year , date_add(doj,interval 1 month) month ,
date_add(doj, interval 4 hour) hour from dept;



----------------------------------------------------------------
DATE_SUB() ------Subtracts a specified time interval from a date:
-----------------------------------------------------------------

select dept_id,date_sub(doj,interval 1 year)year,date_sub(doj,interval 1 month) month,
date_sub(doj,interval 4 hour) hour from dept;

------------------------------------------------------------
DATEDIFF()-----Returns the number of days between two dates:
------------------------------------------------------------


select datediff('2021-11-11','1977-09-09') as diff





%a-Abbreviated weekday name (Sun-Sat)
%b-Abbreviated month name (Jan-Dec)
%c-Month, numeric (0-12)
%D-Day of month with English suffix (0th, 1st, 2nd, 3rd)
%d-Day of the month, numeric (00-31)
%e-Day of the month, numeric (0-31)
%f-Microseconds (000000-999999)
%H-Hour (00-23)
%h-Hour (01-12)
%I-Hour (01-12)
%i-Minutes, numeric (00-59)
%j-Day of the year (001-366)
%k-Hour (0-23)
%l-Hour (1-12)
%M-Month name (January-December)
%m-Month, numeric (00-12)
%p-AM or PM
%r-Time, 12-hour (hh:mm: ss followed by AM or PM)
%S-Seconds (00-59)
%s-Seconds (00-59)
%T-Time, 24-hour (hh:mm: ss)
%U-Week (00-53) where Sunday is the first day of the week
%u-Week (00-53) where Monday is the first day of the week
%V-Week (01-53) where Sunday is the first day of the week, used with %X
%v-Week (01-53) where Monday is the first day of the week, used with %x
%W-Weekday name (Sunday-Saturday)
%w-Day of the week (0=Sunday, 6=Saturday)
%X-Year for the week where Sunday is the first day of the week, four digits, used with %V
%x-Year for the week where Monday is the first day of the week, four digits, used with %v
%Y-Year, numeric, four digits
%y-Year, numeric, two digits

**********************************************************


Keywords
========

.Distinct
.orderby
.where
.limit
.like

Distinct:
===========

select distinct location from student;
select distinct company from student;
select distinct soj from student;

Order by:
==========

select * from student order by yoe;
select * from student order by fname;
select fname,yoe from student order by yoe;
select * from student order by yoe desc;
select fname,yoe from student order by 1;
select fname,yoe from student order by 2;
select fname,yoe from student order by fname,yoe;

where:
========

select * from student where yoe>2;

Limit:
=======
select * from student limit 3;
select * from student limit 0,3;

Order by & Limit :
=================
select fname,lname,yoe from student order by yoe desc limit 5;

select fname,lname,soj,yoe,enrollment_date from student order by batch_date desc limit 5;

select * from student order by batch_date desc limit 5;

wildcard character:
===================
. % (match with characters)
. _ (one character)

Escape character:
================
.\ (ignores character)


Keyword search : 
================
like:
=====

select * from student where fname like '%s%';
select * from student where fname like 's%';
select * from student where fname like '%s';
select * from student where fname like '%na';
select * from student where batch_date like '%-01-%';
select * from course where name like '%data%';
not like:
=========

select * from course where name not like '%data%';

Count No.of characters :
================
select * from student where fname like '______';




*********************************************************************

partition by:
=============

select fname,lname,location, 
count(*) over(partition by location)as total,
avg(salary) over(partition by location)as average from employee;


Row Number: (order by is mandatory)
==========

select fname,lname,salary,
row_number() over (order by salary desc)as rownumber from employee;

5th higest salary:
------------------

select * from (select fname,lname,location,salary,row_number() 
over(order by salary desc)as rownumber from employee)
employee where rownumber = 5 ;


partition & row_number: Assign row numbers to each partition
==========================

select fname,lname,salary,location,
row_number() over(partition by location order by salary)as rownum from employee;


all higest each partition:
----------------------

select * from (select fname,lname,location,salary,
row_number() over(partition by location order by salary desc)as rownum from employee)employee
where rownum =1;


Rank :
======

select fname,lname,location,salary,
rank() over(order by salary desc) from employee;

Dense rank:
============

select fname,lname,location,salary,
dense_rank() over(order by salary desc) as "dense_rank" from employee;
