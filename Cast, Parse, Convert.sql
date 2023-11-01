/*4. Syntax
Using CAST:
CAST ( expression AS data_type )

Using CONVERT:
CONVERT ( data_type [ ( length ) ] , expression [ , style ] )

Using PARSE
PARSE ( string_value AS data_type [ USING culture ] )*/

-- casting DATE to VARCHAR in SQL Server 
SELECT CAST(GETDATE() AS VARCHAR(30)) AS Today --Today Apr 25 2017 6:32AM
-- CASTING VARCHAR to INT in Microsoft SQL Server 
SELECT CAST('1234' AS SMALLINT) AS Number --Number 1234

--Both CAST and CONVERT are used to explicitly converts an expression of different data types in SQL

-- casting DATE to VARCHAR in SQL Server 
SELECT CAST(GETDATE() AS VARCHAR(30)) AS Today --Today Apr 25 2017 6:32AM 
-- CASTING VARCHAR to INT in Microsoft SQL Server 
SELECT CAST('1234' AS SMALLINT) AS Number --Number 1234

-- converting DATE to VARCHAR in SQL Server 
SELECT CONVERT(VARCHAR(20), GETDATE(), 101) AS Today --Today 07/23/2015 
-- converting VARCHAR to INT in Microsoft SQL Server 
SELECT CONVERT(bigint, '222222') AS MagicNumber --MagicNumber 222222


