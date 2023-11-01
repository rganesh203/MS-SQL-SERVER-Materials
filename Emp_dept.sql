create database Emp_dept
Use Emp_dept
--Query to get the Employee name with highest salary per department
/*
1) Using INNER Join
2) MAX with Window function
3) RANK() with Window function
4) WITH CTE
*/

CREATE TABLE Employee (
  EmployeeID INT,
  EmployeeName VARCHAR(50),
  Age INT,
  JobTitle VARCHAR(50),
  DepartmentID INT,
 Salary DECIMAL(10,2)
);

INSERT INTO Employee VALUES
(1, 'John Smith', 30, 'Manager', 1, 75000.00),
(2, 'Jane Doe', 25, 'Sales Associate', 2, 45000.00),
(3, 'Mark Johnson', 35, 'Developer', 3, 90000.00),
(4, 'Sarah Lee', 28, 'Marketing', 2, 50000.00),
(5, 'James Brown', 31, 'Analyst', 1, 65000.00),
(6, 'John Smith', 28, 'Sales Associate', 2, 40000.00),
(7, 'Jane Doe', 32, 'Developer', 3, 85000.00),
(8, 'Mark Johnson', 29, 'Marketing', 2, 55000.00),
(9, 'Sarah Lee', 26, 'Analyst', 1, 60000.00),
(10, 'James Brown', 34, 'Manager', 1, 80000.00);

CREATE TABLE Department (
  DepartmentID INT,
  DepartmentName VARCHAR(50),
  JobTitle VARCHAR(50)
);

INSERT INTO Department (DepartmentID, DepartmentName, JobTitle)
VALUES
(1, 'Sales', 'Sales Associate'),
(2, 'Marketing', 'Marketing Manager'),
(3, 'IT', 'Developer'),
(4, 'Operations', 'Operations Manager'),
(5, 'HR', 'HR Manager'),
(6, 'Finance', 'Finance Manager'),
(7, 'Administration', 'Administrator'),
(8, 'Customer Support', 'Customer Support Agent'),
(9, 'Quality Assurance', 'QA Tester'),
(10, 'Production', 'Production Manager'),
(11, 'Logistics', 'Logistics Coordinator'),
(12, 'R&D', 'Research Scientist'),
(13, 'Legal', 'Legal Counsel'),
(14, 'Public Relations', 'PR Manager'),
(15, 'Procurement', 'Procurement Manager'),
(16, 'Engineering', 'Engineer');

select * from Employee
select * from Department

SELECT e.employeeName, count(d.Departmentid) as count_
FROM Employee e, Department d
where E.DepartmentID=d.DepartmentID 
GROUP BY e.employeeName 
HAVING COUNT(e.DepartmentID)>=2

SELECT D.DepartmentName,e.EmployeeName, max(E.Salary) as Avg_age
FROM department d, Employee e
WHERE e.DepartmentID = d.DepartmentID
GROUP BY DepartmentName,EmployeeName ORDER BY Avg_age DESC

SELECT D.DepartmentName,e.EmployeeName, max(E.Salary) as Avg_age
FROM department d inner join Employee e
on e.DepartmentID = d.DepartmentID
GROUP BY DepartmentName,EmployeeName ORDER BY Avg_age DESC


with cte_t (DepartmentName, EmployeeName, Avg_age) as
(
SELECT D.DepartmentName,e.EmployeeName, max(E.Salary) as Avg_age
FROM department d, Employee e
WHERE e.DepartmentID = d.DepartmentID
GROUP BY DepartmentName, EmployeeName 
)

select * from cte_t ORDER BY Avg_age DESC

