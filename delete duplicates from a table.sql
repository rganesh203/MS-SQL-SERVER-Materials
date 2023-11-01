use [sql]
CREATE TABLE dbo.Employee
(
 EmployeeID INT , 
 FirstName  varchar(50) ,
 LastName varchar(50) ,
 Phone varchar(20) ,
 Email varchar(50)
);

INSERT INTO dbo.Employee VALUES 
(1, 'Adam', 'Owens', '444345999' , 'adam@demo.com'),
(2, 'Mark', 'Wilis', '245666921' , 'mark@demo.com'),
(3, 'Natasha', 'Lee', '321888909' , 'natasha@demo.com'),
(4, 'Adam', 'Owens', '444345999' , 'adam@demo.com'),
(5, 'Riley', 'Jones', '123345959' , 'riley@demo.com'),
(6, 'Natasha', 'Lee', '321888909' , 'natasha@demo.com');

Delete from dbo.Employee
WHERE EmployeeID NOT IN 
(Select Max(EmployeeID) from dbo.Employee 
GROUP BY FirstName, LastName);

select * from Employee

--SQL Query - 
With Employee_CTE as 
(Select * , 
RANK() OVER (Partition by FirstName, LastName ORDER BY EmployeeID desc ) as [Rank]
FROM dbo.Employee)

Delete from Employee_CTE 
WHERE Rank > 1