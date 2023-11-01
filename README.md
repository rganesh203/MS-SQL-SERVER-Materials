# SQL
excel ---------------->franmework------------------>asp.net/PHP
frontend-------------->VB(visual basic)--------------> c/c++/Java/Python etc... (logically it is same but syntactically different)
backend--------------->SQL (Mysql/oracle/MS-sql/postgresql)------------------------------> SQL or No-SQL (logically same and syntactically also same 90%)
				nosql(DynamoDB/MongoDB/Cassandra/Dastax(Cloud))
----->sql is case insensitive 

1. create database
	a. GUI(graphical user interface)
	b. Query
2. delete database
	a. GUI(graphical user interface)
	b. Query
3. * it represent all columns
4. comments	1. single line
		2. multiple line comment
5. sql classified 
		5 sub query languages
		a. DDL (Data defintion language)
			i. create 
			ii. Drop		
			iii. Alter
			iv. Truncate
		b. DML (Data manipulation language)
			i. Insert 
			II. Update
			III. Delete
			iV. Call
			V. Explain Call
			Vi. Lock
		c. TCL (Transctinal control language)
			i. Commit
			II. savepoint
			iii. Rollback
			IV. set tranctions
			V. set constant
		d. DQL (Data Query language)
			i. select
		e. DCL (Data control language)
			i. Grant
			ii. Revoke
6. create tables 
	1. use graphically
	2. query
7. Insert data into table
	1. use graphically
	2. query
8. Contraints
	1. use graphically
	2. query
9. cascading referential integrity constraint

10. check contarints

11. file or data import 

12. Aggregate function
	1. count
	2. max
	3. min
	4. avg
	5. sum
13. clause
	1. where 
	2. having
14. Meta data: 

15. partition by 
	
16. i have e-commerce amazon
	1. stocks
		id, product, qty
		173, phones, 498
	2. purchase
		id, product, qty, date
		173, phones, 2, 04/03/2022
	3. orders
		id, product, qty, vender
		173, phones, 100, amazon
		176, laptos, 100, amazon
	4. threshold
		id, product, qty, month
		173, phones, 98,  2, 3, 4, 11
		6 am 
	exec wekend_11am


1. orders     fact -----transctonal 
2. users		master ------dimensional
3. products	----master -----dimensional 
4. stores


n= input(username)
dbo----
s="insert into"+{table}
{1
	{
	}
	{
	}
	
}

{2 	
	
json, binary file 

xml
		
-----> Trigger
-----> CTE
-----> Transctions

a. DDL				
	Create 
	Drop
	Alter
	Truncate

b. DML
	Insert
	Update
	Delete
	Lock
	Call				

c. TCL
	Commit
	Savepoint
	Rollback
	set transction
	set contraint
				
d. DQL
	select
				
e. DCL
	Grant ---> giving permission
	Revoke---> back permission from user.

---> Front end programming languages
	python, c, java, c++ etc
	logic is same syntax is different

---> Back end language 
	sql, no sql (not only sql)
	sql (structure query language)
--->logic is same and syntax is almost same (90% of all built in functions are same) 
		(mysql, postgrey sql, oracle, ms sql serevr)

---> sql case insensitive select = SELECT
---> python case sensitive select is not equal to SELECT

---> creating database two ways
	1. GUI
	2. With query

---> creating tables two ways
	1. GUI
	2. With query

---> delete table
	1. GUI
	2. With query

---> commnets are simple your compiler skip this statement
	1. single line --
	2. multiple line comment
		/* multiple 
		line comment*/

---> inserting data into tables
	1. GUI
	2. With query

---> * symbol display all columns 
---> as is a function for temperary name
---> sum, avg, count, max, min (Aggregate Function)
---> where clause with <, >, <=, >=, =, !=.
---> delete it remove specific records using where
---> drop is delete entire table
---> Truncate entire data not to table 
---> alter to create new column existed table
---> update insert into new column.
---> order by descending or ascending 
---> group by agrregate function based on data group of records
---> having clause is for condition with aggregate and group by
---> top to display specific records 
---> distict unique records 
---> ROW_NUMBER() 
---> RANK() 
---> DENSE_RANK()

02/02/2023
---> wildcards with like	1. % any charcter (from one to many)
					2. _ any charascter single length
					3. -  find
					4.[]
04/02/2023
 ---> primary key, foreign key
1. Gui
2. Query

---> default constraints
---> identity contraints
---> check contraints
---> union vs union all
---> intersect
---> percent
---> in
---> on
---> set 
---> when
---> over
---> partiton by
---> desc
---> delete vs truncate
---> unique key constraint
---> deleting null values
---> partition by 
---> joins(sub query)		1. full join
					2. self join
					3. left 
					4. ight 
					5. cross join
---> schemas
---> except
---> is null
---> datetime
---> String Functions
---> Convert vs Cast
---> Datatypes
---> Tranction
---> UDF functions
---> Stored_procedure
---> views
---> variables
---> schema
---> e-r diagram
---> cursor > very slow
---> case vs iif
---> scope
---> pivot
---> Sys.tables
---> set_help
---> exec


Advanced Topic
--->	CTE common table exprssion		
			
