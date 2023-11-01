create table emp
(id int ,
f_name nvarchar(10),
salary int,
emp_id int
)

insert into emp	values (1,	'John',	50000,	101),(2,	'Jane',	55000,	102),(3,	'Mike',	60000,	101),(4,	'Sarah',	52000,	102)


create table dept_1
(dept_id int, dept_name nvarchar(20))

insert into dept_1	values (101,'HR'),(102,	'Engineering')

SELECT d.dept_name, MAX(e.salary) AS max_salary
FROM emp e
inner JOIN dept_1 d ON e.emp_id = d.dept_id
GROUP BY d.dept_name;
