CREATE TABLE SampleData (
    Id INT PRIMARY KEY,
    Value INT
);

INSERT INTO SampleData (Id, Value)
VALUES
    (1, 10),
    (2, 20),
    (3, 10),
    (4, 30),
    (5, 10),
    (6, 20),
    (7, 30),
    (8, 30);


	CREATE FUNCTION dbo.GetMode()
RETURNS INT
AS
BEGIN
    DECLARE @Mode INT;

    ;WITH ModeCTE AS (
        SELECT 
            Value,
            COUNT(*) AS Frequency
        FROM 
            SampleData
        GROUP BY 
            Value
    )
    SELECT TOP 1 
        @Mode = Value
    FROM 
        ModeCTE
    ORDER BY 
        Frequency DESC;

    RETURN @Mode;
END;

select * from SampleData;

SELECT dbo.GetMode() AS Mode;
