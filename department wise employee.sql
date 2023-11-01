/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [id]
      ,[name]
      ,[salary]
      ,[dept_id]
  FROM [company].[dbo].[employee] where salary= (select max(salary) from [employee])

  SELECT dept_id
      ,string_agg(name,',')
  FROM [company].[dbo].[employee]
  group by dept_id