CREATE TABLE Sales (
    Product VARCHAR(50),
    Year INT,
    Sales INT
);

INSERT INTO Sales (Product, Year, Sales) VALUES
('A', 2023, 100),
('B', 2023, 200),
('A', 2024, 150),
('B', 2024, 250);


select * from 
(select * from dbo.sales
) t

pivot 
(avg(year) for Product in  ([A],[B])
)
P

SELECT 
    Product,
    [2023] AS Sales_2023,
    [2024] AS Sales_2024
FROM 
    Sales
PIVOT
(
    SUM(Sales) 
    FOR Year IN ([2023], [2024])
) AS PivotTable;
/*
90% pivot

10% unpivot
*/

CREATE TABLE Sales_Pivot (
    Product VARCHAR(50),
    Sales_2023 INT,
    Sales_2024 INT
);

INSERT INTO Sales_Pivot (Product, Sales_2023, Sales_2024) VALUES
('A', 100, 150),
('B', 200, 250);

SELECT 
    Product,
    Year,
    Sales
FROM 
    Sales_Pivot
UNPIVOT
(
    Sales FOR Year IN (Sales_2023, Sales_2024)
) AS UnpivotTable;



select * from sys.tables--stataic query

create #temp table (id int identity(1,1), tname varchar(20))
insert into #temp
select name from sys.tables
select * from #temp
declare @i int
declare @m int
set @i=1
select @m =max(id) from #temp


