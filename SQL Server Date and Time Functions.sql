--SQL Server Date and Time Functions with Examples

/*
SQL Server SYSDATETIME, SYSDATETIMEOFFSET and SYSUTCDATETIME Functions
SQL Server High Precision Date and Time Functions have a scale of 7 and are:*/
/*
SYSDATETIME – returns the date and time of the machine the SQL Server is running on
SYSDATETIMEOFFSET – returns the date and time of the machine the SQL Server is running on plus the offset from UTC
SYSUTCDATETIME - returns the date and time of the machine the SQL Server is running on as UTC*/

-- higher precision functions 
SELECT SYSDATETIME()       AS 'DateAndTime';        -- return datetime2(7)       
SELECT SYSDATETIMEOFFSET() AS 'DateAndTime+Offset'; -- datetimeoffset(7)
SELECT SYSUTCDATETIME()    AS 'DateAndTimeInUtc';   -- returns datetime2(7)

--SQL Server T-SQL Syntax	Date Function	Result
SELECT SYSDATETIME() AS 'DateAndTime'; -- return datetime2(7)	DateAndTime	2019-03-08 10:24:34.4377944
SELECT SYSDATETIMEOFFSET() AS 'DateAndTime+Offset'; -- datetimeoffset(7)	DateAndTime+Offset	2019-03-08 10:24:34.4377944 -05:00
SELECT SYSUTCDATETIME() AS 'DateAndTimeInUtc'; -- returns datetime2(7)	DateAndTimeInUtc	2019-03-08 15:24:34.4377944
SQL Server CURRENT_TIMESTAMP, GETDATE() and GETUTCDATE() Functions

--SQL Server Lesser Precision Data and Time Functions have a scale of 3 and are:
/*
CURRENT_TIMESTAMP - returns the date and time of the machine the SQL Server is running on
GETDATE() - returns the date and time of the machine the SQL Server is running on
GETUTCDATE() - returns the date and time of the machine the SQL Server is running on as UTC
-- lesser precision functions - returns datetime*/
SELECT CURRENT_TIMESTAMP AS 'DateAndTime'; -- note: no parentheses   
SELECT GETDATE()         AS 'DateAndTime';    
SELECT GETUTCDATE()      AS 'DateAndTimeUtc'; 
SQL Server T-SQL Syntax	Date Function	Result
SELECT CURRENT_TIMESTAMP AS 'DateAndTime'; -- note: no parentheses	DateAndTime	2019-03-08 10:28:23.643
SELECT GETDATE() AS 'DateAndTime';	DateAndTime	2019-03-08 10:28:23.643
SELECT GETUTCDATE() AS 'DateAndTimeUtc';	DateAndTimeUtc	2019-03-08 15:28:23.643

/*SQL Server DATENAME Function
DATENAME – Returns a string corresponding to the datepart specified for the given date as shown in the following table
-- date and time parts - returns nvarchar */
SELECT DATENAME(YEAR, GETDATE())        AS 'Year';        
SELECT DATENAME(QUARTER, GETDATE())     AS 'Quarter';     
SELECT DATENAME(MONTH, GETDATE())       AS 'Month Name';       
SELECT DATENAME(DAYOFYEAR, GETDATE())   AS 'DayOfYear';   
SELECT DATENAME(DAY, GETDATE())         AS 'Day';         
SELECT DATENAME(WEEK, GETDATE())        AS 'Week';        
SELECT DATENAME(WEEKDAY, GETDATE())     AS 'Day of the Week';     
SELECT DATENAME(HOUR, GETDATE())        AS 'Hour';        
SELECT DATENAME(MINUTE, GETDATE())      AS 'Minute';      
SELECT DATENAME(SECOND, GETDATE())      AS 'Second';      
SELECT DATENAME(MILLISECOND, GETDATE()) AS 'MilliSecond'; 
SELECT DATENAME(MICROSECOND, GETDATE()) AS 'MicroSecond'; 
SELECT DATENAME(NANOSECOND, GETDATE())  AS 'NanoSecond';  
SELECT DATENAME(ISO_WEEK, GETDATE())    AS 'Week';        

