/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *  FROM [mssql].[dbo].[tblEmployee]

insert into tblEmployee values (7,'rj',5000, 'male', 'Hyderabad') 
set nocount on 


alter table tblemployee add [date] nvarchar(20)

update tblEmployee set [date]= '01-08-2023' where id =1
update tblEmployee set [date]= '02-08-2023' where id =2
update tblEmployee set [date]= '03-08-2023' where id =3
update tblEmployee set [date]= '04-08-2023' where id =4
update tblEmployee set [date]= '05-08-2023' where id =5
update tblEmployee set [date]= '06-08-2023' where id =6
update tblEmployee set [date]= '07-08-2023' where id =7


select year([date]) from [tblEmployee]


update tblEmployee set Gender= 'Male' where id =7

