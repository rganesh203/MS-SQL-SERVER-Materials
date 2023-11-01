create login ganesh with password='12345'

use sample
go

create table sam (
id int,
name varchar(20)
);

sp_help sam

--A. DDL (Data Definition Language)

--1. Alter column name datatype
alter table [sam] alter column [name] char(50) 

--2. Add a new column to the table
alter table sam add age int;

--3. how chnage existing column & Table
sp_rename 'sam.id', 'sam.customer_id' 
sp_rename 'sam', 'employee'

--4. drop columns from table
alter table employee drop column age

--5. Truncate 
	--To delete all rows from table at a time.
	--We can't delete specific row from the table.
	--It doen't support where keyword condition. Table structuure is there but rows are deleted.
--6. Drop
	--The DROP command is used to remove table definition and its contents.

--B. DML (Data Manipulation Language):
	--INSERT : It is used to insert data into a table.
	--UPDATE: It is used to update existing data within a table.
	--DELETE : It is used to delete records from a database table.
	--LOCK: Table control concurrency.
	--CALL: Call a PL/SQL or JAVA subprogram.
	--EXPLAIN PLAN: It describes the access path to data./*
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

INSERT INTO Persons VALUES (1, 'radha', 'ganesh', 'Imambad', 'siddipet')
INSERT INTO Persons VALUES (2, 'uppu', 'ramesh', 'veerapur', 'bejjanki')
INSERT INTO Persons VALUES (3, 'ejjagiri', 'swapna', 'nagaram', 'jangam')
INSERT INTO Persons VALUES (4, 'radha', 'jathin', 'hanuman', 'ramancha')
--1. update
UPDATE Persons
SET lastname = 'Alfred Schmidt', City= 'Frankfurt'
WHERE PersonID = 1;

select *from Persons

--UPDATE Multiple Records
UPDATE Persons
SET firstname='ganesh'
WHERE City='siddipet';

--Null Update value (dont use = operator)
UPDATE Persons SET firstname='ganesh' WHERE City is null;

--all records in column updated(dont use where keyword)
UPDATE Persons
SET firstname='ganesh'

select firstname from Persons

--2. delete
select *from Persons
delete from persons
where FirstName='ganesh'

--Null value based 
delete from persons
where FirstName is null
--deleted record not to structure
--use drop only use can delete structure

--C. DQL or DRL (Data query Language or Data retrieval Language)
	--Read Data (or) Retrieva Data (or) Dispaly Data
--1. select command
--2. Retrieve method
	--i.projection metthod
		--without condition method
	--ii. selection method
		--Based on Condition method
	--iii. Join
		--Retrive the data from more than one table

--Identity Function: Auto increment values on a column
	--Syntax: IDENTITY [(seed, increment)]
	  --Seed: Starting value of a column. 
			  --Default value is 1.

	  --Increment: Incremental value that is 
				   --added to the identity value of the previous row that was loaded. The default value 1.
create table Jathin (emp int Identity, ename varchar(20), salary Money)
select * from Jathin

insert into jathin values (1, 'aa', 1100)--Not Allowed
insert into jathin values ('aa', 1100)--Allowed
insert into jathin values (2, 'bb', 100)--Not Allowed
insert into jathin (ename, salary) values ('bb',100)--Allowed

create table Harika (emp int Identity(100,5), ename varchar(20), salary Money)
select * from harika

insert into Harika values (100, 'aa', 1100)--Not Allowed
insert into Harika values ('aa', 1100)--Allowed
insert into Harika values ('bb', 100)
insert into Harika values ('cc', 108),('dd', 160)--Allowed

--set identity-insert OFF/ON
	--OFF: default connetcion of identity, we cannot insert the value into identity column by explicitly.
	--ON: we can insert the value into identity column by explicitly.
select * from harika
set identity_insert harika on
insert into Harika(emp, ename, salary) values (130, 'cc', 108)

--Set Operations
	--to combined two or more than two select statements
	--a. union
	--b. union all
	--c. intersect
	--d. except
--Rules: 1. No. of columns should be same with in both select statements.
		--2. Order of the columns should be same.
		--3. Data types of the the columns must be same.
create table hyd (eid int, name varchar(20), salary money)
create table chennai (eid int, name varchar(20), salary money)

insert into Hyd(eid, name, salary) values (1, 'ga', 10000)
insert into Hyd(eid, name, salary) values (2, 'ha', 13000)
insert into Hyd(eid, name, salary) values (3, 'ja', 17000)
insert into Hyd(eid, name, salary) values (4, 'ra', 15000)

insert into chennai(eid, name, salary) values (1, 'da', 12000)
insert into chennai(eid, name, salary) values (2, 'pra', 19000)
insert into chennai(eid, name, salary) values (3, 'ma', 18000)
insert into chennai(eid, name, salary) values (4, 'Ma', 16000)

--Union
select * from hyd
union 
select * from chennai

select * from hyd
union 
select eid, name from chennai --All queries combined using a UNION, INTERSECT or EXCEPT operator must have an equal number of expressions in their target lists.

select eid, name from hyd
union 
select eid, name from chennai-- Executing

select name, eid from hyd
union 
select eid, name from chennai-- Conversion failed when converting the varchar value 'ga' to data type int

--Union All
select * from hyd
union all
select * from chennai-- Conversion failed when converting the varchar value 'ga' to data type int

--Intersect
select * from hyd
intersect
select * from chennai

--Except
select * from hyd
intersect
select * from chennai
