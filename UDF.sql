use [sql]
go

create table college 
(id int,
marks int,
name varchar(30)
)

create table sub 
(id int,
sub1 int,
sub2 int,
sub3 int
)

select * from college;
select * from sub;

insert into college values 
(1,60, 'ganesh'),(2,50, 'ram'),(3,55, 'sham'),(4,70, 'raj')

insert into sub VALUES 
(1,10,30,20),(2,10,10,30),(3,20,25,10),(4,15,20,35)

--scalar function
create function getmarks_college(@R int)
returns varchar(50)
as
begin
return (select [name] from college where id=@R)
end

print dbo.getmarks_college(3)

--table valued function
create function getallstudents(@mark int)
returns table
as 
return 
	select * from college where marks>=@mark

	select * from getallstudents(10)

--IVF

CREATE FUNCTION [dbo].[udfGetProductList]
(@Subm INT
)
RETURNS TABLE
AS
RETURN
(SELECT ID, 
        marks, 
        name
 FROM college
 WHERE marks >= @Subm)

 SELECT *
FROM dbo.udfGetProductList(50)




