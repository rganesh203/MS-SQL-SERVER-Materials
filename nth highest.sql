/****** Script for SelectTopNRows command from SSMS  ******/
use powerbi

SELECT * FROM [PowerBI].[dbo].[college]
order by marks desc

--Highest marks
SELECT max(marks) as highest_marks FROM college
--2nd highest marks
SELECT max(marks) as highest_marks FROM college where marks<
(SELECT max(marks) as highest_marks FROM college)
--3rd highest marks
SELECT max(marks) as highest_marks FROM college where marks<
(SELECT max(marks) as highest_marks FROM college where marks<
(SELECT max(marks) as highest_marks FROM college))

select top 1 * from 
(select top 3 * from college order by marks desc) as result
order by marks
