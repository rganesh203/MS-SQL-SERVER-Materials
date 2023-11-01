-- First example where a column contains more than 1 value
CREATE TABLE NotAtomic (
  OrderDate SMALLDATETIME NOT NULL,
  CustomerName VARCHAR(100) NOT NULL,
  OrderItems VARCHAR(255) NOT NULL,
  OrderTotal DECIMAL(8, 2) NOT NULL
);
GO 

INSERT INTO NotAtomic VALUES
(GETDATE(), 'John Doe', '5 T-Shirts XL, 4 Khaki Pants XL', 130.00),
(GETDATE(), 'John Doe', '3 T-Shirts M, 2 Walking Shorts L', 50.00);

SELECT * FROM NotAtomic;

select *, dateadd(MONTH,-1,OrderDate) from NotAtomic;

select *, dateadd(MONTH,-1,OrderDate), datediff(day, OrderDate, GETDATE()), 
year(OrderDate), datepart(day, OrderDate), datename(weekday,OrderDate) from NotAtomic;

select *, CONVERT(varchar, OrderDate,100) from NotAtomic;

select *, CONVERT(varchar, OrderDate,112) from NotAtomic;

select *, month(OrderDate), day(OrderDate),year(OrderDate) from NotAtomic;

select *, month(OrderDate)+'/'+day(OrderDate),year(OrderDate) from NotAtomic;

select*, cast(month(OrderDate) as varchar(10))+'/'+cast(day(OrderDate) as varchar(10))+'/'+cast(year(OrderDate) as varchar(10)) from NotAtomic

select*, ('0'+cast(month(OrderDate) as varchar(10)))+'/'+('0'+cast(day(OrderDate) as varchar(10)))+'/'+cast(year(OrderDate) as varchar(10)) from NotAtomic

select*, right('0'+cast(month(OrderDate) as varchar(10)),2)+'/'+right('0'+cast(day(OrderDate) as varchar(10)),2)+'/'+cast(year(OrderDate) as varchar(10)) from NotAtomic


