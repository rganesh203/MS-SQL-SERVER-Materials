use Ganesh
go
create table customers (
customer_id int,
first_name varchar(10)
)

insert into customers values (1, 'John')
insert into customers values (2, 'Robert')
insert into customers values (3, 'David')
insert into customers values (4, 'john')
insert into customers values (5, 'betty')

create table orders (
order_id int,
amount int,
customer int
)
drop table orders

insert into orders values (1, 200, 10)
insert into orders values (2, 500, 3)
insert into orders values (3, 300, 6)
insert into orders values (4, 800, 5)
insert into orders values (5, 150, 8)

select* from customers
select * from orders

--1. SQL LEFT JOIN
SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer;

--2. LEFT JOIN With WHERE Clause
SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer
WHERE Orders.amount >= 500;

--3. SQL LEFT JOIN With AS Alias
SELECT C.customer_id, o.customer
FROM customers AS C
LEFT JOIN orders AS o
ON C.customer_id= o.customer;

--4. SQL RIGHT JOIN
SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer;

--5. RIGHT JOIN With WHERE Clause
SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer
WHERE Orders.amount >= 500;

--6. SQL RIGHT JOIN With AS Alias
SELECT C.customer_id, o.customer
FROM customers AS C
RIGHT JOIN orders AS o
ON C.customer_id= o.customer;

--7. SQL FULL OUTER JOIN
SELECT customer_id, first_name
FROM customers
FULL OUTER JOIN orders
ON customers.customer_id=orders.amount

--8. FULL OUTER JOIN With WHERE Clause
SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
FULL JOIN Orders
ON Customers.customer_id = Orders.customer
WHERE Orders.amount >= 500;

--9. 
SELECT C.customer_id, o.customer
FROM customers AS C
FULL JOIN orders AS o
ON C.customer_id= o.customer;

--10. SQL CREATE DATABASE Statement
CREATE DATABASE my

--11. Concat
SELECT CONCAT(customer_id,'@', first_name) AS full_name
FROM Customers;

--12.SQL Constraints
-- NOT NULL Constraint
CREATE TABLE Colleges (
  college_id INT NOT NULL,
  college_code VARCHAR(20) NOT NULL,
  college_name VARCHAR(50)
);

--UNIQUE Constraint
CREATE TABLE Engg_college(
  college_id INT NOT NULL UNIQUE,
  college_code VARCHAR(20) UNIQUE,
  college_name VARCHAR(50)
);

-- PRIMARY KEY Constraint
CREATE TABLE Colleges1(
  college_id INT PRIMARY KEY,
  college_code VARCHAR(20) NOT NULL,
  college_name VARCHAR(50)
);

--FOREIGN KEY Constraint
CREATE TABLE sales(
    OrderID int NOT NULL PRIMARY KEY,
    OrderNumber int NOT NULL,
    PersonID int FOREIGN KEY REFERENCES College1(collage_id)
);

--CHECK Constraint
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  amount int CHECK (amount >= 100)
);

--DEFAULT Constraint
CREATE TABLE College (
  college_id INT PRIMARY KEY,
  college_code VARCHAR(20),
  college_country VARCHAR(20) DEFAULT 'US'
);

--CREATE INDEX Constraint
CREATE TABLE Colleges (
  college_id INT PRIMARY KEY,
  college_code VARCHAR(20) NOT NULL,
  college_name VARCHAR(50)
);

-- create index
CREATE INDEX college_index
ON Colleges(college_code);

--SQL NOT NULL Constraint
CREATE TABLE Colleges (
  college_id INT NOT NULL,
  college_code VARCHAR(20),
  college_name VARCHAR(50)
);

--Remove NOT NULL Constraint
ALTER TABLE Customers
ALTER COLUMN age INT;

--NOT NULL Constraint With Alter Table
ALTER TABLE Customers
ALTER COLUMN age INT NOT NULL;

--SQL UNIQUE Constraint
CREATE TABLE College1(
  college_id INT NOT NULL UNIQUE,
  college_code VARCHAR(20) UNIQUE,
  college_name VARCHAR(50)
);

-- UNIQUE Vs DISTINCT
SELECT DISTINCT country
FROM Customers;

-- Count UNIQUE Rows
SELECT COUNT(DISTINCT country)
FROM Customers;

--UNIQUE Constraint With Alter Table
--For single column

ALTER TABLE Colleges
ADD UNIQUE (college_id);

--For multiple column

ALTER TABLE Colleges
ADD UNIQUE UniqueCollege (college_id, college_code);

--Error When Inserting Duplicate Values
CREATE TABLE Colleges (
  college_id INT NOT NULL UNIQUE,
  college_code VARCHAR(20) UNIQUE,
  college_name VARCHAR(50)
);

