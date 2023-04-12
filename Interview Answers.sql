
select * from employee;

select * from dept;

update employee set yoe= 10 where fname ='padma' ;

update employee set fname = 'Krishna Murthy' where emp_id = 3;

select * from employee where yoe >2 ;

select * from employee where salary between 30000 and 100000 ;

select * from employee where fname like 's%';

select concat(fname,'_',lname) from employee 

select * from employee where fname like '______p';

select * from employee where fname like '%p';

select * from employee where fname not in ('sandeep','satish');

select sysdate(),current_date(),current_timestamp() from dual;

select last_day(now() - interval 1 month)

select last_day(now() - interval 2 month) + interval 1 day 

select last_day(now() - interval 1 month)+ interval 1 day

select last_day(now())

select day(now() - interval 1 day)

select year(now() - interval 1 year)

select month(now() - interval 1 month)

select fname,replace(fname,'a','@') from employee;

select * from employee;

select instr(email,'@') as position from employee;

select substr(email, instr(email,'@')+1) as domain_name from employee;

select * from employee

update employee set fname = ltrim(rtrim(fname));

select * from employee where doj between '1970-01-01' and '2000-01-01' ;

select * from employee where mod(emp_id ,2) = 0 ;

select * from employee where mod(emp_id ,2) != 0 ;

create table emp_with_data as select * from employee;
select * from emp_with_data;

create table emp_no_data  as select * from employee where 1 = 0;
select * from emp_no_data ;

select year(doj),month(doj),day(doj) from employee;

select * from employee order by salary desc limit 3;

select fname,salary,row_number() over(order by salary) as rownum from employee

select fname,salary from (select fname,salary,row_number() over(order by salary desc) as rownum from employee)
employee where rownum <4;

select distinct salary from employee order by salary desc limit 3

select distinct salary from employee order by salary desc

select distinct salary from employee order by salary desc limit 1 offset 2

select fname,salary from(select fname,salary,dense_rank() over(order by salary desc) 
as denserank from employee) employee where denserank =3 ;

select * from employee order by salary desc limit 1 offset 1

select * from employee where emp_id =(select min(emp_id) from employee)

select * from employee  where emp_id = (select max(emp_id) from employee)

select * from employee where salary = (select max(salary) from employee)

select * from employee where emp_id = (select max(emp_id) from employee) ;

select * from employee where emp_id = ( select min(emp_id) from employee);

select * from employee

select dept,count(*) as count from employee group by dept order by count

select dept,count(*) as count from employee group by dept having count>2;

select dept,sum(salary)as salary from employee group by dept order by salary desc ; 

select dept,max(salary) from employee group by dept

select * from employee e1
join
(select dept ,max(salary) as salary from employee  group by dept) e2
on e1.dept = e2.dept
and e1.salary = e2.salary

select * from (select emp_id,fname,ntile(2) over(order by emp_id) nt from employee) employee
where nt =1

select * from dept ;

select * from employee;

select * from employee e
join dept d
on e.emp_id = d.dept_id
where manger_id is null

select fname,email,salary from employee group by fname,email,salary

select * from (select fname,salary,row_number() over(partition by fname,salary order by salary) as rownum from employee)
employee where rownum =1

with dup_cte as (select fname,salary,row_number() over(partition by fname,salary order by salary) as rownum from employee)
delete from duP_cte where row_num >1

with dup_cte as () delete from dup_cte where row_num >1;

select * from employee order by emp_id  limit 5 

select * from employee order by emp_id desc limit 5

select * from employee where salary between 10000 and 90000;

select * from employee e
join
employee e1
on e.fname = e1.fname
and e.salary = e1.salary
and e.company = e.company
and e.emp_id <  e1.emp_id

select * from (select fname,lname,salary,dense_rank() over(order by salary desc ) as 
salary_rank from employee) employee where salary_rank = 1

select upper(fname),lower(lname) from employee;

(select * from employee)
intersect
(select * from new_emp)  

select replace(email,'@','_') from employee

select fname,replace(fname,'a','') as a,length(fname)- length (replace(fname,'a','')) as char_count from employee 



select now();

select curdate();

select curtime();

select * from dept



select dept_id,day(doj) day from dept

select dept_id,month(doj) month from dept

select dept_id,year(doj) year from dept 

select *,date(doj) date from dept

select dept_id,extract( year from doj) year,extract(month from doj) month ,extract(day from doj)day from dept ;

select * from dept;

select dept_id,date_add(doj ,interval 1 year ) year , date_add(doj,interval 1 month) month ,date_add(doj, interval 4 hour) hour from dept;

select dept_id,date_sub(doj,interval 1 year)year,date_sub(doj,interval 1 month) month,date_sub(doj,interval 4 hour) hour from dept;


select * from order_details

select *,date_format(order_date,'%a-%b-%y') from order_details

select *,date_add(order_date,interval 15 day) as Delivery_date from order_details ;

select *,date_format(date_add(order_date,interval 15 day),'%W') as delivery_day from order_details ;

select order_id,customer_name from order_details
where date_add(order_date,interval 15 day) < '2021-04-23';















