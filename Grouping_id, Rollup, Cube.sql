--1. savepoint:
	-- It is used to create a Temp.Memory for store the values which we want to conditionally cancelled(Rollback).

CREATE DATABASE EmpTest 
GO 

USE EmpTest 
GO 

CREATE TABLE EmpSalary 
( 
  id INT PRIMARY KEY IDENTITY(1,1), 
  EmpName varchar (200), 
  Department varchar(100), 
  Category char(1), 
  Salary money 
) 
  
INSERT EmpSalary 
SELECT 'Bhavesh Patel','IT','A',$8000 
UNION ALL 
SELECT 'Alpesh Patel','Sales','A',$7000 
UNION ALL 
SELECT 'Kalpesh Thakor','IT','B',$5000 
UNION ALL 
SELECT 'Jay Shah','Sales','B',$4000 
UNION ALL 
SELECT 'Ram Nayak','IT','C',$3000 
UNION ALL 
SELECT 'Jay Shaw','Sales','C',$2000

SELECT * FROM EmpSalary

--2. SQL Server GROUP BY Example
SELECT 
   Department, 
   SUM(Salary) as Salary 
FROM EmpSalary 
GROUP BY Department

SELECT 
   Department, 
   Category, 
   SUM(Salary) as Salary 
FROM EmpSalary 
GROUP BY Department, Category

--3. SQL Server GROUP BY with HAVING Example
SELECT 
   Department, 
   SUM(Salary) as Salary 
FROM EmpSalary 
GROUP BY Department
HAVING SUM(salary) = 16000
  
SELECT 
   Department, 
   Category, 
   SUM(Salary) as Salary 
FROM EmpSalary 
GROUP BY Department, Category
HAVING SUM(salary) = 8000

--4. SQL Server GROUP BY CUBE Example

SELECT 
   Department, 
   SUM(Salary) as Salary 
FROM EmpSalary 
GROUP BY CUBE(Department) 
  
SELECT 
   Department, 
   Category, 
   SUM(Salary) as Salary 
FROM EmpSalary 
GROUP BY CUBE(Department, Category)

--5.SQL Server GROUP BY ROLLUP Example
SELECT 
   Department, 
   SUM(Salary) as Salary 
FROM EmpSalary 
GROUP BY ROLLUP(Department) 
  
SELECT 
   Department, 
   Category, 
   SUM(Salary) as Salary 
FROM EmpSalary 
GROUP BY ROLLUP(Department, Category) 

SELECT 
   Department, 
   SUM(Salary) as salary 
FROM EmpSalary 
GROUP BY ROLLUP(Department) 
  
SELECT 
   Department, 
   Category, 
   SUM(Salary) as salary 
FROM EmpSalary 
GROUP BY ROLLUP (Category, Department)

--6. SQL Server GROUP BY ROLLUP with GROUPING_ID Example
SELECT 
   Department, 
   Category, 
   SUM(Salary) as Salary,
   GROUPING_ID(Category, Department) as GroupingID 
FROM EmpSalary 
GROUP BY ROLLUP(Category, Department)

--7.SQL Server GROUP BY GROUPING SETS Example
SELECT 
   Department, 
   Category, 
   SUM(Salary) as Salary 
FROM EmpSalary 
GROUP BY GROUPING SETS(Category, Department,(Category, Department),()) 

SELECT 
   Department, 
   Category, 
   SUM(Salary) as Salary 
FROM EmpSalary 
GROUP BY GROUPING SETS((Department, Category),()) 

SELECT 
   Department, 
   Category, 
   SUM(Salary) as Salary 
FROM EmpSalary 
GROUP BY GROUPING SETS(CUBE(Department, Category), ROLLUP(Department, Category))

--Rank Function

CREATE TABLE ExamResult
(StudentName VARCHAR(70), 
 Subject     VARCHAR(20), 
 Marks       INT
);
INSERT INTO ExamResult VALUES('Lily', 'Maths', 65);
INSERT INTO ExamResult VALUES('Lily', 'Science', 80);
INSERT INTO ExamResult VALUES('Lily', 'english', 70);
INSERT INTO ExamResult VALUES('Isabella', 'Maths', 50);
INSERT INTO ExamResult VALUES('Isabella', 'Science', 70);
INSERT INTO ExamResult VALUES('Isabella', 'english', 90);
INSERT INTO ExamResult VALUES('Olivia', 'Maths', 55);
INSERT INTO ExamResult VALUES('Olivia', 'Science', 60);
INSERT INTO ExamResult VALUES('Olivia', 'english', 89);

select * from examresult

--Row_Number()
	--ascending
SELECT Studentname, Subject, Marks, ROW_NUMBER() OVER(ORDER BY Marks) as RowNumber FROM ExamResult;
	--descending
SELECT Studentname, subject, Marks, ROW_NUMBER() OVER(ORDER BY Marks desc) as RowNumber FROM ExamResult;
--Rank()
SELECT Studentname, Subject, Marks, RANK() OVER(PARTITION BY Studentname ORDER BY Marks DESC) Rank FROM ExamResult ORDER BY Studentname, Rank;	

SELECT Studentname, 
       Subject, 
       Marks, 
       RANK() OVER(ORDER BY Marks DESC) Rank
FROM ExamResult
ORDER BY Rank;

--DENSE_RANK()
SELECT Studentname, 
       Subject, 
       Marks, 
       DENSE_RANK() OVER(ORDER BY Marks DESC) Rank
FROM ExamResult
ORDER BY Rank;

SELECT Studentname, 
       Subject, 
       Marks, 
       DENSE_RANK() OVER(PARTITION BY Subject ORDER BY Marks DESC) Rank
FROM ExamResult
ORDER BY Studentname, 
         Rank;

Update Examresult set Marks=70 where Studentname='Isabella' and Subject='Maths'

SELECT Studentname, 
       Subject, 
       Marks, 
       RANK() OVER(PARTITION BY StudentName ORDER BY Marks ) Rank
FROM ExamResult
ORDER BY Studentname, 
         Rank;

SELECT Studentname, 
       Subject, 
       Marks, 
       DENSE_RANK() OVER(PARTITION BY StudentName ORDER BY Marks ) Rank
FROM ExamResult
ORDER BY Studentname, 
         Rank;

--NTILE(N)
SELECT *, 
       NTILE(2) OVER(
       ORDER BY Marks DESC) Rank
FROM ExamResult
ORDER BY rank;

SELECT *, 
       NTILE(3) OVER(
       ORDER BY Marks DESC) Rank
FROM ExamResult
ORDER BY rank;

SELECT *, 
       NTILE(2) OVER(PARTITION  BY subject ORDER BY Marks DESC) Rank
FROM ExamResult
ORDER BY subject, rank;

--Practical usage of SQL RANK functions
WITH StudentRanks AS
(
  SELECT *, ROW_NUMBER() OVER( ORDER BY Marks) AS Ranks
  FROM ExamResult
)
 
SELECT StudentName , Marks 
FROM StudentRanks
WHERE Ranks >= 1 and Ranks <=3
ORDER BY Ranks

WITH StudentRanks AS
(
  SELECT *, ROW_NUMBER() OVER( ORDER BY Marks) AS Ranks
  FROM ExamResult
)
 
SELECT StudentName, Marks 
FROM StudentRanks
ORDER BY Ranks OFFSET 1 ROWS FETCH NEXT 3 ROWS ONLY;