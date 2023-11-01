use company
go

Create table Employees1
(
     EmployeeID int primary key identity,
     EmployeeName nvarchar(50),
     ManagerID int foreign key references Employees1(EmployeeID)
)
GO

Insert into Employees1 values ('John', NULL)
Insert into Employees1 values ('Mark', NULL)
Insert into Employees1 values ('Steve', NULL)
Insert into Employees1 values ('Tom', NULL)
Insert into Employees1 values ('Lara', NULL)
Insert into Employees1 values ('Simon', NULL)
Insert into Employees1 values ('David', NULL)
Insert into Employees1 values ('Ben', NULL)
Insert into Employees1 values ('Stacy', NULL)
Insert into Employees1 values ('Sam', NULL)
GO

Update Employees1 Set ManagerID = 8 Where EmployeeName IN ('Mark', 'Steve', 'Lara')
Update Employees1 Set ManagerID = 2 Where EmployeeName IN ('Stacy', 'Simon')
Update Employees1 Set ManagerID = 3 Where EmployeeName IN ('Tom')
Update Employees1 Set ManagerID = 5 Where EmployeeName IN ('John', 'Sam')
Update Employees1 Set ManagerID = 4 Where EmployeeName IN ('David')
GO

--Here is the SQL that does the job
Declare @ID int ;
Set @ID = 5;

WITH EmployeeCTE AS
(
     Select EmployeeId, EmployeeName, ManagerID
     From Employees1
     Where EmployeeId = @ID
    
     UNION ALL
    
     Select Employees1.EmployeeId , Employees1.EmployeeName,
             Employees1.ManagerID
     From Employees1
     JOIN EmployeeCTE
     ON Employees1.EmployeeId = EmployeeCTE.ManagerID
)

Select E1.EmployeeName, ISNULL(E2.EmployeeName, 'No Boss') as ManagerName
From EmployeeCTE E1
LEFT Join EmployeeCTE E2
ON E1.ManagerID = E2.EmployeeId