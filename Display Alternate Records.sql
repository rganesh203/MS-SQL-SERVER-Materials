create Table Emp2 
(
empno INT, empname VARCHAR(10), empsalary INT
)

INSERT INTO Emp2 (empno,empname,empsalary) VALUES (1    , 'abc'  ,   25000)
INSERT INTO Emp2 (empno,empname,empsalary) VALUES (2    , 'cef'  ,   15000)
INSERT INTO Emp2 (empno,empname,empsalary) VALUES (3    , 'xyz'  ,   10000)
INSERT INTO Emp2 (empno,empname,empsalary) VALUES (4    , 'pqr'  ,   5000 )
INSERT INTO Emp2 (empno,empname,empsalary) VALUES (5    , 'hij'  ,   35000)

SELECT *
FROM (
    SELECT *, Row_Number() OVER(ORDER BY empno) AS RowNumber 
            --Row_Number() starts with 1
    FROM Emp2
) t
--WHERE t.RowNumber % 2 = 0 --Even
WHERE t.RowNumber % 2 = 1 --Odd