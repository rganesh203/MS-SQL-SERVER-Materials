CREATE FUNCTION dbo.CapitalizeWords (@inputString NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
AS
BEGIN
    DECLARE @result NVARCHAR(MAX) = ''
    DECLARE @word NVARCHAR(255)
    DECLARE @delimiter CHAR(1) = ' '
    DECLARE @startIndex INT = 1
    DECLARE @spaceIndex INT

    -- Loop through each word in the input string
    WHILE @startIndex <= LEN(@inputString)
    BEGIN
        -- Find the position of the next space
        SET @spaceIndex = CHARINDEX(@delimiter, @inputString + @delimiter, @startIndex)--int

        -- Extract the word
        SET @word = SUBSTRING(@inputString, @startIndex, @spaceIndex - @startIndex)--nvarchar

        -- Capitalize the first letter of the word and append to the result
        SET @result = @result + UPPER(LEFT(@word, 1)) + LOWER(SUBSTRING(@word, 2, LEN(@word) - 1)) + @delimiter

        -- Move to the next word
        SET @startIndex = @spaceIndex + 1
    END

    -- Remove the trailing space
    RETURN RTRIM(@result)
END

SELECT dbo.CapitalizeWords('hello world') AS CapitalizedString;


1. big data format
	1. parquet
	2. avro.
	3. orc

2. table foramt
	1. delta
	2. hudi
	3. apcahe iceberg
	4. SQL RDBMS

3. file format
	1. json
	2. xml
	3. csv
	4. excel
	5. tsv
	6. txt


	

