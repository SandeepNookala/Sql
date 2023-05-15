
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


=================================================================
2.show only unique records in dup_employee table using self join?
=================================================================
select * from dup_employee d1
join
dup_employee d2
on d1.fname = d2.fname
and d1.email = d2.email
and d1.id <d2.id

===========================================
3.find employees details who had no manager?
============================================

select * from employee;
select * from department;

select * from employee e
join 
department d
on e.id = d.id
where d.manager_id is null

=====================================================================
4.ftech employees details who is earning max salary in his department?
=====================================================================

select * from employee;

select * from employee e
join 
(select dept_no,max(salary) salary from employee group by dept_no) e1
on e.dept_no = e1.dept_no
and e.salary = e1.salary


======================================================================
5.Fetch the employees who are having same salary from other department?
=====================================================================

select e.* from employee e
join
employee e1
on e.salary = e1.salary
and e.fname <>e1.fname ;

==================================================================
6.calculate no.of output rows in inner join ,left join ,right join ?
==================================================================
select * from Apple;

select * from Ball;

#inner join
===========
select * from Apple a
join
Ball b
on a.id = b.id



#left join
==========
select * from Apple a
left join
Ball b
on a.id = b.id


#right join
===========
select * from Apple a
right join
Ball b
on a.id = b.id

==========================
select * from Apple1;
select * from Ball1;


inner join:
==========
select * from Apple1 a
join 
ball1 b
on a.id = b.id


left join:
==========
select * from Apple1 a
left join 
ball1 b
on a.id = b.id

right join:
============
select * from Apple1 a
right join 
ball1 b
on a.id = b.id

==================================

select * from Apple2;
select * from Ball2;

inner join:
===========

select * from Apple2 a
join Ball2 b
on a.id =b.id ;

left join:
===========

select * from Apple2 a
left join Ball2 b
on a.id =b.id ;

right join:
===========

select * from Apple2 a
right join Ball2 b
on a.id =b.id ;

===========================

select * from Apple3;
select * from Ball3;

inner join:
===========

select * from Apple3 a
join Ball3 b
on a.id = b.id;

right join:
===========

select * from Apple3 a
right join Ball3 b
on a.id = b.id;

left join:
===========

select * from Apple3 a
left join Ball3 b
on a.id = b.id;

==================================================================
6.calculate no.of output rows in inner join ,left join ,right join ?
==================================================================
select * from student ;
select * from location ;

inner join:
===========
select * from student s
inner join
location l
on s.dno = l.Dno

left join:
===========
select * from student s
left join
location l
on s.dno = l.Dno

right join:
===========
select * from student s
right join
location l
on s.dno = l.Dno


