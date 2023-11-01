CREATE TABLE  tbEmployee
(
EmployeeId                INT PRIMARY KEY,
EmployeeName         VARCHAR(50),
ManagerId                 INT
)


INSERT tbEmployee 
VALUES 
(25,'Salman',NULL),
(26,'Ranbeer', 25),
(27,'Hrithik',25),
(28,'Aamir',27),
(29,'Shahid',28),
(30,'Sidharth', NULL),
(31,'Varun', 30),
(32,'Kabeer', 30),
(33,'Raj', 29); 

SELECT *FROM tbEmployee

WITH EMP_CTE AS
(
SELECT EmployeeId, EmployeeName, ManagerId, CAST('' AS VARCHAR(50)) ManagerName, 0 AS EmployeeLevel FROM tbEmployee WHERE ManagerId IS NULL
UNION ALL
SELECT T.EmployeeId,T.EmployeeName, T.ManagerId,CAST(C.EmployeeName AS VARCHAR(50)) ManagerName, EmployeeLevel + 1 AS EmployeeLevel FROM tbEmployee AS T
INNER JOIN EMP_CTE  AS C ON C.EmployeeId=T.ManagerId
)
SELECT * FROM EMP_CTE

SELECT 
   *
   FROM
    tbemployee e
inner JOIN
    tbemployee m ON m.employeeid = e.employeeid;