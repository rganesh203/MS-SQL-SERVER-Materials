create database joins 
use 
joins
go
--A. ANSI-Format Joins: with "ON" key word join condition (new style format)
	--1. Inner join/join
	--2. outer join
			--a. Left outer Join
			--b. Right outer Join
			--c. Full outer join
	--3. cross Join
	--4. Natural Join
--B. NON-ANSI Format Joins: with "where" key word join condition (old style format)
	--1. Equi-Join
	--2. Non Equi-Join
	--3. Self Join
create table student(id int, sname varchar(50), smailid varchar(50), courseid int)
insert into student values(1,  'adam', 'adm@gmail.com', 1)
insert into student values(2,	'gan',	'gan@gmail.com', 2)
insert into student values(3,	'raj',	'raj@gmail.com', 3)	

create table course(courseid int, cname varchar(20), cfe decimal(6,2))
insert into course values(1,  'sql', 1200.00)
insert into course values(2,	'ds',	1120.00)
insert into course values(3,	'sap',	1800.00)
insert into course values(4,	'da',	2200.00)

select * from student
inner join course on courseid=courseid --Not Allowed

select * from student
inner join course on course.courseid=student.courseid --Allowed

select * from student
inner join course where course.courseid=student.courseid --Not Allowed

--left outer join
select * from student as s
left join course as c on s.courseid=c.courseid

select * from student
select * from course

--right outer join
select * from course as c
left join student as s on s.courseid=c.courseid
--Natural Join: To avoid duplicate columns from join table (Oracle)

--Ansi-Join 
	--self join

--Group by
create table company
(
empno int, 
ename varchar(50), 
Job varchar(50), 
Hiredate date, 
salary int, 
dept int
)

drop table company
insert into company values(700, 'smith', 'clerk', '1980-10-22', 12000, 20)
insert into company values(701, 'sai', 'hr', '1983-10-22', 120000, 30)
insert into company values(702, 'sath', 'clerk', '1982-10-22', 14000, 30)
insert into company values(703, 'sam', 'manager', '1985-10-22', 15000, 20)
insert into company values(704, 'gan', 'account', '1986-10-22', 10000, 10)
insert into company values(705, 'ram', 'clerk', '1980-11-22', 22000, 10)
insert into company values(706, 'smih', 'manager', '1980-12-22', 32000, 40)
insert into company values(707, 'smit', 'ceo', '1980-09-22', 42000, 50)
insert into company values(708, 'ash', 'clerk', '1980-11-23', 62000, 80)
insert into company values(709, 'akash', 'account', '1980-10-12', 72000, 10)
insert into company values(710, 'ananth', 'clerk', '1980-10-10', 02000, 20)
insert into company values(711, 'amar', 'account', '1980-10-09', 82000, 30)
insert into company values(712, 'ameer', 'ceo', '1980-10-05', 92000, 40)
insert into company values(713, 'akli', 'manager', '1980-10-06', 42000, 50)
insert into company values(714, 'akash', 'account', '1980-10-01', 56000, 30)
insert into company values(715, 'amani', 'clerk', '1980-10-03', 43000, 10)

select job, count(*) from company

select job, count(*) from company group by job

select job, count(*) [no. of employees] from company group by job

select job, sum(salary) [sum of salary], 
avg(salary) [avg salary], 
max(salary) [max. salary],
min(salary) [min. salary] from company
group by job