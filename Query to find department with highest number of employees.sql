use [sql]

Create Table Departments
(
     DepartmentID int primary key,
     DepartmentName nvarchar(50)
)
GO

Create Table Employees
(
     EmployeeID int primary key,
     EmployeeName nvarchar(50),
     DepartmentID int foreign key references Departments(DepartmentID)
)
GO

Insert into Departments values (1, 'IT')
Insert into Departments values (2, 'HR')
Insert into Departments values (3, 'Payroll')
GO

Insert into Employees values (1, 'Mark', 1)
Insert into Employees values (2, 'John', 1)
Insert into Employees values (3, 'Mike', 1)
Insert into Employees values (4, 'Mary', 2)
Insert into Employees values (5, 'Stacy', 3)
GO

SELECT TOP 1 DepartmentName
FROM Employees e
JOIN Departments d
ON e.DepartmentID = d.DepartmentID
GROUP BY DepartmentName
ORDER BY COUNT(*) DESC

select * from Departments