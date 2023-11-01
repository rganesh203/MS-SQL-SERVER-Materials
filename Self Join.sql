SELECT * FROM [dbo].[Employee]


SELECT e.id, b.address
FROM Employee as e, employee as b
where e.ID = b.id;

SELECT e.id, b.address
FROM Employee as e, employee as b
where e.ID < b.id;

SELECT e.id, b.address
FROM Employee as e, employee as b
where e.ID > b.id;