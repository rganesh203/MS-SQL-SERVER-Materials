CREATE TABLE Employee_2 
( 
ID INTEGER, 
NAME VARCHAR(20), 
SALARY INTEGER 
)

INSERT INTO Employee_2  VALUES(1,'Mandy',12000);
INSERT INTO Employee_2  VALUES(2,'Chris',15000);
INSERT INTO Employee_2  VALUES(3,'Henry',10000);
INSERT INTO Employee_2  VALUES(4,'Katy',10000);
INSERT INTO Employee_2  values(5,'Adams',11000);

SELECT MAX(SALARY)  as max_salary FROM Employee_2;

--using sub-query 2nd max. salary
SELECT MAX(SALARY) as [2nd Max_salary] FROM Employee_2 
WHERE SALARY < (SELECT MAX(SALARY) FROM Employee_2);