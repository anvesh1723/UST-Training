select * from employees

select CURRENT_TIMESTAMP
select upper(name) from employees
select len(name) from employees
select count(*) from employees
select avg(salary) from employees
select sum(salary) from employees


insert into employees values(2,'ani','it',40000.0,'2026-12-03')
select * from employees

create table department(
	dept_id int,
	dept_name varchar(20)
	 
);

create table employees1(
	dept_id int,
	emp_id int,
	name  varchar(20)
)
insert into employees1 values(1,1,'anvesh');
insert into employees1 values(2,2,'ani');

insert into department values(1,'sde')
insert into department values(2,'sde')
select * from department

select e.name,d.dept_name
from employees1 e
inner join department d
on e.dept_id=d.dept_id

select e.name,d.dept_name
from employees1 e
left join department d
on e.dept_id=d.dept_id

select department,count(*) from employees
group by department;

select ROUND(avg(salary),2)from employees;
select max(salary) as max_salary,min(salary) as min_salary from employees;

create view high_salary as 
select name,salary from employees
where salary >2000

select * from high_salary
select * from employees 

select name,salary
from employees
where salary >(select avg(salary) from employees);

select * from department

select name
from employees
where department in(
		select dep_id from department where dept_id=1);



select * from employees

select name
from employees
where name='Anvesh'

select name
from employees
order by(name)

select top 1 * 
from employees
order by(name)


select * from employees

select avg(salary) from employees


select sum(salary)
from employees

select upper(name)
from employees




select * from employees1
select * from department

select e.name 
from employees1 e 
join department d
on e.dept_id=d.dept_id

SELECT d.dept_name
FROM department d
LEFT JOIN employees1 e1
ON d.dept_id = e1.dept_id
WHERE e1.dept_id IS NULL;


select * from employees
insert into employees values(3,'rahul','testing',30000.0,'2020-12-3')

select department,avg(salary),count(*) as no_people
from employees
group by department
having avg(salary)>5000

select department,max(salary) as max_salary
from employees
group by department


create view hello as
select name,salary
from employees

select * from hello

select name,salary 
from employees
where  salary >(select avg(salary) from employees)

select name ,salary
from employees
where salary in (select salary=500000.00 from employees)

select name,salary 
from employees
where  salary exists (select name,salary from employees)









