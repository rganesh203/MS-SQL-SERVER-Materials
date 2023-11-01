use [sql]
go

create view amz 
as
select c.id, c.name, s.sub1+s.sub2+s.sub3 from [college] as c  
inner join [sub] as s
on c.id=s.id
select * from amz 
delete from amz where c.id=1

create view ganesh as
select id, marks, [name] from college
where [name] ='ganesh'

select * from college
insert into college values
(1, 70, 'ramesh')

select * from ganesh

select * from [college]
select * from  [sub]