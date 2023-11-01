/****** Script for SelectTopNRows command from SSMS  ******/
use ssis
go

select * from [ssis].[dbo].[OLE DB Destination]

SELECT TOP (1000) [order_id]
      ,[product]
      ,[total]
      ,[customer_id]
      ,[Copy of product]
  FROM [ssis].[dbo].[Destination]

select @@SERVERNAME as server_name
select @@CONNECTIONS as server_name
select @@SERVICENAME as server_name
select @@DATEFIRST as server_name
select @@LANGUAGE as server_name
select @@ROWCOUNT as server_name
select @@CPU_BUSY as server_name
select @@CURSOR_ROWS as server_name
select @@DBTS as server_name
select @@DEF_SORTORDER_ID as server_name
select @@DEFAULT_LANGID as server_name
select @@ERROR as server_name
select @@FETCH_STATUS as server_name
select @@IDENTITY as server_name