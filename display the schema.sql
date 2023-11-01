/****** Script for SelectTopNRows command from SSMS  ******/
SELECT * FROM [mssql].[dbo].Business_Data

select * from Information_schema.Columns
where table_name = '[Business_Data]'

-- Query to print the schema of a table
SELECT 
    COLUMN_NAME AS [Column Name],
    DATA_TYPE AS [Data Type],
    CHARACTER_MAXIMUM_LENGTH AS [Max Length],
    IS_NULLABLE AS [Is Nullable],
    COLUMN_DEFAULT AS [Default Value],
    COLUMNPROPERTY(OBJECT_ID(TABLE_SCHEMA + '.' + TABLE_NAME), COLUMN_NAME, 'IsIdentity') AS [Is Identity],
    COLUMNPROPERTY(OBJECT_ID(TABLE_SCHEMA + '.' + TABLE_NAME), COLUMN_NAME, 'IsComputed') AS [Is Computed],
    COLUMNPROPERTY(OBJECT_ID(TABLE_SCHEMA + '.' + TABLE_NAME), COLUMN_NAME, 'IsRowGuidCol') AS [Is RowGuidCol],
    COLUMNPROPERTY(OBJECT_ID(TABLE_SCHEMA + '.' + TABLE_NAME), COLUMN_NAME, 'IsSparse') AS [Is Sparse],
    COLUMNPROPERTY(OBJECT_ID(TABLE_SCHEMA + '.' + TABLE_NAME), COLUMN_NAME, 'IsColumnSet') AS [Is ColumnSet]
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_NAME = 'Business_Data'
ORDER BY 
    ORDINAL_POSITION;
