/*empno, empname, dno, salary - table A
dno,Dname- Tableb*/

create table school
(
id int,
f_nme varchar(20),
dno int,
salary int
)

insert into school values (1, 'rg', 102, 1000), (2, 'rt', 103, 10000),(3, 'ru', 102, 1500),(4, 'rg', 103, 10200)

create table college
(
dno int,
d_name nvarchar(20)
)

insert into college values (102, 'hr'), (103,'sales')


select dno, f_nme, max(salary) as max_salary_deptwise from school
group by dno, f_nme


select * from school

select f_nme, count(f_nme) as [duplicate] from school
group by f_nme
having count(f_nme) > 1

SELECT OrderID, ProductID, COUNT(*)
FROM OrderDetails
GROUP BY OrderID, ProductID
HAVING COUNT(*) > 1


CREATE TABLE students (
  id INT PRIMARY KEY,
  name nvarchar(20),
  gender nvarchar(20)
);
-- insert some values
INSERT INTO students VALUES (1, 'Akash', 'M');
INSERT INTO students VALUES (2, 'Amy', 'F');
INSERT INTO students VALUES (3, 'Jacob', 'M');
INSERT INTO students VALUES (4, 'Amy', 'F');
INSERT INTO students VALUES (5, 'Isha', 'F');
INSERT INTO students VALUES (6, 'John', 'M');
INSERT INTO students VALUES (7, 'John', 'M');
INSERT INTO students VALUES (8, 'Amy', 'F');

drop table students;

SELECT * FROM students;

SELECT  [name], gender
FROM students
GROUP BY [name], gender
HAVING 
    (COUNT([name])>1) AND (COUNT(gender)>1);


SELECT a.*
FROM students as a
JOIN (SELECT name, gender, COUNT(*)
FROM students
GROUP BY name, gender
HAVING count(*) > 1 ) as b
ON a.name = b.name
AND a.gender = b.gender
ORDER BY a.id
