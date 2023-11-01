SELECT * FROM [dbo].[Employee]
SELECT * FROM [dbo].[Customer_Orders]

SELECT *
FROM Employee as e

INNER JOIN Customer_Orders as co
ON e.ID = co.id;