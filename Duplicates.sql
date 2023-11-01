use interview
CREATE TABLE duplicate (
    id INT IDENTITY(1, 1), 
    a  INT, 
    b  INT, 
    PRIMARY KEY(id)
);

INSERT INTO
    duplicate(a,b)
VALUES
    (1,1),
    (1,2),
    (1,3),
    (2,1),
    (1,2),
    (1,3),
    (2,1),
    (2,2);

SELECT 
    a, 
    b, 
    COUNT(*) occurrences
FROM duplicate
GROUP BY
    a, 
    b
HAVING 
    COUNT(*) > 1;


WITH cte AS (
    SELECT 
        a, 
        b, 
        ROW_NUMBER() OVER (
            PARTITION BY a,b
            ORDER BY a,b) rownum
    FROM 
        duplicate
) 
SELECT 
  * 
FROM 
    cte 
WHERE 
    rownum > 1;