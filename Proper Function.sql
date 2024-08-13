CREATE FUNCTION dbo.PROPERCASE (@input VARCHAR(MAX))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @output VARCHAR(MAX) = ''
    DECLARE @i INT = 1
    DECLARE @len INT = LEN(@input)
    DECLARE @char CHAR(1)
    DECLARE @prevChar CHAR(1) = ' '

    WHILE @i <= @len
    BEGIN
        SET @char = SUBSTRING(@input, @i, 1)
        
        IF @prevChar = ' ' AND @char LIKE '[a-z]'
            SET @output = @output + UPPER(@char)
        ELSE
            SET @output = @output + LOWER(@char)
        
        SET @prevChar = @char
        SET @i = @i + 1
    END

    RETURN @output
END


SELECT dbo.PROPERCASE('hello world') AS ProperCaseResult;
-- Output: Hello World
