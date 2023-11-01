use jathin
go

create database jathin
go

create table orders
(order_id int,
product varchar(50),
total int,
customer_id int
);
Go

create table customers
(customer_id int,
first_name varchar(50),
last_name varchar(50),
phone varchar(20),
country varchar(50)
);
Go

drop table customers

INSERT INTO orders (order_id, product,total,customer_id) VALUES (1, 'paper', 500, 5)
INSERT INTO orders (order_id, product,total,customer_id) Values (2, 'pen', 10, 2)
INSERT INTO orders (order_id, product,total,customer_id) VALUES (3, 'Marker', 120, 3)
INSERT INTO orders (order_id, product,total,customer_id) VALUES (4, 'Books', 1000, 1)
INSERT INTO orders (order_id, product,total,customer_id) VALUES (5, 'Erasers', 20, 4)

INSERT INTO customers (customer_id, first_name,last_name, phone, country) values (1, 'john', 'doe', '9030125472', 'ind')
INSERT INTO customers (customer_id, first_name,last_name, phone, country) values (2, 'Robert', 'Luna', '9030125473', 'usa')
INSERT INTO customers (customer_id, first_name,last_name, phone, country) values (3, 'david', 'Robinson', '9030125474', 'usa')
INSERT INTO customers (customer_id, first_name,last_name, phone, country) values (4, 'john', 'ramesh', '9030125172', 'uk')
INSERT INTO customers (customer_id, first_name,last_name, phone, country) values (5, 'betty', 'doe', '9030135472', 'ind')

select * from customers 
select * from orders

SELECT first_name, last_name FROM Customers;
go

SELECT * FROM Customers WHERE last_name = 'doe';

create table customers1
(customer_id int,
first_name varchar(50),
last_name varchar(50),
age int,
country varchar(50)
);
Go

INSERT INTO customers1 (customer_id, first_name,last_name, age, country) values (1, 'john', 'doe', 20, 'ind')
INSERT INTO customers1 (customer_id, first_name,last_name, age, country) values (2, 'Robert', 'Luna', 21, 'usa')
INSERT INTO customers1 (customer_id, first_name,last_name, age, country) values (3, 'david', 'Robinson', 22, 'usa')
INSERT INTO customers1 (customer_id, first_name,last_name, age, country) values (4, 'john', 'ramesh', 25, 'uk')
INSERT INTO customers1 (customer_id, first_name,last_name, age, country) values (5, 'betty', 'doe', 24, 'ind')

SELECT age, country
FROM Customers1
WHERE country = 'USA';
go

--where clause
--1. Equal to Operator (=)
SELECT *
FROM Customers1
WHERE first_name = 'John';

--2. Greater than (>)
SELECT *
FROM Customers1
WHERE age > 20;

--3. AND Operator (AND)
SELECT *
FROM Customers1
WHERE last_name = 'Doe' AND country = 'ind';

--4. SQL AND Operator
SELECT first_name, last_name
FROM Customers1
WHERE country = 'ind' AND last_name = 'Doe';

select * from customers1

--5. SQL OR Operator
SELECT first_name, last_name, country
FROM Customers1
WHERE country = 'USA' OR last_name = 'Doe';

--6. SQL NOT Operator
SELECT first_name, last_name
FROM Customers1
WHERE NOT country = 'USA';

--7. Combining Multiple Operators
SELECT *
FROM Customers1
WHERE (country = 'USA' OR country = 'UK') AND age < 26;

--8. Example 
SELECT *
FROM Customers1
WHERE NOT country = 'USA' AND NOT last_name = 'Doe';

--with distinct
--9. Distinct
SELECT DISTINCT country
FROM Customers1

--10. Distinct example
SELECT DISTINCT country, first_name FROM Customers1;

--11. DISTINCT with COUNT
SELECT COUNT(DISTINCT country) FROM Customers1

--12. GROUP BY
SELECT country
FROM Customers1
GROUP BY country;

--13. ORDER BY
SELECT DISTINCT age
FROM Customers1
ORDER BY age DESC;

--14. SQL AS Alias
SELECT first_name AS name
FROM Customers1

--15. SQL AS With More Than One Column
SELECT customer_id AS cid, first_name AS name
FROM Customers1

--16. SQL AS With Expression CONCAT() function
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM Customers1

--17. SQL AS With Functions
SELECT COUNT(*) AS total_customers
FROM Customers1

--18. SQL AS With Table Name
SELECT cww.first_name, cww.last_name
FROM Customers1 AS cww;

