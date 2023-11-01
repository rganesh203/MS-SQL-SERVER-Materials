select id from [dbo].[stadium]
union
select num from [dbo].[logs]

select id from [dbo].[stadium]
union all
select num from [dbo].[logs]
