create table college
(
id varchar(3) primary key not null,
salary int
)
go

INSERT INTO college
  VALUES ('A', 23000), ('B', 31000),
  ('C', 24500), ('D', 35000), ('E', 28500), ('F', 31500), ('G', 39800), ('H', 51000), ('I', 39800);

select max(salary) as [2nd max_salary] from college where salary < (select max(salary) from college);

select * from college order by salary desc;

select id, max(salary) from college group by id order by id;

--2nd Highest salary
select salary from college where salary < (select max(salary) from college);

--Nth highest salary

--First method
SELECT TOP 1
  salary
FROM (SELECT DISTINCT TOP 2
  salary
FROM college
ORDER BY salary DESC)
result
ORDER BY salary;

--Second Method
declare @nthHighest int
set @nthHighest = 5 -- This one is parameter for which highest position you want to find Here 5th Highest
select top 1 Salary from
(
select distinct top (@nthHighest) salary as Salary from college order by Salary desc
) as result
order by Salary;

--Third Method
Declare @Nhighest int
set @Nhighest =3;
WITH RESULT AS
(
    SELECT distinct SALARY,
           DENSE_RANK() OVER (ORDER BY SALARY DESC) AS DENSERANK
    FROM college
)
SELECT TOP 1 SALARY
FROM RESULT
WHERE DENSERANK = @Nhighest

--Fourth Method
Declare @Nhighest int
set @Nhighest = 2;
WITH RESULT AS (
SELECT *,
       DENSE_RANK() OVER(PARTITION BY id ORDER BY Salary DESC) AS DENSERANK
    FROM Employees
 )
 SELECT distinct salary
 FROM college c
 join id d on d.Id= salary
 WHERE DENSERANK = @Nhighest ;

 --Fifth Method
 SELECT salary from college as e1 where 
        6-1 = (SELECT COUNT(DISTINCT salary)from college as e2 where e2.salary > e1.salary) 