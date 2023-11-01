--Primay Key and Foreign Key
use my
go
-- To make the realtion between two or more tables 
-- condition
	--1. one table should contain PK & another table contain FK.
	--2. A common column in Both Tables.
	--3. The common column datatype must be same in Both Tables. 

create table raj (dep_id int primary key, fname varchar(20), location varchar(20))--parent table
insert into raj values (1, 'ganesh', 'hy') 
insert into raj values (2, 'dinesh', 'ch') 
insert into raj values (3, 'nagesh', 'mn')
select * from raj

step3:
create table man 
(
empid int, ename varchar(50), salary money, dept int foreign key references raj(dep_id)
)--child table 

select * from raj
select * from man

insert man values (10, 'ramu', 100, 1)--Allowed
insert man values (11, 'amu', 1000, 2)--Allowed
insert man values (12, 'ammu', 1200, 3)--Allowed
insert man values (13, 'ammul', 12000, 4)--Not Allowed
