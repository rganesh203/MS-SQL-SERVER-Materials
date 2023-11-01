use my
go

--DDL SQL Statements
create table amar(custid int, custname nvarchar(20), Custaddress varchar(120))

--Drop
Drop table amar --Note – Here we can’t restore the table by using the “ROLLBACK” command because it auto commits.

--Truncate
truncate table amar --Note – Here we can’t restore the tuples of the table by using the “ROLLBACK” command.

--semicolon is option in SQL-Server
--DML SQL
insert into amar values (1, 'john', 'London')
insert into amar values (2, 'kumar', 'india')
insert into amar values (3, 'abdulla', 'kuwait')
insert into amar values (4, 'amala', 'USA')
insert into amar values (5, 'raj', 'UK')
insert into amar values (6, 'akash', 'NW')

select * from amar

--Delete 
delete table amar
where custid=1

--Add new column to the existed table
ALTER TABLE amar ADD Gender varchar(5);

--Using Update insert data into new column
UPDATE amar SET Gender = 'F' 
where custid=4

UPDATE amar SET Gender = 'M' 
where custid<>4


ALTER TABLE amar ADD DOB datetime;
ALTER TABLE amar add [Ph.No.] nvarchar(20);

UPDATE amar SET DOB = '10-06-1987' where custid=1 
UPDATE amar SET DOB = '25-10-2007' where custid=2 
UPDATE amar SET DOB = '02-02-1997' where custid=3