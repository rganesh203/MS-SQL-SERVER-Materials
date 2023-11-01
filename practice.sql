create table s
(id int)

create table r
(id int)

insert into s values (1),(1),(1),(null)
insert into r values (1),(1),(null)

select * from s
inner join r
on s.id=r.id

select * from s

union

select *from r

select * from s

union all

select *from r


select * from s
right join r
on s.id=r.id

select * from s
full outer join r
on s.id=r.id