-- Inserting values to the Colleges table
INSERT INTO Colleges(college_id, college_code, college_name)
VALUES (1, "ARD12", "Star Public School"), (2, "ARD12", "Galaxy School");

--CREATE UNIQUE INDEX for Unique Values
-- create unique index
CREATE UNIQUE INDEX college_index
ON Colleges(college_code);

--SQL PRIMARY KEY
CREATE TABLE College (
  college_id INT,
  college_code VARCHAR(20) NOT NULL,
  college_name VARCHAR(50),
  CONSTRAINT CollegePK PRIMARY KEY (college_id)
);

--Primary Key Error
/*f we try to insert null or duplicate values in the college_id column—in the above 
table—we will get an error*/
-- Insertion Success
INSERT INTO Colleges(college_id, college_code, college_name)
VALUES (1, "ARD12", "Star Public School");

-- UNIQUE Constraint Error
-- The value of college_id is not unique
INSERT INTO Colleges(college_id, college_code, college_name)
VALUES (1, "ARD12", "Star Public School");

--Primary Key With Multiple Columns
CREATE TABLE Colleges (
  college_id INT,
  college_code VARCHAR(20),
  college_name VARCHAR(50),
  CONSTRAINT CollegePK PRIMARY KEY (college_id, college_code)
);

-- Insertion Success
INSERT INTO Colleges(college_id, college_code, college_name)
VALUES (1, "ARD12", "Star Public School");

-- Insertion Success
INSERT INTO Colleges(college_id, college_code, college_name)
VALUES (1, "ARD13", "Star Public School");

-- Insertion Success
INSERT INTO Colleges(college_id, college_code, college_name)
VALUES (2, "ARD12", "Star Public School");

-- UNIQUE Constraint Error
-- A row already has 1 as college_id and "ARD12" as college_code
INSERT INTO Colleges(college_id, college_code, college_name)
VALUES (1, "ARD12", "Star Public School");

--Primary Key Constraint With Alter Table

--For single column
ALTER TABLE Colleges
ADD PRIMARY KEY (college_id);

--For multiple column

ALTER TABLE Colleges
ADD CONSTRAINT CollegePK PRIMARY KEY (college_id, college_code);

--Auto Increment Primary Key
-- using IDENTITY(x, y) to auto increment the value
-- x -> start value, y -> steps to increase
CREATE TABLE Colleges (
  college_id INT IDENTITY(1,1),
  college_code VARCHAR(20) NOT NULL,
  college_name VARCHAR(50),
  CONSTRAINT CollegePK PRIMARY KEY (college_id)
);

-- inserting record without college_id
INSERT INTO Colleges(college_code, college_name)
VALUES ("ARD13", "Star Public School");

--Remove Primary Key Constraint
--We can remove the PRIMARY KEY constraint in a table using the DROP clause. For example,

ALTER TABLE Colleges
DROP CONSTRAINT CollegePK;

--SQL FOREIGN KEY
--Creating FOREIGN Key
-- This table doesn't have a foreign key
CREATE TABLE Customers (
  id INT,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  age INT,
  country VARCHAR(10),
  CONSTRAINT CustomersPK PRIMARY KEY (id)
);

-- Adding foreign key to the customer_id field
-- The foreign key references to the id field of the Customers table
-- This table doesn't have a foreign key
CREATE TABLE Customers (
  id INT,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  age INT,
  country VARCHAR(10),
  CONSTRAINT CustomersPK PRIMARY KEY (id)
);

-- Adding foreign key to the customer_id field
-- The foreign key references to the id field of the Customers table
-- This table doesn't have a foreign key
CREATE TABLE Customers (
  id INT,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  age INT,
  country VARCHAR(10),
  CONSTRAINT CustomersPK PRIMARY KEY (id)
);

-- Adding foreign key to the customer_id field
-- The foreign key references to the id field of the Customers table
-- This table doesn't have a foreign key
CREATE TABLE Customers (
  id INT,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  age INT,
  country VARCHAR(10),
  CONSTRAINT CustomersPK PRIMARY KEY (id)
);

-- Adding foreign key to the customer_id field
-- The foreign key references to the id field of the Customers table
-- This table doesn't have a foreign key
CREATE TABLE Customers (
  id INT,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  age INT,
  country VARCHAR(10),
  CONSTRAINT CustomersPK PRIMARY KEY (id)
);

-- Adding foreign key to the customer_id field
-- The foreign key references to the id field of the Customers table
CREATE TABLE Orders (
  order_id INT,
  item VARCHAR(40),
  amount INT,
  customer_id INT REFERENCES Customers(id),
  CONSTRAINT OrdersPK PRIMARY KEY (order_id)
);