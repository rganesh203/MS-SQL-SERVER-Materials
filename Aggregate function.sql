create database sqlsession
use sqlsession
--using query
--using GUI

drop database institute
--using query
--using GUI

--alter database name
execute sp_renamedb 'ganesh', 'sqlsession1'

ALTER DATABASE bisession MODIFY NAME = sqlsession
--using query
--using GUI

create table emp
(id int,
f_name nvarchar(20),
l_name nvarchar(20),
salary int,
age int
)

select * from emp --single line * it denotes all columns
/*gggggggggggggggggggggg
jdhfurhgur*/
select id, f_name from emp

--insert data
--using query
--using GUI

insert into emp values (1, 'r', 'g', 10000, 36), (3, 'c', 'r', 12000, 79), (4, 'y','e', 40000, 56)
insert into emp(id, f_name, l_name, salary, age ) values (2, 't', 'h', 1000, 39)

create table emp1
(id int not null,
f_name nvarchar(20),
l_name nvarchar(20),
salary int,
age int
)

insert into emp1(id, f_name, l_name, salary, age ) values (1, 't', 'h', 1000, 39)

drop table emp1
--

--filter
select * from emp
where id = 2 and salary = 1000

--
select * from emp
where id is null

select * from emp
where id is not null

select * from emp

--aggregate functions avg, sum, min, max, count
select id, f_name, sum(salary) as sum_salary from emp
group by id, f_name
order by sum(salary) 

--having clause always group by
select id, count(id) count_ from emp
group by id
having count(id)>1



create table i
(id int)

create table k
(id int)

insert into i values (1)

insert into k values (1)

select * from k
select * from i
inner join k
on i.id=k.id


select * from i
cross join k


select * from i as a, 
i b where a.id=b.id