--SQL Server T-SQL Syntax	Date Function	Result
SELECT DATENAME(YEAR, GETDATE()) AS 'Year';	Year	2019
SELECT DATENAME(QUARTER, GETDATE()) AS 'Quarter';	Quarter	1
SELECT DATENAME(MONTH, GETDATE()) AS 'Month';	Month	March
SELECT DATENAME(DAYOFYEAR, GETDATE()) AS 'DayOfYear';	DayOfYear	67
SELECT DATENAME(DAY, GETDATE()) AS 'Day';	Day	8
SELECT DATENAME(WEEK, GETDATE()) AS 'Week';	Week	10
SELECT DATENAME(WEEKDAY, GETDATE()) AS 'WeekDay';	WeekDay	Friday
SELECT DATENAME(HOUR, GETDATE()) AS 'Hour';	Hour	11
SELECT DATENAME(MINUTE, GETDATE()) AS 'Minute';	Minute	25
SELECT DATENAME(SECOND, GETDATE()) AS 'Second';	Second	44
SELECT DATENAME(MILLISECOND, GETDATE()) AS 'MilliSecond';	MilliSecond	426
SELECT DATENAME(MICROSECOND, GETDATE()) AS 'MicroSecond';	MicroSecond	426666
SELECT DATENAME(NANOSECOND, GETDATE()) AS 'NanoSecond';	NanoSecond	426666666
SELECT DATENAME(ISO_WEEK, GETDATE()) AS 'Week';	Week	10

/*SQL Server DATEPART Function
DATEPART – returns an integer corresponding to the datepart specified
-- date and time parts - returns int*/
SELECT DATEPART(YEAR, GETDATE())        AS 'Year';        
SELECT DATEPART(QUARTER, GETDATE())     AS 'Quarter';     
SELECT DATEPART(MONTH, GETDATE())       AS 'Month';       
SELECT DATEPART(DAYOFYEAR, GETDATE())   AS 'DayOfYear';   
SELECT DATEPART(DAY, GETDATE())         AS 'Day';         
SELECT DATEPART(WEEK, GETDATE())        AS 'Week';        
SELECT DATEPART(WEEKDAY, GETDATE())     AS 'WeekDay';     
SELECT DATEPART(HOUR, GETDATE())        AS 'Hour';        
SELECT DATEPART(MINUTE, GETDATE())      AS 'Minute';      
SELECT DATEPART(SECOND, GETDATE())      AS 'Second';      
SELECT DATEPART(MILLISECOND, GETDATE()) AS 'MilliSecond'; 
SELECT DATEPART(MICROSECOND, GETDATE()) AS 'MicroSecond'; 
SELECT DATEPART(NANOSECOND, GETDATE())  AS 'NanoSecond';  
SELECT DATEPART(ISO_WEEK, GETDATE())    AS 'Week';        

/*SQL Server T-SQL Syntax	Date Function	Result*/
SELECT DATEPART(YEAR, GETDATE()) AS 'Year';	Year	2019
SELECT DATEPART(QUARTER, GETDATE()) AS 'Quarter';	Quarter	1
SELECT DATEPART(MONTH, GETDATE()) AS 'Month';	Month	3
SELECT DATEPART(DAYOFYEAR, GETDATE()) AS 'DayOfYear';	DayOfYear	67
SELECT DATEPART(DAY, GETDATE()) AS 'Day';	Day	8
SELECT DATEPART(WEEK, GETDATE()) AS 'Week';	Week	10
SELECT DATEPART(WEEKDAY, GETDATE()) AS 'WeekDay';	WeekDay	6
SELECT DATEPART(HOUR, GETDATE()) AS 'Hour';	Hour	10
SELECT DATEPART(MINUTE, GETDATE()) AS 'Minute';	Minute	36
SELECT DATEPART(SECOND, GETDATE()) AS 'Second';	Second	14
SELECT DATEPART(MILLISECOND, GETDATE()) AS 'MilliSecond';	MilliSecond	43
SELECT DATEPART(MICROSECOND, GETDATE()) AS 'MicroSecond';	MicroSecond	43333
SELECT DATEPART(NANOSECOND, GETDATE()) AS 'NanoSecond';	NanoSecond	43333333
SELECT DATEPART(ISO_WEEK, GETDATE()) AS 'Week';	Week	10

/*SQL Server DAY, MONTH and YEAR Functions
DAY – returns an integer corresponding to the day specified
MONTH– returns an integer corresponding to the month specified
YEAR– returns an integer corresponding to the year specified*/
SELECT DAY(GETDATE())   AS 'Day';                            
SELECT MONTH(GETDATE()) AS 'Month';                       
SELECT YEAR(GETDATE())  AS 'Year';                       
SQL Server T-SQL Syntax	Date Function	Result
SELECT DAY(GETDATE()) AS 'Day';	DAY	8
SELECT MONTH(GETDATE()) AS 'Month';	MONTH	3
SELECT YEAR(GETDATE()) AS 'Year';	YEAR	2019

