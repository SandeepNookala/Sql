+++++++++++
SQL queries
+++++++++++

1.Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name 'WORKER_NAME' ?
=====================================================================================================
select FIRST_NAME as WORKER_NAME from worker;



2.Write an SQL query to fetch “FIRST_NAME” from the Worker table in upper case?
===============================================================================
select upper(FIRST_NAME) from worker;



3.Write an SQL query that fetches the unique values of DEPARTMENT from the Worker table and prints its length?
==============================================================================================================
select distinct DEPARTMENT ,length(DEPARTMENT) as length from worker;
(or)
select DEPARTMENT,length(DEPARTMENT) from worker group by DEPARTMENT;



4.Write an SQL query to print the first three characters of FIRST_NAME from the Worker table?
=============================================================================================
select substr(FIRST_NAME,1,3) from worker;



5.Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from the Worker table?
=========================================================================================================================
select instr(FIRST_NAME,'a') from worker where FIRST_NAME = 'Amitabh'



6.Write an SQL query to print the FIRST_NAME from the Worker table after removing white spaces from the right side and leftside?
================================================================================================================================
select rtrim(FIRST_NAME),ltrim(DEPARTMENT) from worker;



7.Write an SQL query to print the FIRST_NAME from the Worker table after replacing ‘a’ with ‘B’?
================================================================================================
select replace(FIRST_NAME,'a','B') from worker;



8.Write an SQL query to print the FIRST_NAME and LAST_NAME from the Worker table into a single column COMPLETE_NAME with || separater?
=============================================================================================================================
select FIRST_NAME,LAST_NAME,concat(FIRST_NAME,'||',LAST_NAME) FULL_NAME from worker;
(or)
select FIRST_NAME,LAST_NAME,concat_ws('||',FIRST_NAME,LAST_NAME) FULL_NAME from worker;



9.Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending?
================================================================================================================================
Select * from Worker order by FIRST_NAME asc ,DEPARTMENT desc;



10.Write an SQL queries to print details for Workers with the first names “Vipul” and “Satish”,
without the first names “Vipul” and “Satish” from the Worker table?
====================================================================================================================
select * from worker where FIRST_NAME in ('Vipul','Satish');
select * from worker where FIRST_NAME not in ('Vipul','Satish');



11.Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”?
==================================================================================
select * from worker where DEPARTMENT = 'Admin';
(or)
select * from worker where DEPARTMENT like '%admin%'



12.Write an SQL query to fetch the count of employees working in the department ‘Admin’?
========================================================================================
select count(*) from worker where department like '%Admin%';
(or)
select count(*) from worker where department ='admin'



13. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’?
=====================================================================================
select * from worker where FIRST_NAME like '%a%';



14. Write an SQL queries to print details of the Workers whose FIRST_NAME starts with ‘a’,FIRST_NAME ends with ‘l’?
==================================================================================================================
select * from worker where FIRST_NAME like 'a%';
select * from worker where FIRST_NAME like '%l';



15. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets?
=================================================================================================================
select * from worker where FIRST_NAME like '______h';



16.Write an SQL query to print details of the Workers who joined in Feb 2021?
=============================================================================
select * from worker where month(JOINING_DATE) = 02 and year(JOINING_DATE) =2021 ;



17.SQL query to fetch the number of workers for each department in descending order?
====================================================================================
select DEPARTMENT,count(*) num_workers from worker group by DEPARTMENT order by num_workers desc;



18.Write an SQL query to fetch the departments that have less than four people in them?
=======================================================================================
select DEPARTMENT,count(*) no_of_people from worker group by DEPARTMENT having no_of_people < 4



19.Write an SQL query to print details of the Workers who are also Managers?
============================================================================
select * from worker w
join title t
on w.WORKER_ID = t.WORKER_REF_ID
where t.WORKER_TITLE = 'Manager'

(or)

select * from worker where WORKER_ID in (
select WORKER_REF_ID from title where WORKER_TITLE = 'Manager')



20.Write an SQL query to fetch duplicate records count from title?
==================================================================
select WORKER_TITLE from title group by WORKER_TITLE having count(*) >1;



