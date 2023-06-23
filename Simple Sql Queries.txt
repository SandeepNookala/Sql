============================================
1.Update yoe to 10 for employee name padma ?
============================================

select * from employee;

update employee set yoe = 10 where fname = 'padma';

================================================================
2. update employee name by removing leading and trailing space ?
================================================================

update demployee set fname = ltrim(rtrim(fname))

======================================================
2. select all employee names where yoe greater then 2?
======================================================

select * from employee where yoe>2;

=================================================================
3. select all employee names where salary between 40000 to 80000 ?
=================================================================

select * from employee where salary between 40000 and 80000 ;

======================================================================
4.display all employee names by excluding first names sandeep,satish ?
======================================================================

select * from employee where fname not in ('sandeep','satish');

===================================
5. display full name of employee ?
===================================

select concat(fname,'_',lname) from employee 

===================================================================
6.find employees first name who names ends  'p' had only 8 letters?
===================================================================

select * from employee where fname like '______p';

============================================
7. select all employee name starts with 's' ?
============================================

select * from employee where fname like 's%'

================================================
8.FIRST_NAME upper case fname ,lower case lname?
================================================

select upper(fname),lower(lname) from employee;

=================================
9.Replace @ with underScore '_' ?
=================================

select replace (email,'@','_') from employee;

=============================================
10.count number of same charectors in string?
=============================================

select fname,length(fname),replace(fname,'e',''),length(fname)-length(replace(fname,'e','')) as count from employee;

=========================================
11.ftech '@' position from string column?
=========================================

select instr(email,'@')as position from employee;

=================================
12.ftech domain name from gmail ?
=================================

select substr(email, instr(email,'@')+1) as domain_name from employee;

===================================================
13. list the ways to get count of records in table?
===================================================

select count(*) from employee

select count(id) from employee

========================================================
14. dept wise count of employee sort by ascending order?
========================================================

select dept_no,count(*) as count from employee group by dept_no order by count 

======================================
15.ftech odd and even rows from table?
======================================

select * from employee where mod(id,2) = 0  
select * from employee where mod(id,2) != 0

select * from employee where id%2 = 0
select * from employee where id%2 != 0

====================================================================
16.create new table from another table with same data and structure?
====================================================================

create table employee_data as select * from employee

select * from employee_data ;

============================================================================
17.create new table from another table without data and only with structure?
============================================================================
create table employee_nodata like employee;

create table employee_nodata as select * from employee where 1=0 ;

select * from employee_nodata

===========================================================
18.How to read TOP 5 records from a table using a SQL query?
===========================================================

select * from employee order by id limit 5

============================================================
19.How to read last 5 records from a table using a SQL query?
============================================================

select * from employee order by id desc limit 5 

============================
20. find  nth higest salary?
============================

select * from (select *,row_number() over(order by salary desc) salary_rank from employee ) employee where salary_rank = n ;

=================================================
21 .ftech 3rd highest salary from employee table?
=================================================

select * from (select *,row_number() over(order by salary desc) salary_rank from employee) employee where salary_rank = 3 ;

select * from employee order by salary desc limit 1 offset 2 ;

=================================================
22 .ftech 5 highest salaries from employee table?
=================================================

select * from (select *,row_number() over(order by salary desc) salary_rank from employee ) employee where salary_rank < 5 ;

select * from employee order by salary desc limit 5

======================================================
23. ftech employees details having 2nd highest Salary?
======================================================

select * from employee order by salary desc limit 1 offset 1

select * from (select *,row_number() over(order by salary desc) rn from employee )employee
where rn =2;

==============================================================
24.find max and min salaries of employees from  employee table?
==============================================================

select * from employee where salary = (select max(salary) from employee)

select * from employee where salary = (select min(salary) from employee)

==================================================
25. department wise total salaries ascending order?
===================================================

select dept_no,sum(salary) as salary from employee group by dept_no order by salary;

=======================================
26.ftech max salary in each department?
=======================================

select dept_no,max(salary) salary from employee group by dept_no ;

===================================================
27.find first and last employee details from table?
===================================================

select * from employee where id = (select min(id) from employee)

=================================================
28.ftech department who has more than 1 employee?
=================================================

select dept_no,count(*) count from employee group by dept_no having count >1

==========================================
29.ftech 50 % records from employee table?
==========================================

select * from (select *, ntile(2) over(order by id) rn from employee )employee where rn =1 

select * from (select *, ntile(2) over(order by id) rn from employee )employee where rn =2

=======================================================
30.ftech UNIQUE records from dup_employee using a SQL Query?
=======================================================

select fname,email,salary,yoe,company from dup_employee group by fname,email,salary,yoe,company

=====================================================================
31.ftech only unique records from dup_employee table using row_number?
=====================================================================

select * from (select *,row_number() over(partition by fname,email,company order by fname,email,company) rn from employee) employee where rn = 1 order by id 

===================================================================
32.delete duplicate records in dup_employee table using row_number?
===================================================================

delete from dup_employee where id in ( 
select id from (select id,row_number() over(partition by fname,email,company order by fname,email,company) rn from dup_employee) dup_employee where rn > 1 order by id 
)

select * from dup_employee

========================================
33.create new table with unique records?
========================================
create table employee_uniq as  select fname,lname,email,phone,salary,yoe,company,dept_no from employee group by fname,lname,email,phone,salary,yoe,company,dept_no

select * from employee_uniq

========================================================
34.delete duplicate records in employee table using join?
========================================================
select * from dup_employee

delete e1 
from dup_employee e1
join
dup_employee e2
on e1.id >e2.id
and e1.fname = e2.fname

===========================================================
35. find the no.of records which are repeted more than once?
===========================================================

select fname,count(*) as count from dup_employee group by fname having count >1 

==============================================================================
36. ftech only no.of records which are repeted more than once using row number?
==============================================================================

select * from (select *,row_number() over(partition by fname,salary order by fname,salary) rn from dup_employee)dup_employee where rn >1;

=================================
37.common records from two table?
=================================

select d.* from dup_employee d 
where d.id in (select e.id from employee e)


===============
Date Functions:

%a-Abbreviated weekday name (Sun-Sat)
%b-Abbreviated month name (Jan-Dec)
%W-Weekday name (Sunday-Saturday)

==================================
38.display current date and time ?
==================================
select current_timestamp(),current_date(),now(),sysdate()

=============================================
39.ftech year,month,day from customer_orders?
=============================================
select * from customer_orders

select *,day(order_date),month(order_date),year(order_date) from customer_orders ;

=======================================================
40. ftech pervious year,month,day from customer_orders?
=======================================================

select *,day(order_date - interval 1 day) ,month(order_date - interval 1 month),year(order_date - interval 1 year) from customer_orders

============================================
41.Query to format order_date as day,month ?
============================================

select *,date_format(order_date,'%a-%b-%y') from customer_orders

===============================================================================
42. Query to get the estimated delivery date after 15 days from the order date?
===============================================================================

select *,date_add(order_date, interval 15 day) delivery_date from customer_orders

==============================================================
43.Query to get the estimated delivery_date and delivery_day ?
==============================================================

select *, date_format (date_add(order_date,interval 15 day) , '%W') Delivery_Day from customer_orders

select * , date_format(date_add(order_date,interval 15 day),'%a-%b-%y') Delivery_Date from customer_orders

=======================================================================================================
44. Query to get the order_id and customer_id who are getting their order delivered before  2022-01-17?
=======================================================================================================

select order_id,customer_id from customer_orders where date_add(order_date,interval 15 day) < '2022-01-17' 









