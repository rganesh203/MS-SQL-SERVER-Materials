CREATE TABLE JsonData (
    jsonContent NVARCHAR(MAX)
);

INSERT INTO JsonData (jsonContent)
VALUES ('
{
    "employees": [
        {
            "id": 1,
            "name": "John Doe",
            "age": 28,
            "department": "Engineering"
        },
        {
            "id": 2,
            "name": "Jane Smith",
            "age": 34,
            "department": "Marketing"
        },
        {
            "id": 3,
            "name": "Michael Johnson",
            "age": 45,
            "department": "Sales"
        }
    ]
}');

SELECT 
    employee.id,
    employee.name,
    employee.age,
    employee.department
FROM 
    JsonData
CROSS APPLY 
    OPENJSON(jsonContent, '$.employees') 
    WITH (
        id INT '$.id',
        name NVARCHAR(100) '$.name',
        age INT '$.age',
        department NVARCHAR(50) '$.department'
    ) AS employee;