21.Write an SQL query to show even and odd rows from worker?
========================================================
select * from worker where MOD(WORKER_ID,2) !=0 ;
select * from worker where MOD(WORKER_ID,2) = 0 ;



22.Write an SQL query to clone a new table from another table with and without data?
====================================================================================
create table new_worker as select * from worker

select * from new_worker


create table clone_worker like worker

select * from clone_worker



23.create new table with unique records?
========================================
create table new_title as select WORKER_TITLE from title group by WORKER_TITLE
(or)
create table new_title as select distinct WORKER_TITLE from title



24.Write an SQL query to fetch intersecting,union and union all records of two title tables?
=============================================================================================

select WORKER_TITLE from title
intersect
select WORKER_TITLE from new_title

select WORKER_TITLE from title
union
select WORKER_TITLE from new_title


select WORKER_TITLE from title
union all
select WORKER_TITLE from new_title



25.Write an SQL query to show one row twice in the resultant table?
===================================================================
select * from title where WORKER_TITLE = 'Asst. Manager'
union all
select * from title where WORKER_TITLE = 'Asst. Manager'




26.Write an SQL query to fetch the first 50% of records from a table?
=====================================================================
select * from (select *,ntile(2) over() nt from worker)worker where nt =1



27.Write an SQL query to show the last record from a table?
===========================================================
select * from worker order by worker_id desc limit 1

select * from worker where worker_id =(select max( worker_id) from worker)



28.Write an SQL query to fetch the first row of a table?
========================================================
select * from worker order by WORKER_ID limit 1

select * from worker where WORKER_ID = (select min(WORKER_ID) from worker)



29.Write an SQL query to fetch the last five records from a table?
==================================================================
select * from worker order by WORKER_ID desc limit 5



30.Write an SQL query to fetch the first five records from a table?
===========================================================
select * from worker order by worker_id limit 5



31. Write an SQL query to print details of the Worker fullname and salary whose SALARY lies between 500000 and 100000?
======================================================================================================================
select concat(FIRST_NAME,' ',LAST_NAME) as Worker_Name,SALARY from worker where SALARY between 50000 and 100000;
(or)
select concat(FIRST_NAME,' ',LAST_NAME) as Worker_Name,SALARY from worker where SALARY >= 50000 and SALARY<= 100000;



32.Write an SQL query to show the top 5 salaries of worker?
===========================================================
select * from worker order by SALARY desc limit 5

(or)

select * from (select *,row_number() over(order by SALARY desc)rn from worker) worker where rn <=5



33.Write an SQL query to determine the nth (say n=5) highest salary from worker?
================================================================================
select * from worker order by salary desc limit 1 offset 4 (works only if there are no same salary person in table )



34.Write an SQL query to determine the 5th highest salary without using limit method?
=====================================================================================
select * from (select *,row_number() over(order by salary desc) as rn from worker) worker where rn =5



35.Write an SQL query to fetch the list of employees with the same salary?
==========================================================================
select w1.* from worker w1
join worker w2
on w1.salary= w2.salary
and w1.WORKER_ID != w2.WORKER_ID



36.Write an SQL query to show the second-highest salary from a table?
=====================================================================
select * from (select *,dense_rank() over(order by salary desc)rn from worker) worker where rn =2

select * from worker order by salary desc limit 1 offset 1 (works only if there are no same salary person in table )



37.Write an SQL query to ftech max salary in each department?
=============================================================
select DEPARTMENT,max(SALARY) max_salary from worker group by DEPARTMENT;



38.Write an SQL query to print the names of employees having the highest salary in each department?
===================================================================================================
select * from worker where salary in (
select max(SALARY) highest_salary  from worker group by DEPARTMENT);

(or)

select w1.* from worker w1
join
(select DEPARTMENT,max(SALARY) max_salary from worker group by DEPARTMENT) w2
on w1.salary = w2.max_salary



39.Write an SQL query to fetch departments along with the total salaries paid for each of them?
===============================================================================================

select DEPARTMENT,sum(SALARY) total_salaries from worker group by DEPARTMENT;