--19. SQL AS With JOIN
SELECT C.customer_id AS cid, C.first_name AS [name]
FROM Customers1 AS C
JOIN Orders AS O
ON C.customer_id = O.customer_id;

--20. Top 
SELECT TOP 2 *
FROM Customers1;

/*21. SQL LIMIT Clause The LIMIT keyword is used with the following database systems: 
MySQL, PostgreSQL, SQLite*/

--22. SELECT first_name, age FROM Customers LIMIT 2;

--23. SELECT first_name, last_name FROM Customers LIMIT 2 OFFSET 3;

--24. SQL LIMIT With OFFSET Clause MySQL
SELECT first_name, last_name
FROM Customers
LIMIT 2 OFFSET 3;

--25. SQL TOP Clause SQL Server MS Access
SELECT TOP 2 first_name, last_name
FROM Customers;

--26. Oracle SQL FETCH FIRST Clause
SELECT * FROM Customers1
FETCH FIRST 2 ROWS ONLY;

--27. PERCENT Clause With TOP
SELECT TOP 80 PERCENT first_name, last_name
FROM Customers1;

--28. WITH TIES Clause With TOP
SELECT TOP 4 WITH TIES first_name, country
FROM Customers
ORDER BY country DESC;

--29. SQL IN Operator
SELECT first_name, country
FROM Customers1
WHERE country IN ('USA', 'UK');

--30. SQL IN Operator With Columns
SELECT first_name, country
FROM Customers
WHERE 'USA' in (country);

--31. SQL NOT IN Operator
SELECT first_name, country
FROM Customers1
WHERE country NOT IN ('UK', 'UAE');

--32. SQL IN Operator With Duplicate Values
SELECT first_name, country
FROM Customers
WHERE country IN ('USA', 'UK', 'USA');

--33. SQL IN Operator With Subquery
SELECT customer_id, first_name
FROM Customers1
WHERE customer_id IN (SELECT customer_id FROM Orders)

--34. SQL BETWEEN Operator
SELECT product, total
FROM Orders
WHERE total between 10 and 200

--35. SQL NOT BETWEEN Operator
SELECT product, total
FROM Orders
WHERE total not between 10 and 200

--36. SQL BETWEEN OPERATOR With Texts
SELECT product, total
FROM Orders
WHERE product between 'a' and 'o'

SELECT product, total
FROM Orders
WHERE product between 'a' and '~b'

SELECT product, total
FROM Orders
WHERE product between 'Pa' and 'Mar'

create table employee
(empl_id int not null,
first_name varchar(20),
last_name varchar(20),
department varchar(20),
email varchar(20)
);

INSERT INTO employee values (1, 'john', 'doe', 'hr','c@gmail.com')
INSERT INTO employee (empl_id,first_name,last_name,department,email) values (2, 'Robert', 'Luna', 'sw','c@mail.com')
INSERT INTO employee (empl_id,first_name,last_name,department,email) values (3, 'david', 'Robinson', 'ae','c@gmail.com')
INSERT INTO employee (empl_id,first_name,last_name,department,email) values (4, 'john', 'ramesh', 'ci','p@gmail.com')
INSERT INTO employee (empl_id,first_name,last_name,department,email) values (5, 'betty', 'doe', 'gv','l@gmail.com')
INSERT INTO employee values (6, 'joh', 'roe', 'br','null')

delete from employee where empl_id=1

--37. IS NULL
SELECT *
FROM employee
WHERE email IS null

--38. IS NOT NULL
SELECT *
FROM Employee
WHERE email IS NOT NULL;

--39. IS NULL With COUNT()
SELECT COUNT(*)
FROM Employee
WHERE email IS NULL;

--40. SQL MAX() Function
SELECT MAX(age)
FROM Customers1

--41. SQL MIN() Function
SELECT MIN(age)
FROM Customers1

--42. Aliases with MAX() and MIN()
SELECT MAX(age) AS max_age, MIN(age) AS min_age 
FROM Customers1

--43. MAX() and MIN() with Strings
SELECT MIN(first_name) AS min_first_name
FROM Customers;

--44. Get entire rows containing the minimum age
SELECT *
FROM Customers1
WHERE age = (
    SELECT MIN(age)
    FROM Customers1
);

SELECT count(*)
FROM Customers1
GROUP BY country
HAVING MAX(age)>1

--44. COUNT() with WHERE
SELECT COUNT(country) AS customers_in_UK
FROM Customers1
WHERE country = 'UK';

