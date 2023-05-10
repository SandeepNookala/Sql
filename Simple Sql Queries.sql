
select * from emp;
select * from employee;


=====================================================
1.Update yoe to 10 for employee name padma ?
=====================================================

update employee set yoe= 10 where fname ='padma' ;

======================================================
2. select all employee names where yoe greater then 2?
======================================================

select * from employee where yoe >2 ;

==============================================================
3. select all employee names where salary between 40000 to 80000 ?
==============================================================

select * from employee where salary between 40000 and 80000;

============================================
4. select all employee name starts with 's' ?
============================================

select * from employee where fname like 's%';

===================================
5. display full name of employee ?
===================================

select concat(fname,'_',lname) from employee;

======================================================
6.find employees first name who names ends  'p' had only 8 letters?
======================================================

select * from employee where fname like '______p';

===================================================================
7.display all employee names by excluding first names sandeep,satish ?
====================================================================

select * from employee where fname not in ('sandeep','satish');

========================
8.display current date ?
========================

select sysdate(),now(),current_date(),current_timestamp();

select lastday(now())

===================================================================
9.last days and first days of previous month and current month?
====================================================================

select lastday(now()) ;                        ----------- this month last day

select lastday(now() -interval 1 month);       ----------- pervious month last day

select lastday(now() - interval 1 month) + interval 1 day;   ---------- this month first day

select lastday(now()-interval 2 month) + interval 1 day ;     --------- last month first day

===================================================================
10.pervious and current year,month,day?
====================================================================

select day(now() - interval 1 day)

select month(now() - interval 1 month)

select year(now() - interval 1 year)

===================================
11.ftech year,month,day from employee?
===================================

select year(insert_date),month(insert_date),day(insert_date) from employee;


==============================================================
13. update employee name by removing leading and trailing space ?
==============================================================

update employee set fname = ltrim(rtrim(fname));

======================================
15.ftech odd and even rows from table:
======================================

select * from employee where mod (emp_id,2) = 0 ;
select * from employee where mod(emp_id,2) != 0 ;

select * from employee where emp_id % 2 = 0 ;
select * from employee where emp_id % 2 != 0 ;

==============================================================
16.create new table from another table with same data and structure:
=================================================================

create table emp_with_data as select * from employee;
select * from emp_with_data;

==============================================================
17.create new table from another table without data and only with structure:
=================================================================

create table emp_no_data  as select * from employee where 1 = 0;
select * from emp_no_data ;

===============================================
18.ftech employee first name replace alphabat 'a' with @ :
===============================================

select fname,replace(fname,'a','@') from employee;

===============================================
19.ftech '@' position from string column?
===============================================

select instr(email,'@')as position from employee;

=================================
20.ftech domain name from gmail ?
=================================

select substr(email, instr(email,'@')+1) as domain_name from employee;

===========================================
21 .ftech 3 highest salaries from employee?
===========================================

select * from (select *,row_number() over(order by salary desc) rn from employee)employee where rn<4;

select * from employee order by salary desc limit 3

===========================================
21 .ftech 3rd highest salary from employee?
===========================================

select * from (select *,row_number() over(order by salary desc) rn from employee )employee
where rn =3;

select * from employee order by salary desc limit 1 offset 2;


=====================================================================
22. How to find the employee with second MAX Salary?
=====================================================================

select * from employee order by salary desc limit 1 offset 1

select * from (select *,row_number() over(order by salary desc) rn from employee )employee
where rn =2;

===========================================
23.find first and last employee details from table?
===========================================

select * from employee where emp_id = (select min(emp_id) from employee)

select * from employee where emp_id = (select max(emp_id) from employee)

=============================================================
24.find max and min salaries of employee details  from table?
=============================================================

select * from employee where salary = (select max(salary) from employee)

select * from employee where salary = (select min(salary) from employee)

===================================================
25. list the ways to get count of records in table?
===================================================

select count(*) from employee   --> count of all records from table

select count(emp_id) from employee ---> count of slected column records and dont consider null column records


========================================================
25. dept wise count of employee sort by ascending order?
========================================================

select dept_no,count(*)as count from employee group by dept_no order by count;

==================================================
25. department wise total salaries ascending order?
===================================================

select dept_no,sum(salary) as salary from employee group by dept_no order by salary;

=======================================
26.ftech max salary in each department?
========================================

select dept_no,max(salary) from employee group by dept_no ;


==================================================
28.ftech department who has more than 1 employees?
==================================================

select dept_no,count(*) as count from employee group by dept_no having count >1 ;

