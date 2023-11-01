use [sample]
go

CREATE TABLE employee(
Customer_Id INT not null,
Job varchar(25),
city varchar(25),
sex varchar(25),
salary int
);

insert into employee values
(1, 'it', 's', 'M', 2500),
(2, 'govt', 't', 'F', 3000),
(3, 'business', 'u', 'M', 5000),
(4, 'teacher', 'v', 'M', 4000),
(5, 'ae', 'w', 'M', 6000),
(6, 'de', 'x', 'M', 7000),
(7, 'ade', 'y', 'M', 2000),
(8, 'ias', 'z', 'M', 6000)
;

select * from employee;

SELECT CONCAT(city,sex) from employee;
select city +' '+sex from employee;


