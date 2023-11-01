select * from Employees1

SELECT EmployeeID, MAX(SALARY) FROM Employees1 GROUP BY EmployeeID;

select * from Employees1 where salary =(select max(salary) from Employees1)