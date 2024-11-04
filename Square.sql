use sep13


create function dbo.calculatesquare(@number int)
returns int
as
begin 
	return @number*@number
end
go

select dbo.calculatesquare(5) as squarevalue


