/****** Script for SelectTopNRows command from SSMS  ******/
SELECT sum(salary) as dep_wise_sum  FROM [company].[dbo].[employee]
group by dept_id
having sum(salary)>=90000

SELECT * FROM [company].[dbo].[employee]

SELECT * FROM [company].[dbo].[employee]
where dept_id =1 and salary =80000

SELECT * FROM [company].[dbo].[employee]
where dept_id =1 or salary =80000

create table hr
(id int primary key,
name nvarchar(40)
)

insert into hr values (1, 'rg'),(2,'rt')
insert into hr values (3, 'rg'),(4,'rt')
insert into hr values (1, 'rg'),(2,'rt')


drop table sales 
create table sales
(id int,
age int CHECK (age>0)   --0 to 120
)

insert into sales values (1, 1),(2,20)



select * from sales 

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);


insert into Persons(ID, LastName,FirstName,age) values (1, 'rg','rt',56), (2, 'rs','rh',56)

select * from Persons 

select getdate() as [year] 

select year(getdate()) as [year] 

select month(getdate()) as [year] 

select day(getdate()) as [year] 

