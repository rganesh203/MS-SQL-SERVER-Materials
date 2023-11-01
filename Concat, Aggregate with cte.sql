use interview
go

create table a
(id int,
name varchar(10))

insert into a values (1, 'emp1')
insert into a values (2, 'emp2')
insert into a values (3, 'emp3')
insert into a values (4, 'emp4')
insert into a values (5, 'emp5')
insert into a values (6, 'emp6')
insert into a values (7, 'emp7')
insert into a values (8, 'emp8')

with cte as
	(select concat(id, '_', name) as [name], ntile(4) over(order by id) as buckets
    from a)
select STRING_AGG([name], ', ') as result 
from cte 
group by buckets
order by 1




