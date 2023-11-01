use [sample]
go
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
CREATE TABLE Orders (
  order_id INT,
  item VARCHAR(40),
  amount INT,
  customer_id INT REFERENCES Customers(id),
  CONSTRAINT OrdersPK PRIMARY KEY (order_id)
);

--Inserting Records in Table with Foreign Key
-- Inserting record in table with no foreign key first
INSERT INTO Customers
VALUES
(1, 'John', 'Doe', 31, 'USA'),
(2, 'Robert', 'Luna', 22, 'USA');

-- Insertion Success
INSERT INTO Orders
VALUES
(1, 'Keyboard', 400, 2),
(2, 'Mouse', 300, 2),
(3, 'Monitor', 12000, 1);

-- Insertion Error because customer with id of 7 does not exist
INSERT INTO Orders
VALUES (4, 'Keyboard', 400, 7);

--Foreign Key with Alter Table
CREATE TABLE Customers (
  id INT,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  age INT,
  country VARCHAR(10),
  CONSTRAINT CustomersPK PRIMARY KEY (id)
);

CREATE TABLE Orders (
  order_id INT,
  item VARCHAR(40),
  amount INT,
  customer_id INT,
  CONSTRAINT OrdersPK PRIMARY KEY (order_id)
);

-- Adding foreign key to the customer_id field
-- The foreign key references to the id field of the Customers table
ALTER TABLE Orders
ADD FOREIGN KEY (customer_id) REFERENCES Customers(id);

--Multiple Foreign Key in a Table
-- This table doesn't have a foreign key
CREATE TABLE Users (
  id INT,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  age INT,
  country VARCHAR(10),
  CONSTRAINT CustomersPK PRIMARY KEY (id)
);

-- Adding foreign key to the buyer and seller field
-- The foreign key references to the id field of the Users table
CREATE TABLE Transactions (
  transaction_id INT,
  amount INT,
  seller INT REFERENCES Users(id),
  buyer INT REFERENCES Users(id),
  CONSTRAINT TransactionsPK PRIMARY KEY (transaction_id)
);

--SQL CHECK Constraint
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  amount INT CHECK (amount > 0)
);

-- amount equal to 100
-- record is inserted
INSERT INTO Orders(amount) VALUES(100);

-- amount equal to -5
-- results in an error
INSERT INTO Orders(amount) VALUES(-5);

--Create Named CHECK Constraint
-- creates a named constraint named amount CK
-- the constraint makes sure that amount is greater than 0
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  amount INT,
  CONSTRAINT amountCK CHECK (amount > 0)
);

--CHECK Constraint in Existing Table
-- Adding CHECK constraint without name

ALTER TABLE Orders
ADD CHECK (amount > 0);

-- Adding CHECK constraint named amountCK

ALTER TABLE Orders
ADD CONSTRAINT amountCK CHECK (amount > 0);

--Remove CHECK Constraint
-- removing CHECK constraint named amountCK
ALTER TABLE Orders
DROP CONSTRAINT amountCK;

--SQL DEFAULT Constraint
CREATE TABLE Colleges (
  college_id INT PRIMARY KEY,
  college_code VARCHAR(20),
  college_country VARCHAR(20) DEFAULT 'US'
);

-- Inserts 'US' to the college_country column
INSERT INTO Colleges (college_id, college_code)
VALUES (1, 'ARP76');

-- Inserts 'UAE' to the college_country column
INSERT INTO Colleges (college_id, college_code, college_country)
VALUES (2, 'JWS89', 'UAE');

--DEFAULT Constraint With Alter Table
ALTER TABLE Colleges
ADD CONSTRAINT country_default
DEFAULT 'US' FOR college_country;

--Remove Default Constraint
ALTER TABLE Colleges
ALTER COLUMN college_country DROP DEFAULT;

--SQL CREATE INDEX
-- create table
CREATE TABLE Colleges (
  college_id INT PRIMARY KEY,
  college_code VARCHAR(20) NOT NULL,
  college_name VARCHAR(50)
);

-- create index
CREATE INDEX college_index
ON Colleges(college_code);

--CREATE UNIQUE INDEX for Unique Values
-- create unique index
CREATE UNIQUE INDEX college_index
ON Colleges(college_code);

--Remove Index From Tables
DROP INDEX Colleges.college_index;
