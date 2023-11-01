/****** Script for SelectTopNRows command from SSMS  ******/

use ganesh
SELECT * FROM course where age > (select avg(age) from course)
select * into ganesh from course
select * into tbl_empl from ganesh where 1=0

select * from tbl_empl

select age from course
group by age 
having max(age)<(select max(age) from course)

select age from course
group by age 
having count(age)>1