create function dbo.employeeBY1(@ID int)
returns table
as
return
(select id, gmail
from [employye] where id =@ID
)
go


select * from dbo.employeeBY1(2)


CREATE FUNCTION dbo.toppers1 ()
RETURNS @class TABLE (id int, marks int)
AS
BEGIN
   INSERT INTO @class
   SELECT c.id, o.marks
   FROM [custumers] c
   full join Orders o ON c.id = o.roll
  
   RETURN
END

select * from dbo.toppers1() where marks is not null

select * from [dbo].[custumers]
select * from orders