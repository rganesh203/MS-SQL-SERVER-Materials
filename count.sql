/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Id]
      ,[Name]
      ,[Gender]
      ,[Salary]
  FROM [Interview].[dbo].[Employees2]

  select count(1), count(*),count([Gender]) from Employees2
  --The simple answer is no – there is no difference at all. The COUNT(*) function counts the total rows in the table, including the NULL values.
  --include null value
  --count(*) is fast