use interview
go

Create table Employees
(
 ID int primary key identity,
 FirstName nvarchar(50),
 LastName nvarchar(50),
 Gender nvarchar(50),
 Salary int
)
GO

select * from Employees order by Salary desc

Insert into Employees values ('Ben', 'Hoskins', 'Male', 70000)
Insert into Employees values ('Mark', 'Hastings', 'Male', 60000)
Insert into Employees values ('Steve', 'Pound', 'Male', 45000)
Insert into Employees values ('Ben', 'Hoskins', 'Male', 70000)
Insert into Employees values ('Philip', 'Hastings', 'Male', 45000)
Insert into Employees values ('Mary', 'Lambeth', 'Female', 30000)
Insert into Employees values ('Valarie', 'Vikings', 'Female', 35000)
Insert into Employees values ('John', 'Stanmore', 'Male', 80000)
GO

Select * from Employees order by Salary

/*To find the highest salary it is straight forward. We can simply use the Max() 
function as shown below.*/
Select Max(Salary) as max_salary from Employees

--To get the second highest salary use a sub-query along with Max() function as shown below.
Select Max(Salary) as [2nd max_salary] from Employees where Salary <(Select Max(Salary) from Employees)

--To get distinct top 
SELECT  TOP 2/*N*/ SALARY FROM EMPLOYEES ORDER BY SALARY DESC

--To find nth highest salary using Sub-Query reverse order
SELECT top 1 SALARY
FROM (
      SELECT DISTINCT TOP 8/*N*/ SALARY
      FROM EMPLOYEES
      ORDER BY SALARY DESC
      ) EMPLOYEES
ORDER BY SALARY

--To find Nth highest salary using CTE
WITH RESULT AS
(
    SELECT SALARY,
           DENSE_RANK() OVER (ORDER BY SALARY DESC) AS DENSERANK
    FROM EMPLOYEES
)
SELECT SALARY
FROM RESULT
WHERE DENSERANK = 3

/*To find 2nd highest salary we can use any of the above queries. Simple replace N with 2. 
Similarly, to find 3rd highest salary, simple replace N with 3*/ 

/*Please Note: On many of the websites, you may have seen that, 
the following query can be used to get the nth highest salary. 
The below query will only work if there are no duplicates*/ 
WITH RESULT AS
(
    SELECT SALARY,
           ROW_NUMBER() OVER (ORDER BY SALARY DESC) AS ROWNUMBER
    FROM EMPLOYEES
)
SELECT SALARY
FROM RESULT
WHERE ROWNUMBER = 3

WITH RESULT AS
(
    SELECT SALARY,
           RANK() OVER (ORDER BY SALARY DESC) AS ROWNUMBER
    FROM EMPLOYEES
)
SELECT SALARY
FROM RESULT
WHERE ROWNUMBER = 3

select id, 
row_number() over (order by salary) as row_number, 
DENSE_RANK() over (order by salary) as DENSE_RANK, 
RANK() over (order by salary) as RANK,
avg(salary) OVER (PARTITION BY salary) as avg_salary
from EMPLOYEES;

-- group BY
SELECT AVG(salary) as avg_salary
FROM
    employees
GROUP BY 
    salary
ORDER BY
    avg_salary;

-- PARTITION BY

DELETE FROM employees WHERE id NOT IN (
SELECT MAX(id) FROM employees GROUP BY FIRSTname,LastName,Gender,salary)

