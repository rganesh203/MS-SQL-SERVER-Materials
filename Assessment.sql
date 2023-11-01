create database assessment
use assessment

--1. Please use SQL-statement creating two tables [Employee] and [Position]
create table Employee
(employeeID int not null primary key,
EmployeeName varchar(20),
StartDate date,
[Location] nvarchar(10),
PositionID int, 
[Status] nvarchar(10),
)

insert into Employee values (11, 'Tom Port', '9/15/2003', 'QingDao', 123, 'Active')
insert into Employee values (12, 'Bill Nadler', '2/16/2004', 'Lincoln', 223, 'Active')
insert into Employee values (13, 'Ross Franklin', '5/10/2004', 'Banglore', 323, 'Active')
insert into Employee values (14, 'Jenna Zhang', '2/14/2005', 'QingDao', 423, 'Active')

create table position
(positionID int not null primary key,
PositionName varchar(20)
)

insert into position values (123, 'SPM')
insert into position values (223, 'CAN')
insert into position values (323, 'L&DS')
insert into position values (423, 'PM')

select * from Employee 
select * from position

--2.Please write a SQL-statement updating employee name from [Employee] table in upper case
	UPDATE employee
	SET EmployeeName = UPPER(EmployeeName)
	WHERE employeeID IN (11, 12, 13, 14)

	ALTER TABLE employee
	ADD CONSTRAINT FK_PersonOrder FOREIGN KEY (PositionID) REFERENCES Position (PositionID)

--3.Please write a SQL-statement getting the number of employees who works in Qingdao
	select count([Location]) as [no._of_employeesQingDao] from Employee where [Location] = 'QingDao'

--4. Please write a SQL-statement printing all details of employees whose position is PM
	SELECT
	  e.*,
	  p.*
	FROM employee e
	INNER JOIN position p
	  ON e.PositionID = p.PositionID
	WHERE PositionName = 'pm'

--5. Please write a SQL-statement filtering out the 2nd earliest starting date employees without using TOP or limit method 
--Method 1:
	SELECT
	  *
	FROM employee
	WHERE StartDate < (SELECT
	  MAX(StartDate)
	FROM employee
	WHERE startdate < (SELECT
	  MAX(StartDate)
	FROM employee))
--Method 2:
	SELECT
	  *
	FROM (SELECT
	  *,
	  ROW_NUMBER() OVER (ORDER BY StartDate) AS rn
	FROM Employee) AS result
	WHERE result.rn < 3