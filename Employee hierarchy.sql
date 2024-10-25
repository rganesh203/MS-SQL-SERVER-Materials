-- 
Create database oct04 
use oct04

CREATE TABLE Employees (
    EID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    MID INT
);

-- Create Salaries Table
CREATE TABLE Salaries (
    EID INT PRIMARY KEY,
    Sal DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (EID) REFERENCES Employees(EID)
);

-- Insert Data into Employees
INSERT INTO Employees (EID, Name, MID) VALUES
(1, 'John', 3),
(2, 'Jane', 3),
(3, 'Alice', NULL),
(4, 'Bob', 3),
(5, 'Tom', 1);

-- Insert Data into Salaries
INSERT INTO Salaries (EID, Sal) VALUES
(1, 50000),
(2, 60000),
(3, 80000),
(4, 55000),
(5, 40000);


SELECT 
 e.MID,
 AVG(s.Sal) AS AvgSalary
FROM 
 Employees e
JOIN 
 Salaries s ON e.EID = s.EID
WHERE 
 e.MID IS NOT NULL
GROUP BY 
 e.MID
HAVING 
 COUNT(e.EID) > 0;


 SELECT 
    e.EID, 
    e.Name AS Employee, 
    m.Name AS Manager
FROM 
    Employees e
LEFT JOIN 
    Employees m ON e.MID = m.EID;


	SELECT 
    e.EID, 
    e.Name, 
    s.Sal
FROM 
    Employees e
JOIN 
    Salaries s ON e.EID = s.EID;

	SELECT 
    SUM(Sal) AS TotalSalary
FROM 
    Salaries;

