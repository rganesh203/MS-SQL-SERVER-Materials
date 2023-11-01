CREATE DATABASE Product_details; 
USE Product_details;

CREATE Table Products ( Order_date date, Sales int); 

INSERT INTO Products(Order_date,Sales)    
VALUES('2021-01-01',20),('2021-03-02',32),('2021-02-03',45), 
('2021-01-04',31),('2021-03-05',33),('2021-01-06',19),
('2021-04-07',21),('2021-03-08',10),('2021-02-09',40), 
('2021-03-10',20),('2021-03-11',26),('2021-04-12',22),      
('2021-04-13',10),('2021-01-14',28),('2021-03-15',15), 
('2021-01-16',12),('2021-04-17',10),('2021-02-18',18),  
('2021-04-19',14),('2021-01-20',16),('2021-02-21',12),
('2021-03-22',51),('2021-02-23',13),('2021-03-24',15),
('2021-02-25',30),('2021-03-26',14),('2021-04-27',16), 
('2021-02-28',15),('2021-01-29',20),('2021-01-30',18); 

SELECT * FROM Products; 

SELECT YEAR(Order_date) AS Year, 
MONTH(Order_date) AS Month,SUM(Sales) 
AS Total_Sales FROM Products   
GROUP BY YEAR(Order_date), MONTH(Order_date) ; 

SELECT YEAR(Order_date) AS Year,MONTH(Order_date) 
AS Month,COUNT(Sales) AS Count_Of_Sales     
FROM Products GROUP BY YEAR(Order_date),MONTH(Order_date); 

SELECT YEAR(Order_date) AS Year, DATENAME(MONTH, Order_date) 
 AS Month, COUNT(Sales) AS Count_Of_Sales FROM Products 
 GROUP BY YEAR(Order_date), DATENAME(MONTH, Order_date); 

 SELECT YEAR(Order_date) AS Year, DATENAME(MONTH, Order_date) 
AS Month, COUNT(Sales) AS Count_Of_Sales FROM Products GROUP
BY YEAR(Order_date), DATENAME(MONTH, Order_date) ORDER 
BY Count_Of_Sales DESC; 