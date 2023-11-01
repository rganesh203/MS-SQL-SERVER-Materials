use [Interview]

CREATE TABLE EMPLOYEE
(
ld INT IDENTITY (1, 1) PRIMARY KEY,
Name NVARCHAR (30) ,
SALARY DECIMAL
)
INSERT INTO EMPLOYEE (Name, Salary)
VALUES
('XXX', 1200),
('YYY', 1000),
('ZZZ', 1300),
('XXX', 1200),
('ABC', 1500),
('PQR', 1000),
('ABC', 1600),
('XYZ', 1800),
('ZZZ', 1300),
('XYZ', 1100);


SELECT *
FROM Employee
ORDER BY Salary DESC;

SELECT TOP 1 *
FROM (
  SELECT TOP 3 *
  FROM Employee
  ORDER BY Salary DESC
) AS Emp
ORDER BY Salary;