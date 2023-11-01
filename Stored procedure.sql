/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [FirstName]
      ,[LastName]
      ,[Title]
      ,[HireDate]
      ,[BirthDate]
  FROM [AdventureWorksDW2019].[dbo].[DimEmployee]

  CREATE PROCEDURE getemployee @department nvarchar(20)
  as 
  begin
  SELECT [FirstName]
      ,[LastName]
      ,[Title]
      ,[HireDate]
      ,[BirthDate]
  FROM [AdventureWorksDW2019].[dbo].[DimEmployee]
  where DepartmentName=@department
  end

  CREATE PROCEDURE getemployee1 
  as 
  begin
  SELECT [FirstName]
      ,[LastName]
      ,[Title]
      ,[HireDate]
      ,[BirthDate]
  FROM [AdventureWorksDW2019].[dbo].[DimEmployee]
  end
