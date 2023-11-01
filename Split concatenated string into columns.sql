select * from conc;

select value from string_split('radha,ganesh',',')

select id, value,
ROW_NUMBER() over(partition by id order by id) as rownum
from conc
cross apply 
string_split(name,',')

with name_cte as
(select id, value,
ROW_NUMBER() over(partition by id order by id) as rownum
from conc
cross apply 
string_split(name,',')
)
select id,
[1] as last_name,[2] as first_name from name_cte
pivot
(max(value)
for rownum in ([1],[2])) as pvt