/*SQL Server DATEFROMPARTS, DATETIME2FROMPARTS, DATETIMEFROMPARTS, DATETIMEOFFSETFROMPARTS, SMALLDATETIMEFROMPARTS and  TIMEFROMPARTS Functions
DATEFROMPARTS – returns a date from the date specified
DATETIME2FROMPARTS – returns a datetime2 from part specified
DATETIMEFROMPARTS – returns a datetime from part specified
DATETIMEOFFSETFROMPARTS - returns a datetimeoffset from part specified
SMALLDATETIMEFROMPARTS - returns a smalldatetime from part specified
TIMEFROMPARTS - returns a time from part specified
-- date and time from parts*/
SELECT DATEFROMPARTS(2019,1,1)                         AS 'Date';          -- returns date
SELECT DATETIME2FROMPARTS(2019,1,1,6,0,0,0,1)          AS 'DateTime2';     -- returns datetime2
SELECT DATETIMEFROMPARTS(2019,1,1,6,0,0,0)             AS 'DateTime';      -- returns datetime
SELECT DATETIMEOFFSETFROMPARTS(2019,1,1,6,0,0,0,0,0,0) AS 'Offset';        -- returns datetimeoffset
SELECT SMALLDATETIMEFROMPARTS(2019,1,1,6,0)            AS 'SmallDateTime'; -- returns smalldatetime
SELECT TIMEFROMPARTS(6,0,0,0,0)                        AS 'Time';          -- returns time

--SQL Server T-SQL Syntax	Date Function	Result
SELECT DATEFROMPARTS(2019,1,1) AS 'Date';	Date	2019-01-01
SELECT DATETIME2FROMPARTS(2019,1,1,6,0,0,0,1) AS 'DateTime2';	DateTime2	2019-01-01 06:00:00.0
SELECT DATETIMEFROMPARTS(2019,1,1,6,0,0,0) AS 'DateTime';	DateTime	2019-01-01 06:00:00.000
SELECT DATETIMEOFFSETFROMPARTS(2019,1,1,6,0,0,0,0,0,0) AS 'Offset';	Offset	2019-01-01 06:00:00 +00:00
SELECT SMALLDATETIMEFROMPARTS(2019,1,1,6,0) AS 'SmallDateTime';	SmallDateTime	2019-01-01 06:00:00
SELECT TIMEFROMPARTS(6,0,0,0,0) AS 'Time';	Time	06:00:00

/*SQL Server DATEDIFF and DATEDIFF_BIG Functions
DATEDIFF - returns the number of date or time datepart boundaries crossed between specified dates as an int
DATEDIFF_BIG - returns the number of date or time datepart boundaries crossed between specified dates as a bigint
--Date and Time Difference*/
SELECT DATEDIFF(DAY, 2019-31-01, 2019-01-01)      AS 'DateDif'    -- returns int
SELECT DATEDIFF_BIG(DAY, 2019-31-01, 2019-01-01)  AS 'DateDifBig' -- returns bigint
SQL Server T-SQL Syntax	Date Function	Result
SELECT DATEDIFF(DAY, 2019-31-01, 2019-01-01) AS 'DateDif'	DateDif	30
SELECT DATEDIFF_BIG(DAY, 2019-31-01, 2019-01-01) AS 'DateDifBig'	DateDifBig	30

/*SQL Server DATEADD, EOMONTH, SWITCHOFFSET and TODATETIMEOFFSET Functions
DATEADD - returns datepart with added interval as a datetime
EOMONTH – returns last day of month of offset as type of start_date
SWITCHOFFSET - returns date and time offset and time zone offset
TODATETIMEOFFSET - returns date and time with time zone offset
-- modify date and time*/
SELECT DATEADD(DAY,1,GETDATE())        AS 'DatePlus1';          -- returns data type of the date argument
SELECT EOMONTH(GETDATE(),1)            AS 'LastDayOfNextMonth'; -- returns start_date argument or date
SELECT SWITCHOFFSET(GETDATE(), -6)     AS 'NowMinus6';          -- returns datetimeoffset
SELECT TODATETIMEOFFSET(GETDATE(), -2) AS 'Offset';             -- returns datetimeoffset
SQL Server T-SQL Syntax	Date Function	Result
SELECT DATEADD(DAY,1,GETDATE()) AS 'DatePlus1';	DatePlus1	2019-03-09 10:38:21.710
SELECT EOMONTH(GETDATE(),1) AS 'LastDayOfNextMonth';	LastDayOfNextMonth	2019-04-30
SELECT SWITCHOFFSET(GETDATE(), -6) AS 'NowMinus6';	NowMinus6	2019-03-08 12:40:22.540 -00:06
SELECT TODATETIMEOFFSET(GETDATE(), -2) AS 'Offset';	Offset	2019-03-08 12:46:22.540 -00:02

/*SQL Server ISDATE Function to Validate Date and Time Values
ISDATE – returns int - Returns 1 if a valid datetime type and 0 if not
-- validate date and time - returns int*/
SELECT ISDATE(GETDATE()) AS 'IsDate'; 
SELECT ISDATE(NULL) AS 'IsDate';
SQL Server T-SQL Syntax	Date Function	Result
SELECT ISDATE(GETDATE()) AS 'IsDate';	IsDate	1
SELECT ISDATE(NULL) AS 'IsDate';	IsDate	0
