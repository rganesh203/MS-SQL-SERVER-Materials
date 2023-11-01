
use [store]

CREATE TABLE Product
(ProductID INT, ProductName VARCHAR(100) )
GO
 
CREATE TABLE ProductDescription
(ProductID INT, ProductDescription VARCHAR(800) )
GO
 
INSERT INTO Product VALUES (680,'HL Road Frame - Black, 58')
,(706,'HL Road Frame - Red, 58')
,(707,'Sport-100 Helmet, Red')
GO
 
INSERT INTO ProductDescription VALUES (680,'Replacement mountain wheel for entry-level rider.')
,(706,'Sturdy alloy features a quick-release hub.')
,(707,'Aerodynamic rims for smooth riding.')
GO

SELECT P.ProductID,P.ProductName,PD.ProductDescription  FROM 
Product P
INNER JOIN ProductDescription PD ON P.ProductID=PD.ProductID

CREATE PROCEDURE GetProductDesc
AS
BEGIN
SET NOCOUNT ON
 
SELECT P.ProductID,P.ProductName,PD.ProductDescription  FROM 
Product P
INNER JOIN ProductDescription PD ON P.ProductID=PD.ProductID
 
END

exec GetProductDesc

CREATE PROCEDURE GetProductDesc_withparameters
(@PID INT)
AS
BEGIN
SET NOCOUNT ON
 
SELECT P.ProductID,P.ProductName,PD.ProductDescription  FROM 
Product P
INNER JOIN ProductDescription PD ON P.ProductID=PD.ProductID
WHERE P.ProductID=@PID
 
END

EXEC GetProductDesc_withparameters 706