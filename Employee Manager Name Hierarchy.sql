use [sample]
Go
create table abc
(emp_ID int identity, 
manager varchar(20), 
manager_id int);

drop table abc;
insert into abc values('abc',    NULL),
('def',     1), 
('ghi',     2),
('klm',     3),
('def1',     1),
('ghi1',     2), 
('klm1',     3);     

select a.emp_ID , a.manager emp_name,b.manager manager_name
from abc a
inner join abc b
on a.manager_id = b.emp_ID;

select a.emp_ID , a.manager emp_name,b.manager manager_name
from abc a
left join abc b
on a.manager_id = b.emp_ID;