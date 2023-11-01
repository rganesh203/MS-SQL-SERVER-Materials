create database tmp
use tmp

create table emp
(id int primary key,
f_name nvarchar(30),
n_name nvarchar(20),
gender_id int
)


insert into emp values (5, 'r', 'y', 2)

select * from emp

create table gender
(id int primary key,
gender nvarchar(40)
)

select * from gender

select * from emp

alter table emp 
drop constraint [FK_emp_gender]

alter table emp add constraint fk_emp_id foreign key(gender_id) references gender(id)
