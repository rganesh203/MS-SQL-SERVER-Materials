use [master]
go

create table school(   
 SrNO	int, 
 Dept	int,
 emp_id int, 
 Salary int    
)

insert into school values
(1,		1,			11,	10000),
(2,		1,			12,	20000),
(3,		1,			13,	30000),
(4,		1,			14,	40000),
(5,		1,			15,	50000),
(6,		2,			11,	60000),
(7,		2,			12,	70000),
(8,		2,			11,	50000),
(9,		3,			12,	60000)

--1. Rolling SUM, AVG
SELECT *,
SUM(salary) OVER (ORDER BY srno) AS RunningsalaryTotal,
avg(salary) OVER (ORDER BY srno) AS Runningsalaryavg
FROM school

--2. Top 3 Highest Salary in every Departmentwise
select * from school

select * from (select s.*, ROW_NUMBER() over (partition by dept order by salary desc) as rn from school as s) as t 
where t.rn<=3

select * from (select s.*, dense_rank() over (partition by dept order by salary desc) as rn from school as s) as t 
where t.rn=2

create table college 
(
employeeID Int,
empname nvarchar(8),
salary int,
department nvarchar(10)
)

insert into college values
(1,		'RG',	10000, 'sales'),
(2,		'SP',	20000, 'finance'),
(3,		'RM',	30000,  'HR'),
(4,		'TS',	40000, 'sales'),
(5,		'AP',	50000, 'finance'),
(6,		'TN',	60000, 'HR'),
(7,		'JP',	70000, 'sales'),
(8,		'RJ',	50000, 'finance'),
(9,		'PS',	60000, 'hr')

select empname, department from (select c.*, dense_rank() over (partition by department order by salary desc) as dr from college as c) as t 
where t.dr<=3

select * into sai from college
where 1=2

select * from top3

