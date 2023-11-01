select * from [Jathin].[dbo].[customers1]
select *, sum(age) over(partition by country) as [summing country] from [Jathin].[dbo].[customers1]

select *, sum(age) over(order by age desc) from [Jathin].[dbo].[customers1]

delete from [dbo].[Employees]
where manager_id is null;
 
