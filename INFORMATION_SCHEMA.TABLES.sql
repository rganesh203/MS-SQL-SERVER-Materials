CREATE TABLE Class(
    Enrollment INT PRIMARY KEY,
    Student_Name VARCHAR(20),
    Email_id VARCHAR(20),
    State VARCHAR(20) 
    );


SELECT  * FROM  SYSOBJECTS WHERE
  xtype = 'U';
GO

SELECT
  *
FROM
  INFORMATION_SCHEMA.TABLES;
GO