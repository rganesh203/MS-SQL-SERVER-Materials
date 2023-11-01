use interview
go

CREATE TABLE employees_1(
    ID  INT PRIMARY KEY,
    DT DATE,
    ADDRESS  VARCHAR(100)
)

insert into employees_1 values (1, '10-01-2022', 'HYD')
insert into employees_1 values (2, '11-01-2022', 'WRGL')
insert into employees_1 values (3, '12-01-2022', 'NLG')
insert into employees_1 values (4, '10-01-2022', 'SDPT')
insert into employees_1 values (5, '11-01-2022', 'NZD')
insert into employees_1 values (6, '12-01-2022', 'KRM')
insert into employees_1 values (7, '10-01-2022', 'ADB')
insert into employees_1 values (8, '11-01-2022', 'SRCL')
insert into employees_1 values (9, '12-01-2022', 'KMR')

select DT,count(DT) as [No] from employees_1
group by DT

select Top 20 percent * from employees_1;

select Top 5 * from employees_1