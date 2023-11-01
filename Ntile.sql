use [Interview]

/*Syntax :

NTILE(number_expression) OVER (
   [PARTITION BY partition_expression ]
   ORDER BY sort_expression [ASC | DESC]
)*/

CREATE TABLE geeks_demo (
ID INT NOT NULL );
INSERT INTO geeks_demo(ID)
VALUES(1), (2), (3), (4), (5), (6), (7), (8), (9), (10);

SELECT ID,
NTILE (5) OVER (
ORDER BY ID
) Group_number
FROM geeks_demo; 