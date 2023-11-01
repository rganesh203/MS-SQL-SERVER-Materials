use powerbi
go

create table college 
(id int,
f_name varchar(50),
l_name varchar(50),
marks int
)

select * from college;
select * from school;

insert into college VALUES 
(1, 'radha', 'ganesh', 80);
insert into college VALUES
(2, 'anand', 'babu', 90);
insert into college VALUES
(3, 'mouli', 'babu', 95);
insert into college VALUES
(4, 'nani', 'babu', 85);
insert into college VALUES
(5, 'sirisha', 'baby', 89)

--single line comment

/* Multiple 
lines comments
*/

select * from college order by marks desc;

select max(marks) max_marks from college;

select min(marks) min_marks from college;

select count(*) min_marks from college;

select top 2 * from college;

select * from college where marks =(select max(marks) from college);

select avg(marks) avg_marks from college;

select max(marks) as [2nd_max_marks] from college where marks < (select max(marks) from college);