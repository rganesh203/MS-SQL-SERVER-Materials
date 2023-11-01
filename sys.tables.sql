use [sql]
go

select * from sys.tables

create table ##temp(id int, tname varchar(50))

insert into ##temp 
select * from sys.tables