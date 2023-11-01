create database company
use company

create table employee (
id int, 
name nvarchar(10),
salary int,
dept_id int
)
create table department (
id int, 
dept_name nvarchar(10),
)

insert into employee values(1, 'RG', 40000, 1)
insert into employee values(2, 'RH', 80000, 1)
insert into employee values(3, 'RP', 80000, 2)
insert into employee values(4, 'RS', 30000, 2)
insert into employee values(5, 'RR', 80000, 1)


insert into department values(1, 'IT')
insert into department values(2, 'HR')

--name and deprtment wise max salary
select dept_name, name, salary
from employee e
inner join department d on
e.dept_id=d.id
where salary in (select max(salary) from employee group by dept_id)

--deprtmentwise salary
select d.dept_name, max(e.salary) as max_dept_salary
from employee e
inner join department d on
e.dept_id=d.id
group by dept_name

--How to create new table by using existing table
 select * into harika from employee

 --How to create new table by using existing table structure
 select * into jathin from department
 where 0=1


