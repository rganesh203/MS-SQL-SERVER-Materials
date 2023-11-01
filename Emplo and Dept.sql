use [Emp_dept]
CREATE TABLE Employee 
( 
ID INT, 
NAME VARCHAR(20), 
SALARY INT
)

INSERT INTO Employee VALUES(1,'Mandy',12000);
INSERT INTO Employee VALUES(2,'Chris',15000);
INSERT INTO Employee VALUES(3,'Henry',10000);
INSERT INTO Employee VALUES(4,'Katy',10000);
INSERT INTO Employee values(5,'Adams',11000);

create table dept(   
  dept_id     int,   
  dept_name   nvarchar(14),   
  constraint pk_dept primary key (dept_id)   
)

insert into DEPT values(1, 'ACCOUNTING')
insert into DEPT values(2, 'Marketing')
insert into DEPT values(3, 'Sales')
insert into DEPT values(4, 'Hr')
insert into DEPT values(5, 'ACCOUNTING')
insert into DEPT values(6, 'HR')


-- A. Select highest salary from employee table

SELECT MAX(SALARY) AS 'Max Salary' , MIN(SALARY) AS 'Min Salary' FROM Employee

-- B. Get the employee details who has highest salary

SELECT * FROM Employee WHERE SALARY=(SELECT MAX(SALARY) FROM Employee)

-- C. Get the second highest salary from employee table

SELECT * FROM Employee ORDER BY SALARY DESC

SELECT TOP 1 * FROM (
SELECT top 5 * FROM Employee ORDER BY SALARY DESC) as SUB ORDER BY SALARY ASC

-- D. Get the employees list who has the salary between x and y.

SELECT * FROM Employee WHERE SALARY Between 8000 and 7000

-- E. Get the highest salary  on department wise

SELECT DepartmentName, MAX(SALARY) AS 'MAX SAL' FROM Employee E left JOIN Department D ON d.DepartmentID=e.DepartmentID GROUP BY DepartmentName

-- F. Get the highest salary, employee name along with department

SELECT DepartmentName, employeename, MAX(SALARY) AS 'MAX SAL' FROM Employee E left JOIN Department D ON d.DepartmentID=e.DepartmentID GROUP BY DepartmentName

SELECT E.DepartmentName,SUB.employeename,SUB.[Max Sal] FROM Employee E left JOIN
(
SELECT DepartmentName, employeename, MAX(SALARY) AS 'MAX SAL' FROM Employee E left JOIN Department D ON d.DepartmentID=e.DepartmentID GROUP BY DepartmentName
) as SUB

SELECT e.employeename, max(salary) as [max salary]
      FROM employee e
WHERE e.salary IN
    (SELECT max(salary)
     FROM employee
     GROUP BY DepartmentID);


select *from Department
select * from Employee

SELECT DepartmentName, COUNT(*)
FROM Department d
left JOIN Employee e
ON e.DepartmentID = D.DepartmentID
GROUP BY DepartmentName
ORDER BY COUNT(*) DESC