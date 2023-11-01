use Interview

Create Table Employees2
(
 Id int primary key,
 Name nvarchar(50),
 Gender nvarchar(10),
 Salary int
)
Go

Insert Into Employees2 Values (1, 'Mark', 'Male', 5000)
Insert Into Employees2 Values (2, 'John', 'Male', 4500)
Insert Into Employees2 Values (3, 'Pam', 'Female', 5500)
Insert Into Employees2 Values (4, 'Sara', 'Female', 4000)
Insert Into Employees2 Values (5, 'Todd', 'Male', 3500)
Insert Into Employees2 Values (6, 'Mary', 'Female', 5000)
Insert Into Employees2 Values (7, 'Ben', 'Male', 6500)
Insert Into Employees2 Values (8, 'Jodi', 'Female', 7000)
Insert Into Employees2 Values (9, 'Tom', 'Male', 5500)
Insert Into Employees2 Values (10, 'Ron', 'Male', 5000)
Go

SELECT Name, Gender, Salary, 
    SUM(Salary) OVER (ORDER BY ID) AS RunningTotal
FROM Employees2

--SQL Query to compute running total with partitions
SELECT Name, Gender, Salary, 
    SUM(Salary) OVER (PARTITION BY Gender ORDER BY ID) AS RunningTotal
FROM Employees2

/*What happens if I use order by on Salary column
If you have duplicate values in the Salary column, all the duplicate values will be added to the running total at once. 
In the example below notice that we have 5000 repeated 3 times. So 15000 (i.e 5000 + 5000 + 5000) is added to the running total at once. */

SELECT Name, Gender, Salary, 
    SUM(Salary) OVER (ORDER BY Salary) AS RunningTotal
FROM Employees2