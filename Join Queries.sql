
================================================================================
1.Find the name,salary of each professor whose department is not equal to Arts and 
salary is greater than the smallest salary of the professor in Arts Department?
=================================================================================
select * from professor;
select * from department;

select * from professor p
join
department d 
on p.dept_id = d.id 
where dept_name != 'Arts' and salary > (select min(salary) from professor p join department d on p.dept_id = d.id where dept_name = 'Arts');


==========================================================
2.show only unique records in dup_emp table using self join?
==========================================================
select e.* from dup_emp e
join 
dup_emp e1
on e.fname = e1.fname
and e.salary = e1.salary
and e.emp_id < e1.emp_id

=====================================
3.find employees details who had no manager?
=====================================

select * from employee;
select * from dept;

select * from employee e
join dept d
on e.emp_id = d.dept_id
where manger_id is null

=================================================================
32.show only unique records in dup_emp table using self join?
=================================================================

select * from dup_emp;

select d1.* from dup_emp d1
join
dup_emp d2 
on d1.fname = d2.fname
and d1.salary = d2.salary
and d1.emp_id <d2.emp_id


==============================================================
4.ftech employees details who is earning max salary in his department?
==============================================================

select * from employee;

select * from employee e
join
(select dept_no ,max(salary) as salary from employee group by dept_no) e1
on e.dept_no = e1.dept_no
and e.salary = e1.salary ;


======================================================================
5.Fetch the employees who are having same salary from each department?
=====================================================================

select e.* from employee e
join
employee e1
on e.salary = e1.salary
and e.fname <>e1.fname ;

==================================================================
5.calculate no.of output rows in inner join ,left join ,right join ?
==================================================================
select * from A;

select * from B;

#inner join
===========
select * from A
join
B
on A.id = B.id;

#left join
==========
select * from A
left join
B
on A.id = B.id ;

#right join
===========
select * from A
right join
B
on A.id = B.id;

==========================
select * from A1;
select * from B1;

inner join:
==========
select * from A1
join B1
on A1.id = B1.id;

left join:
==========
select * from A1
left join B1
on A1.id = B1.id;

right join:
============
select * from A1
right join B1
on A1.id = B1.id;

==================================

select * from A2;
select * from B2;

inner join:
===========

select * from A2
join B2
on A2.id =B2.id ;

left join:
===========

select * from A2
left join B2
on A2.id =B2.id ;

right join:
===========
select * from A2
right join B2
on A2.id = B2.id ;

===========================

select * from s;
select * from s1;

inner join:
===========

select * from s
join s1
on s.id = s1.id;

right join:
===========

select * from s
right join s1
on s.id = s1.id ;

left join:
===========

select * from s
left join s1
on s.id = s1.id ;

==================================================================
6.calculate no.of output rows in inner join ,left join ,right join ?
==================================================================
select * from dept1 ;
select * from emp ;

select * from dept1 d
left join
emp e
on d.Dno = e.dno


select * from dept1 d
right join
emp e
on d.Dno = e.dno

select * from dept1 d
inner join
emp e
on d.Dno = e.dno

