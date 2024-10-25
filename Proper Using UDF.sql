SELECT 
    '"' + UPPER(LEFT(REPLACE('hello world', '-', ''), 1)) + 
    LOWER(SUBSTRING(REPLACE('hello world', '-', ''), 2, LEN(REPLACE('hello world', '-', '')))) + 
    '"'


CREATE FUNCTION dbo.FormatString (@inputString NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
AS
BEGIN
    DECLARE @cleanString NVARCHAR(MAX);

    -- Remove non-alphabetic characters using a WHILE loop
    SET @cleanString = '';
    DECLARE @index INT = 1;
    DECLARE @currentChar CHAR(1);

    WHILE @index <= LEN(@inputString)
    BEGIN
        SET @currentChar = SUBSTRING(@inputString, @index, 1);

        -- Allow only alphabetic characters and spaces
        IF @currentChar LIKE '[A-Za-z ]'
        BEGIN
            SET @cleanString = @cleanString + @currentChar;
        END

        SET @index = @index + 1;
    END

    -- Capitalize the first letter of each word
    SET @cleanString = LTRIM(RTRIM(@cleanString));
    SET @cleanString = LOWER(@cleanString);
    SET @cleanString = STUFF(LOWER(@cleanString), 1, 1, UPPER(SUBSTRING(@cleanString, 1, 1)));

    DECLARE @position INT = CHARINDEX(' ', @cleanString);
    
    WHILE @position > 0
    BEGIN
        IF @position + 1 <= LEN(@cleanString)
        BEGIN
            SET @cleanString = STUFF(@cleanString, @position + 1, 1, UPPER(SUBSTRING(@cleanString, @position + 1, 1)));
        END
        SET @position = CHARINDEX(' ', @cleanString, @position + 1);
    END

    RETURN @cleanString;
END
GO

select dbo.FormatString ('hello world')