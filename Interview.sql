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
where l1.id=l2.id -1
and l2.id=l3.id -1
and l1.num=l2.num
and l2.num=l3.num

/*2. a problem statement where you need to display records of 3 or more rows with consecutive id's,  
and also no of people should be more than 100 in each.*/
CREATE TABLE stadium(id INT, visit_date DATE, people INT);

INSERT INTO stadium VALUES(1, '01/JAN/17', 10);
INSERT INTO stadium VALUES(2, '02/JAN/17', 109);
INSERT INTO stadium VALUES(3, '03/JAN/17', 150);
INSERT INTO stadium VALUES(4, '04/JAN/17', 99);
INSERT INTO stadium VALUES(5, '05/JAN/17', 145);
INSERT INTO stadium VALUES(6, '06/JAN/17', 1455);
INSERT INTO stadium VALUES(7, '07/JAN/17', 199);
INSERT INTO stadium VALUES(8, '08/JAN/17', 188);

select * from stadium

select s1.*
from stadium as s1
join stadium as s2
join stadium as s3
on ((s1.id=s2.id-1 and s1.id=s3.id-2) 
or (s3.id=s1.id-1 and s3.id=s2.id-2) 
or (s3.id=s2.id-1 and s3.id=s1.id-2)
)
where s1.people>=100 and s2.people>=100 and s3.people>=100
order by visit_date;


--3. where the task was to query to report all customers who did not order anything.
