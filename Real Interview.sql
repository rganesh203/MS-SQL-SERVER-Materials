use 
interview
go

drop table dept

 create table dept
 (dept_id int primary key,
 dept_name varchar(20)
 )

 insert into dept values(1, 'Marketing')
 insert into dept values(2, 'IT')

  create table employee_1
(
emp_id int primary key, 
dept_id int foreign key references dept(dept_id), 
salary int
)

 insert into employee_1 values(1, 1, 5000)
 insert into employee_1 values(2, 1, 6500)
 insert into employee_1 values(3, 1, 4000)
 insert into employee_1 values(4, 2, 7000)
 insert into employee_1 values(5, 2, 8500)
 insert into employee_1 values(6, 2, 6000)

 select * from employee_1
 select * from dept

 select * from employee_1
 order by salary desc;

 --1st highest salary in SQL
 select max(salary) as [max.] from employee_1

 --2nd Highest salary in SQL
 select * from employee_1 as e1 where 2-1=
 (select count(salary) from employee_1 as e2 where e2.salary>e1.salary)
 
 --3rd Highest Salary in SQL
 select emp_id, salary from employee_1 as e1 where 3-1=
 (select count(salary) from employee_1 as e2 where e2.salary>e1.salary)

 --Nth Highest Salary in SQL
 select emp_id, salary from employee_1 as e1 where N-1=
 (select count(salary) from employee_1 as e2 where e2.salary>e1.salary)
 
 /*Result
Department salary
Marketing   6500
IT          8500
*/
 select d.dept_name, max(e.salary) as maxsal
 from employee_1 as E
 inner join dept as d
 on d.dept_id = e.dept_id
 group by d.dept_id, d.dept_name





