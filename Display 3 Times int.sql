Create database interview

use interview
go

--1. The task is to find all numbers that appear atleast 3 times consecutively. 
create table logs(id int, num varchar(10))

insert into logs values(1, '1')
insert into logs values(2, '2')
insert into logs values(3, '1')
insert into logs values(4, '1')
insert into logs values(5, '1')
insert into logs values(6, '2')

select * from logs

select distinct l1.num as consecutive from 
logs as l1,
logs as l2,
logs as l3
where l1.id=l2.id
and l2.id=l3.id
and l1.num=l2.num
and l2.num=l3.num