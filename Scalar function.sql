use joins
go

select * from company

create function grsal(@empno int)
returns money
as 
begin 
declare @basic money, @HRA money, @DA money, @pf money, @Gross money
select salary from company where empno=@empno
set @HRA=@basic*0.1
set @DA=@basic*0.2
set @pf=@basic*0.1
set @Gross= @HRA+@DA+@basic+@pf
return @Gross
end

--select dbo.<FNAME>(values)