--45. COUNT() with DISTINCT
SELECT COUNT(DISTINCT country)
FROM Customers1

--46. COUNT() with GROUP BY
SELECT country, COUNT(*) AS customers
FROM Customers1
GROUP BY country;

--47. COUNT() With HAVING Clause
SELECT COUNT(customer_id), country
FROM Customers1
GROUP BY country
HAVING COUNT(customer_id) > 1;

--48. SQL SUM() Function
SELECT SUM(age) as cu_sge
FROM customers1

select * from customers1

create table customer
(order_id int,
item varchar(50),
amount int,
cust_id int,
);
Go

drop table customer 

INSERT INTO customer (order_id, item,amount, cust_id) VALUES (1, 'key',400,5)
INSERT INTO customer Values (2, 'mou',300, 4)
INSERT INTO customer VALUES (3, 'Monit',1120, 4)
INSERT INTO customer VALUES (4, 'key', 100, 1)
INSERT INTO customer VALUES (5, 'mouse',200, 2)

select * from customer

--49. SQL SUM() Function
SELECT SUM(amount) AS total_of_cus4
FROM customer
WHERE cust_id = 4;

--50. SQL AVG() Function
SELECT AVG(amount) AS average_age
FROM Customer;

--51. 
SELECT DISTINCT cust_id, AVG(amount) AS average_spends
FROM customer
GROUP BY cust_id;

--52. SQL ORDER BY Clause
SELECT *
FROM Customers
ORDER BY first_name desc;

--53.
SELECT *
FROM Customers1
ORDER BY age ASC;

--54.
SELECT *
FROM Customers1
ORDER BY age DESC;

--55.
SELECT *
FROM Customers1
ORDER BY first_name, age;

--56.
SELECT last_name, age
FROM Customers1
WHERE NOT country = 'UK'
ORDER BY last_name DESC;

--57. SQL GROUP BY
SELECT country, COUNT(*) AS number
FROM Customers1
GROUP BY country;

--58. Example Two: GROUP BY in SQL
SELECT cust_id, SUM(amount) AS total
FROM customer
GROUP BY cust_id;

--59. GROUP BY Clause With JOIN in SQL
SELECT Customer.cust_id, Customer.item, Count(Orders.order_id) AS order_count
FROM Customer
LEFT JOIN Orders
ON Customer.cust_id = Orders.customer_id
GROUP BY Customer.cust_id;

--60. GROUP BY With Multiple Columns
SELECT country, state, MIN(age) as min_age
FROM Persons
GROUP BY country, state;

--61. 
SELECT COUNT(customer_id) as country_age, country
FROM Customers
GROUP BY country
HAVING COUNT(customer_id) > 1;

--62. SQL LIKE Operator(Note: Although the LIKE operator behaves similar to the = operator in this example, they are not the same.
--The = operator is used to check equality whereas LIKE operator is used to match string patterns only)

SELECT *
FROM Customers
WHERE country LIKE 'UK';

--63. SQL LIKE With Wildcards
SELECT *
FROM Customers
WHERE last_name LIKE 'R%';

--64. Example Two: SQL LIKE With Wildcards
SELECT *
FROM Customers
WHERE country LIKE 'U_';

--65. [] Wildcard in SQL
SELECT *
FROM Customers
WHERE country LIKE 'U[KA]%';

--66. SQL LIKE With Wildcards
SELECT *
FROM Customers
WHERE last_name LIKE 'R%';

--67. SQL NOT LIKE Operator
SELECT *
FROM Customers
WHERE country NOT LIKE 'USA';

--68. SQL LIKE With Multiple Values
SELECT *
FROM Customers
WHERE last_name LIKE 'R%t' OR last_name LIKE '%e';

--69.
SELECT *
FROM Customers
WHERE last_name LIKE 'R%t';

create table teachers
(id int,
[name ]varchar(10),
age int
);

insert into teachers values (1, 'peter', 32)
insert into teachers values (2, 'megan', 22)
insert into teachers values (3, 'rose', 23)
insert into teachers values (4, 'ganesh',35)
insert into teachers values(5,'Jathin',2)

create table students
(id int,
[name ]varchar(10),
age int
);

drop table students
drop table teachers

insert into students values (1, 'sai', 31)
insert into students values (2, 'ram', 22)
insert into students values (3, 'charan',25)
insert into students values (4, 'prajay',33)
insert into students values(5,'darshi',20)

select * from students
select * from teachers

