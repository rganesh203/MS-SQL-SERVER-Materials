use [sql]

create table datatype
(
a nvarchar(30),
l varchar(20),
k char(2),
w float,
d datetime,
t numeric(5,2),
f decimal (3,2),
g int,
s bigint
)

select * from datatype

exec sp_help datatype

