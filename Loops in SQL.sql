create function dbo.proper(@a nvarchar(20))
Returns  nvarchar(20)
as
begin
	declare @a navarchar(20)='';


	---loops
	--1. while
DECLARE @c INT = 1;
WHILE @c <= 5
BEGIN 
    PRINT 'count value' + CAST(@c AS VARCHAR);
    SET @c = @c + 1;
END;


	--2. break and continue
		DECLARE @c INT = 1;
WHILE @c <= 10
BEGIN
 if @c=6
 begin 
    PRINT 'loop is terminated at 6';
	break;
end
if @c%2=0
begin 
set @c=@c+1
continue;
end
print 'counter value '+cast(@c as varchar);
set @c=@c+1
end;


DECLARE @c INT = 1;
WHILE @c <= 5
BEGIN 
    PRINT 'count value' + CAST(@c AS VARCHAR);
    SET @c = @c + 1;
END;

--cursor loop

-- Step 1: Declare the cursor
DECLARE @EmployeeID INT, @EmployeeName NVARCHAR(100);

DECLARE employee_cursor CURSOR FOR
SELECT ID, gmail
FROM [dbo].[custumers];

-- Step 2: Open the cursor
OPEN employee_cursor;

-- Step 3: Fetch the first row from the cursor
FETCH NEXT FROM employee_cursor INTO @EmployeeID, @EmployeeName;

-- Step 4: Loop through the result set
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Process each row (e.g., Print the EmployeeName)
    PRINT 'EmployeeID: ' + CAST(@EmployeeID AS NVARCHAR) + ', gmail: ' + @EmployeeName;
    
    -- Fetch the next row
    FETCH NEXT FROM employee_cursor INTO @EmployeeID, @EmployeeName;
END;

-- Step 5: Close the cursor
CLOSE employee_cursor;

-- Step 6: Deallocate the cursor
DEALLOCATE employee_cursor;
