select * from tb

select id, [name], [gender], [salary]
from 
(
select id, [name] as ename, [value]
from tb ) as source_table
pivot
(max(value)
for 
ename in ([name], [gender], [salary]
)
)
as pivot_table
