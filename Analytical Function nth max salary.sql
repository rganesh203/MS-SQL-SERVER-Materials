use [ganesh] --database in case if anyone use other DB
go
CREATE TABLE dept
(dept_Id INT not null,
dept_name varchar(25));
insert into deptvalues(1, 'it'),
(2, 'govt');

create table employeee
(emp_id Int not null,
dept_Id int,
salary int);

insert into employeee values
(1, 1, 5000),
(2, 1, 6500),
(3, 1, 4000),
(4, 2, 7500),
(5, 2, 8500),
(6, 2, 6000);

select * from dept;

select * from employeee
order by salary desc;

drop database [sample] -- delete database

alter database harika modify Name = jathin -- rename database

sp_renameDB 'jathin', 'harika' --other way rename 

--using analytical function
with salary_cte as
(select *,
DENSE_RANK() over(order by salary desc) as sal_order from employeee)
select* from salary_cte where sal_order=4
