use sqlsession

create table em

(
id int,
f_name varchar(20),
dept nvarchar(20),
gender_id int
)

insert into em values (1, 'rg', 'hr', 1),
insert into em values(2,'th', 'sales', 2), (3, 'rs', 'hr', 1),(4,'tr', 'sales', 3)
insert into em values(5,'tr', 'sales', 3)
create table gender

(
id int primary key,
gender varchar(20)
)

insert into gender values (1, 'males'),
insert into gender values(2, 'female'), (3,'unknown') 

select * from em
select * from gender

drop table em
drop table gender


delete from gender where id =2