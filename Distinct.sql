use ganesh
go

CREATE TABLE student(
Customer_Id INT not null,
first_name varchar(25),
second_name varchar(25),
age int,
country varchar(25)
);
go
insert into student values
(1, 'ganesh', 'radha', 35, 'india'),
(2, 'harika', 'radha', 27, 'usa'),
(3, 'raju', 'namatse', 62, 'canada'),
(4, 'ramesh', 'uppuneeti', 25, 'india'),
(5, 'prajay', 'garipally', 9, 'srilanka'),
(6, 'darshith', 'garipally', 4, 'uk'),
(7, 'jathin', 'radha', 1, 'aus'),
(8, 'mayook', 'rayini', 1, 'new');

select * from student;

select distinct age
from student
order by age;


