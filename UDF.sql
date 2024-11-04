
select * from flipkart

exec sp_help flipkart


create function dbo.flipkartw(@x datetime)
returns varchar(50)
as 
begin 
declare @res varchar(40)
set @res=right('0'+cast(month(@x) as varchar(10)),2) + '/' +  right('0'+cast(day(@x) as varchar(10)),2) + '/' + cast(year(@x) as varchar(10)) 
return @res 
end

select *, dbo.flipkartw(doj) as [dattime] from flipkart

exec sp_help flipkartw
exec sp_help flipkart


select * from orders as o
inner join users as u
on 0.id=u.id
inner join product as p
on o.id=p.id

create view amazon_flipkar as 
select * from flipkart as f
inner join [dbo].[amazon] as a on f.id=a.roll


select * from amazon_flipkar

delete from amazon_flipkar where id=1

create view [data] as 
select * from [dbo].[sales_data_sample] where state is not null and country ='USA'


insert into amazon_flipkar  values (1,'25554',1,'chess')

alter view 

drop view 

select 'ganesh' 