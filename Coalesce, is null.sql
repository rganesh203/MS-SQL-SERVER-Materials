use interview
go

select * from [dbo].[case_isnull_coalesce]

ALTER TABLE [dbo].[case_isnull_coalesce] ADD l_name varchar(255)

/*The ISNULL() function contains only two parameters. The COALESCE() function contains multiple 
parameters. If we use more than two parameters with the ISNULL function then we must use nested 
ISNULL functions.*/

select isnull(null, 'ganesh') as L_name from [dbo].[case_isnull_coalesce]

select coalesce(null, 'jathin') as L_name from  [dbo].[case_isnull_coalesce]

SELECT
CASE
    WHEN l_name is null THEN 'Ganesh'
    ELSE 'Jathin'
END AS L_name
FROM [dbo].[case_isnull_coalesce];