CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](250) NOT NULL,
	[DeptID] [int] NULL,
	[Salary] [int] NULL,
	[HireDate] [date] NULL,
	[ManagerID] [int] NULL
) ;

INSERT into [dbo].[Employees] VALUES ('Owens, Kristy', 1, 35000, '2018-01-22' , 3);
INSERT into [dbo].[Employees] VALUES ('Adams, Jennifer', 1, 55000, '2017-10-25' , 5);
INSERT into [dbo].[Employees] VALUES ('Smith, Brad', 1, 110000, '2015-02-02' , 7);
INSERT into [dbo].[Employees] VALUES ('Ford, Julia', 2, 75000, '2019-08-30' , 5);
INSERT into [dbo].[Employees] VALUES ('Lee, Tom', 2, 110000, '2018-10-11' , 7);
INSERT into [dbo].[Employees] VALUES ('Jones, David', 3, 85000, '2012-03-15' , 5);
INSERT into [dbo].[Employees] VALUES ('Miller, Bruce', 1, 100000, '2014-11-08' , NULL);
INSERT into [dbo].[Employees] VALUES ('Peters, Joe', 3, 11000, '2020-03-09' , 5);
INSERT into [dbo].[Employees] VALUES ('Joe, Alan', 3, 11500, '2020-03-09' , 5);
INSERT into [dbo].[Employees] VALUES ('Clark, Kelly', 2, 11500, '2020-03-09' , 5);

select * from Employees;

-- % - Any string of zero or more characters.
Select FullName from [dbo].[Employees]
WHere FullName like '%B%'

--_(underscore)	Any single character.
Select FullName from [dbo].[Employees]
WHere FullName like '_o%'

--Fifth character is '-' and 4th character is '0'
Select * from [dbo].[Employees]
WHere [HireDate] like '____-0%'

--   Check for Product Number pattern
--   Any 4 characters followed by '-' followed
--   by any 2 characters followed by '-' followed
--   by any two character  '-' followed 
Select * from [dbo].[Employees]
WHere [HireDate] like '____-__-__'

-- [ ]	Any single character within the 
--     specified range
--     Above pattern with last char n or m
Select * from [dbo].[Employees]
WHere FullName like '________[nm]'

--Above pattern with last char between n and m
Select * from [dbo].[Employees]
WHere FullName like '________[n-m]'

-- [^]	Any single character not within the 
--      specified range
--      Above pattern with last char not between n
--      and m
Select * from [dbo].[Employees]
WHere FullName like '________[^n-m]'

--      Product number not starting with F
Select * from [dbo].[Employees]
WHere FullName like '[^F]%'

--     Product number not starting with F or H
Select * from [dbo].[Employees]
WHere FullName like '[^FO]%'

--     Product NUmber not starting between A to H. 
Select * from [dbo].[Employees]
WHere FullName  like '[^A-H]%'

-- Example 1 - Data(Size) is Only One Character and 
--             Value is from A to Z
Select * from [dbo].[Employees]
WHere FullName like '[A-Za-z]'

-- Example 2 - Data(Size) is Two Characters and Values 
--             are from A to Z
Select * from [dbo].[Employees]
WHere FullName like '[A-Za-z]_'

-- Example 3 - Text(rowguid) Rows Starting with 
--             a Number
Select * from [dbo].[Employees]
WHere FullName  like '[0-9]%'

-- Example 4 - Find a Number Pattern -
--             Product Number with 4th and 5th chars
--             as numbers
Select Salary from [dbo].[Employees]
WHere Salary like '__[0-9][0-9]%'

-- Example 5 - Number(List Price) with two decimal 
--             places ending in 2 
Select Salary from [dbo].[Employees]
WHere Salary like '%.[0-9]2'

-- Using the Not Character for Regex with T-SQL
-- Product Number - after 1st hyphen has either numbers
-- or special characters
Select Salary from [dbo].[Employees]
WHere Salary like '__-[^A-Z]%'

-- Example - Name has Only alphabetic characters
Select FullName from [dbo].[Employees] 
where FullName like '%[^A-Z]%'

Select FullName from [dbo].[Employees] 
where FullName not like '%[^A-Z]%'

-- Example - Name has No special characters
Select FullName from [dbo].[Employees] 
where FullName like '%[^A-Z0-9]%'

Select * from [dbo].[Employees] 
where FullName not like '%[^A-Z0-9]%' and 
Salary not like '%[^A-Z0-9]%'

ALTER TABLE [dbo].[Employees] DROP COLUMN DeptID;
GO

