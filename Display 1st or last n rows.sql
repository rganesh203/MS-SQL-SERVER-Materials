select * from [dbo].[Employee_4]

SELECT id, name, phone
FROM
(
    SELECT ROW_NUMBER() OVER (PARTITION BY ID ORDER BY Date_of_joining DESC) AS OrderedDate,*
    FROM [dbo].[Employee_4]
) as ordlist

WHERE ordlist.ID = 5
AND ordlist.OrderedDate <= 5

select * from [dbo].[Employee_4]
 where id in (select top 5 ID from [dbo].[Employee_4])
 order by ID desc;