--70. union
SELECT age
FROM Teachers
UNION
SELECT age
FROM Students;

--71. union all
SELECT age
FROM Teachers
UNION ALL
SELECT age
FROM Students;

--72. SQL Subquery
SELECT *FROM teachers
WHERE age = (SELECT MIN(age) FROM teachers);-- sub query/inner query dynamic changes value

SELECT *FROM teachers
WHERE age > (SELECT sum(age) FROM teachers)

SELECT *FROM teachers
WHERE age > (SELECT avg(age) FROM teachers)

SELECT *FROM teachers
WHERE age < (SELECT max(age) FROM teachers)

--73. 
SELECT customer_id, first_name
FROM Customers 
WHERE customer_id IN (SELECT customer_id FROM Orders);

--74. SQL Subquery and JOIN
SELECT DISTINCT Customers.customer_id, Customers.first_name
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id
ORDER BY Customers.customer_id;

--75. SQL ANY
SELECT *
FROM Teachers
WHERE age = ANY (
  SELECT age
  FROM Students
);

--76. SQL ALL
SELECT * 
FROM Teachers
WHERE age >  ALL (
  SELECT age
  FROM Students
);

--77. ANY and ALL with Comparison Operators
SELECT * 
FROM Teachers
WHERE age < ANY (
  SELECT age
  FROM Students
);

--78. SQL CASE
SELECT id, name,
CASE
  WHEN age >= 18 THEN 'Allowed'
END AS can_vote
FROM teachers

--79. 
SELECT id, name,
CASE
  WHEN age >= 18 THEN (age - age * 10/100)
END AS can_vote
FROM teachers

--80. Multiple Cases
SELECT customer_id, first_name,
CASE
    WHEN country = 'USA' THEN 'United States of America'
    WHEN country = 'UK' THEN 'United Kingdom'
END AS country_name
FROM Customers;

--81. CASE With ELSE in SQL
SELECT customer_id, first_name,
CASE
    WHEN country = 'USA' THEN 'United States of America'
    WHEN country = 'UK' THEN 'United Kingdom'
    ELSE 'Unknown Country'
END AS country_name
FROM Customers;

--82. SQL HAVING Clause
SELECT COUNT(customer_id), country
FROM Customers
GROUP BY country
HAVING COUNT(customer_id) > 1;

--82.
SELECT id, age
FROM students
WHERE age>10; 

--83.
SELECT id, SUM(age) AS total
FROM students
GROUP BY id;

--84.
SELECT id, SUM(age) AS total
FROM students
GROUP BY id
HAVING SUM(age) < 25;

--85. SQL EXISTS
SELECT customer_id, first_name
FROM Customers
WHERE EXISTS (
  SELECT order_id
  FROM Orders
  WHERE Orders.customer_id = Customers.customer_id
);

--86. SQL JOIN
SELECT Customers.customer_id, Customers.first_name
FROM Customers
JOIN Orders
ON Customers.customer_id = Orders.customer_id;

--87. SQL JOIN and Aliases
SELECT S.[name], T.age
FROM students AS S
JOIN teachers AS T
ON S.id = T.age;

--88.
SELECT S.[name] AS cid, T.age AS name
FROM students AS S
JOIN teachers AS T
ON S.id = T.age;

--89. SQL INNER JOIN
SELECT S.[name], T.age
FROM students AS S
INNER JOIN teachers AS T
ON S.id = T.age;

--90. INNER JOIN With WHERE Clause
SELECT S.[name], T.age
FROM students AS S
INNER JOIN teachers AS T
ON S.id = T.age
WHERE S.age >= 15;

--91. SQL INNER JOIN With Three Tables
SELECT C.customer_id, C.first_name, O.product,S.name
FROM Customers AS C
INNER JOIN Orders AS O
ON C.customer_id = O.total
INNER JOIN Students AS S
ON C.customer_id = S.age

--92. SQL LEFT JOIN
SELECT S.[name], T.age
FROM students AS S
LEFT JOIN teachers AS T
ON S.id = T.age
WHERE S.age >= 15;

--93. LEFT JOIN With WHERE Clause
SELECT S.[name], T.age
FROM students AS S
LEFT JOIN teachers AS T
ON S.id = T.age
WHERE S.age >= 15;
WHERE Orders.amount >= 500;

--94. SQL LEFT JOIN With AS Alias
SELECT C.first_name, P.phone
FROM Customers1 AS C
LEFT JOIN Customers as P
ON C.first_name=P.phone;