==================================================
29.ftech 50 % records from employee table?
==================================================
ntile(3)
100% - 1 part
50%  - divides table into 2 equal parts

# first 50 records 
select * from (select *,ntile(2) over(order by emp_id) rn from employee) employee where rn =1 ;

# last 50 records 
select * from (select *,ntile(2) over(order by emp_id) nt from employee ) employee where nt=2;  

==============================================================
30.ftech UNIQUE records from a table using a SQL Query?
==============================================================

select emp_id,fname,salary from employee group by emp_id,fname,salary;

==============================================================
show only unique records in dup_emp table using row_number()?
==============================================================

select * from (select *,row_number() over(partition by fname,salary order by fname,salary) rn from dup_emp)
dup_emp where rn =1 order by emp_id ;

===========================================================
31. find the no.of records which are repeted more than once?
===========================================================

select fname,salary,count(*) as count from dup_emp group by fname,salary having count >1;

===========================================================
show only duplicate records in table ?
===========================================================

select * from (select *,row_number() over(partition by fname,salary order by fname,salary) rn from dup_emp)dup_emp where rn >1;

===========================================================
33.How to read TOP 5 records from a table using a SQL query?
===========================================================
select * from employee order by emp_id  limit 5 

===========================================================
44.How to read last 5 records from a table using a SQL query?
===========================================================

select * from employee order by emp_id desc limit 5

======================================
45. find salary between 10000 and 50000?
======================================

select * from employee where salary between 10000 and 50000;

select * from employee where salary>10000 and salary<50000;

============================
46. find  nth higest salary?
============================

select * from (select fname,lname,salary,dense_rank() over(order by salary desc ) as 
salary_rank from employee) employee where salary_rank = n

===================================================
47.FIRST_NAME upper case name lower case LAST_NAME?
===================================================

select upper(fname),lower(lname) from employee;

======================================
48.Replace @ with underScore '_' ?
======================================

select replace(email,'@','_') from employee

============================================
49.count same number of charector in string?
============================================

select fname,replace(fname,'a',''),length(fname)-length(replace(fname,'a',''))as char_count from employee;

================================
50.common records from two table?
=================================

select * from employee
intersect
select * from  employee;

=======================
51.concate two columns?
=======================

select *,concat(fname,lname) as full_name from employee 

===============
Date Functions:

%a-Abbreviated weekday name (Sun-Sat)
%b-Abbreviated month name (Jan-Dec)
%W-Weekday name (Sunday-Saturday)

============================================
52.Query to format order_date as day,month ?
============================================

select * from customer_orders;

select *,date_format(order_date,'%a-%b-%y') from customer_orders

===============================================================================
53. Query to get the estimated delivery date after 15 days from the order date?
===============================================================================

select *,date_add(order_date,interval 15 day) as Delivery_date from customer_orders;

==============================================================
54.Query to get the estimated delivery_date and delivery_day ?
==============================================================

select *,date_format(date_add(order_date,interval 15 day),'%a-%b-%y') as delievary_date  from customer_orders;

select*,date_format(date_add(order_date,interval 15 day),'%W') as delivary_day from customer_orders;

===============================================================================
55. Query to get the order_id and customer_id who are 
getting their order delivered before  2022-01-17?
===============================================================================

select * from customer_orders;

select order_id,customer_id from customer_orders where date_add(order_date ,interval 15 day) < '2022-01-17'  ;

================================================================
find no_of_matches_plyed ,no_of_matches_won,no_of_matches_lose?
================================================================
select * from icc_world_cup;

select team_name,count( team_name) as no_of_matches_plyed,sum(win_flag) as no_of_matches_won,(count( team_name) - sum(win_flag) ) as no_of_matches_lose from
(select team_1 as team_name,case when team_1 = winner then 1 else 0 end as win_flag
from icc_world_cup
union all
select team_2 as team_name ,case when team_2 = winner then 1 else 0 end as win_flag
from icc_world_cup) A 
group by team_name ;

===============================================================
find order_date ,new_customer_count and repeat_customer_count ?
===============================================================
select * from customer_orders;


with first_visit as(select customer_id, min(order_date) as first_order from customer_orders group by customer_id)

select order_date,
sum(case when co.order_date=fv.first_order  then 1 else 0 end) as first_visit_flag,
sum(case when co.order_date!=fv.first_order  then 1 else 0 end) as repeated_visit_flag
from first_visit fv 
inner join 
customer_orders co 
on fv.customer_id=co.customer_id
group by order_date;





