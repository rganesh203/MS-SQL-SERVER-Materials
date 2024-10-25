use pyspark_sql

CREATE TABLE Employee (
    EID INT PRIMARY KEY,
    Name VARCHAR(50),
    Dept VARCHAR(50)
);


INSERT INTO Employee (EID, Name, Dept)
VALUES 
(1, 'John', 'HR'),
(2, 'Sarah', 'IT'),
(3, 'Mark', 'Sales'),
(4, 'Jane', 'IT'),
(5, 'Bob', 'Sales');

CREATE TABLE Salaries (
    EID INT PRIMARY KEY,
    Sal INT,
    FOREIGN KEY (EID) REFERENCES Employee(EID)
);

INSERT INTO Salaries (EID, Sal)
VALUES 
(1, 70000),
(2, 95000),
(3, 60000),
(4, 105000),
(5, 75000);

WITH DepartmentSalaries AS (
    SELECT e.Dept AS Department, s.Sal AS Salary, e.EID
    FROM Salaries s
    JOIN Employee e
    ON s.EID = e.EID
),
MaxSalaries AS (
    SELECT Department, MAX(Salary) AS MaxSalary
    FROM DepartmentSalaries
    GROUP BY Department
)
SELECT ds.Department, MAX(ds.Salary) AS SecondHighestSalary
FROM DepartmentSalaries ds
JOIN MaxSalaries ms
ON ds.Department = ms.Department
WHERE ds.Salary < ms.MaxSalary
GROUP BY ds.Department;


SELECT Dept, MAX(Sal) AS SecondHighestSalary
FROM Salaries s
JOIN Employee e
 ON s.EID = e.EID
GROUP BY Dept;
WHERE Sal < (
   SELECT MAX(Sal)
   FROM Salaries s2
   JOIN Employee e2
     ON s2.EID = e2.EID
   WHERE e.Dept = e2.Dept
)
GROUP BY Dept;
