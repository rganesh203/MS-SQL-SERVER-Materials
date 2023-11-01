CREATE TABLE DETAILS
( SN INT IDENTITY(1,1),
 EMPNAME VARCHAR(25),
 DEPT VARCHAR(20),
 CONTACTNO BIGINT NOT NULL,
 CITY VARCHAR(15)
 );

INSERT INTO DETAILS VALUES ('VISHAL','SALES',9193458625,'GAZIABAD'),
('VIPIN','MANAGER',7352158944,'BAREILLY'),
('ROHIT','IT',7830246946,'KANPUR'),
('RAHUL','MARKETING',9635688441,'MEERUT'),
('SANJAY','SALES',9149335694,'MORADABAD'),
('VIPIN','MANAGER',7352158944,'BAREILLY'),
('VISHAL','SALES',9193458625,'GAZIABAD'),
('AMAN','IT',78359941265,'RAMPUR');
drop table DETAILS
select * from DETAILS;

--Method-I

DELETE FROM DETAILS WHERE SN NOT IN (
SELECT MAX(SN) 
FROM DETAILS 
GROUP BY EMPNAME,DEPT,CONTACTNO,CITY)

--Method-II
DELETE FROM DETAILS WHERE SN NOT IN (
SELECT MIN(SN)
FROM DETAILS
GROUP BY EMPNAME,DEPT,CONTACTNO,CITY);


CREATE TABLE contacts(
    contact_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name NVARCHAR(100) NOT NULL,
    last_name NVARCHAR(100) NOT NULL,
    email NVARCHAR(255) NOT NULL,
);

INSERT INTO contacts VALUES
    ('Syed','Abbas','syed.abbas@example.com'),
    ('Catherine','Abel','catherine.abel@example.com'),
    ('Kim','Abercrombie','kim.abercrombie@example.com'),
    ('Kim','Abercrombie','kim.abercrombie@example.com'),
    ('Kim','Abercrombie','kim.abercrombie@example.com'),
    ('Hazem','Abolrous','hazem.abolrous@example.com'),
    ('Hazem','Abolrous','hazem.abolrous@example.com'),
    ('Humberto','Acevedo','humberto.acevedo@example.com'),
    ('Humberto','Acevedo','humberto.acevedo@example.com'),
    ('Pilar','Ackerman','pilar.ackerman@example.com');

SELECT * FROM contacts;
--Duplicate rows delete using with CTE
WITH cte AS (
    SELECT 
        contact_id, 
        first_name, 
        last_name, 
        email, 
        ROW_NUMBER() OVER (
            PARTITION BY 
                first_name, 
                last_name, 
                email
            ORDER BY 
                first_name, 
                last_name, 
                email
        ) row_num
     FROM 
        contacts
)
DELETE FROM cte
WHERE row_num > 1;

SELECT * FROM contacts
ORDER BY first_name, 
         last_name, 
         email;

DROP TABLE contacts
