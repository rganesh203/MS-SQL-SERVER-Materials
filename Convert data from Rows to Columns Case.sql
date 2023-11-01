use interview
go

create table cities
(source varchar(50),
Destination varchar(50),
Distance int
)

insert into cities values ('bangalore', 'hyderabad', 600)
insert into cities values ('hyderabad', 'bangalore', 600)
insert into cities values ('mumbai', 'delhi', 900)
insert into cities values ('delhi', 'mumbai', 900)
insert into cities values ('chennai', 'pune', 700)
insert into cities values ('pune', 'chennai', 700)

select *, row_number() over(partition by Distance order by Distance) as id   
from cities

select * from cities

select source, distance,
      case when source = 'hyderabad' then 'bangalore'  else ' ' end as hyderabad, 
      case when source = 'mumbai' then 'delhi'  else ' ' end as mumbai,
	  case when source = 'bangalore' then 'hyderabad'  else ' ' end as bangalore,
	  case when source = 'delhi' then 'bangalore' else ' ' end as delhi,
	  case when source = 'chennai' then 'pune'  else ' 'end as chennai,
	  case when source = 'pune' then 'chennai'  else ' 'end as pune
from cities; 

create table emp
(name varchar(10),
value varchar(10),
id int);

insert into emp values('name', 'adam', 1),
('gender', 'male', 1),
('salary', '1000', 1)

select * from emp;

select id,
	case when name = 'name' then value else ' ' end as name,
	case when name = 'gender' then value else ' ' end as gender,
	case when name = 'salary' then value else ' ' end as salary
from emp;