+++++++++++
SQL queries
+++++++++++

use company
select * from employee;
select * from department;

=======================================
1.Update employee yoe to 10 for empid 1?
=======================================
update employee set yoe =10 where emp_id =4;



===============================================================
2.update employee names by removing leading and trailing space ?
===============================================================
update employee set fname = ltrim(rtrim(fname))



=================================
3.update employee salary by 1000 ?
=================================
update employee set salary = salary+100 



==================================================
4. Unique employee count of individual department?
==================================================
select dept_no,count(*)count from employee group by dept_no;
(or)
select dept_no,count(*) from (select *,row_number() over(partition by emp_id order by emp_id) rn from employee) employee
where rn =1 group by dept_no



=======================================================
5.Update department employees count from employee table?
=======================================================

update department d,(select dept_no,count(*)count from employee group by dept_no) e 
set d.emp_count = e.count
where d.dept_no = e.dept_no