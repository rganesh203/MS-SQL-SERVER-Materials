/*set vs declare in sql

In SQL Server, both SET and DECLARE are used to define and assign values to variables, but they serve different purposes and have some key differences. Here's a breakdown:

1. DECLARE
DECLARE is used to initialize a variable.
It allocates space for the variable and assigns it a data type.
If you don't provide an initial value, the variable is set to NULL by default.
Example:
*/
DECLARE @myVariable INT;       -- Declaring a variable of type INT
DECLARE @name NVARCHAR(50);    -- Declaring a variable of type NVARCHAR

-- Variables are NULL by default unless initialized
DECLARE @initializedVar INT = 10;  -- Declaring and initializing a variable
/*2. SET
SET is used to assign a value to a previously declared variable.
It can be used to assign values one variable at a time.
It is standard SQL and is usually preferred for single variable assignments.
Example:

*/
SET @myVariable = 100;         -- Setting a value to a declared variable
SET @name = 'John Doe';        -- Setting a string value to a variable
/*Key Differences
Aspect	SET	DECLARE
Purpose	Assign a value to a variable	Initialize and declare a variable
Scope	Only used after DECLARE	Used to define a variable initially
Multiple Assignments	Cannot assign multiple variables in one statement	Can initialize multiple variables at once
Initialization	Cannot initialize a variable	Can initialize a variable directly when declaring
Standard SQL	Yes	No
Examples
Initialization with DECLARE:
*/

-- Declare multiple variables
DECLARE @x INT = 10, @y INT = 20;
--Assigning values with SET:


-- Assign values to variables after declaration
DECLARE @a INT;
DECLARE @b INT;

SET @a = 5;
SET @b = 15;
/*
When to Use Each
Use DECLARE to initialize a variable.
Use SET to assign or change the value of a variable after it has been declared.
If you need to assign values to multiple variables at once, consider using a SELECT statement instead of SET (which is single-value only).
Example Using SELECT for Multiple Assignments:
*/

DECLARE @var1 INT, @var2 INT;
SELECT @var1 = 1, @var2 = 2;  -- Assign multiple variables in a single line
--Let me know if you have more questions or need more examples!