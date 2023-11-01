/*
Joins: retrieve muliple tables
	1. EQUI JOIN: It creates a JOIN for equality or matching column(s) 
	values of the relative tables. EQUI JOIN also create JOIN by using JOIN 
	with ON and then providing the names of the columns with their relative tables to 
	check equality using equal sign (=).

	2. NON EQUI JOIN: it performs a JOIN using comparison operator other than equal(=) 
	sign like >, <, >=, <= with conditions.
*/
CREATE TABLE customer (
cust_id int NOT NULL,
cust_name varchar(100) NOT NULL,
cust_address text NOT NULL,
cust_aadhaar_number varchar(50) DEFAULT NULL,
cust_pan_number varchar(50) NOT NULL
) 

ALTER TABLE customer ADD PRIMARY KEY (cust_id);

select * from customer

insert into customer values (100001, 'Sunil Kumar',	'Noida', '372464389211', 'ADSFS3456K')
insert into customer values (100002, 'Ankit Gupta',	'Gr Noida', '442289458453',	'CGHAD7583L')
insert into customer values (100003, 'Suresh Yadav', 'New Delhi', '878453444144', 'NMKRT2278O')
insert into customer values (100004, 'Nilam Singh',	'Lucknow',	'227643441123',	'HFJFD3876U')
insert into customer values (100005, 'Amal Rawat',	'Ghaziabad', '932571156735', 'CBMVA9734A')
insert into customer values (100006, 'Harsh Saxena', 'Kanpur',	'1453534363319', 'TRYUC2568H')

/*1. Primary Key
Primary Key is a field that can be used to identify all the tuples uniquely in the database. 
Only one of the columns can be declared as a primary key. A Primary Key can not have a NULL value.

Example: In the above given relational table, “cust_id” is the Primary Key as it can identify 
all the row uniquely from the table.

2. Unique Key
Unique Key can be a field or set of fields that can be used to uniquely identify the tuple 
from the database. One or more fields can be declared as a unique Key. The unique Key column 
can also hold the NULL value. Use of Unique Key improves the performance of data retrieval. 
It makes searching for records from the database much more faster & efficient.

Example: In the above given relational table, “cust_aadhaar_number”, “cust_pan_number” 
are the Unique Key as it can allow one value as a NULL in the column

3. Candidate Key
Candidate Key can be a column or group of columns that can qualify for the Unique Key. 
Every table has at least one Candidate Key. A table may have one or more Candidate Key. 
Each Candidate Key can work as a Primary Key if required in certain scenarios.

Example: In the above given relational table, “cust_id”, “cust_aadhaar_number”, “cust_pan_number” 
are the Candidate Key as it can identify all the row uniquely from the table. 
These columns also qualify the criteria to be a Primary Key.

 4. Alternate Key
Alternate Key is that Key which can be used as a Primary Key if required. Alternate Key also 
qualifies to be a Primary Key but for the time being, It is not the Primary Key.

Example: In the above given relational table, “cust_aadhaar_number”, “cust_pan_number” 
are the Alternate Key as both of the columns can be a Primary Key but not yet selected for 
the Primary Key.

5. Composite Key
Composite Key is also known as Compound Key / Concatenated Key. Composite Key refers to a 
group of two or more columns that can be used to identify a tuple from the table uniquely. 
A group of the column in combination with each other can identify a row uniquely but a single column of that group doesn’t promise to identify the row uniquely.

Example: In the above given relational table i.e. Order Table, “cust_id”, “order_month_year” 
group of these columns used in combination to identify the tuple uniquely in the Order Table. 
The individual column of this table is not able to identify the tuple uniquely from the Order table.

6. Super Key
Super Key is a combination of columns, each column of the table remains dependent on it. 
Super Key may have some more columns in the group which may or may not be necessary to identify 
the tuple uniquely from the table. Candidate Key is the subset of the Super Key. 
Candidate Key is also known as minimal Super Key.

Example: In the above given relational table, Primary Key, Candidate Key & Unique Key is the Super Key. 
As a single column of Customer Table i.e ‘cust_id’ is sufficient to identify the tuples uniquely from 
the table. Any set of the column which contains ‘cust_aadhaar_number’, ‘cust_pan_number’ is a Super Key.

7. Foreign Key:
A foreign key is a column which is known as Primary Key in the other table i.e. A Primary Key in a 
table can be referred to as a Foreign Key in another table. Foreign Key may have duplicate & NULL 
values if it is defined to accept NULL values.

Example: In the above given relational table, ‘cust_id’ is Primary Key in the Customer table but 
‘cust_id’ in the Order table known as a ‘Foreign Key’. Foreign Key in a table always becomes the 
Primary Key on the other table

8. surrogate key:
A surrogate key on a table is a column with a unique identifier for each row. The key is not generated 
from the table data. Data modelers like to create surrogate keys on their tables when they design data 
warehouse models. You can use the IDENTITY property to achieve this goal simply and effectively without 
affecting load performance.*/

