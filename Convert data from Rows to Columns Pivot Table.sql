/* Syntax:
SELECT (ColumnNames)  
FROM (TableName)  
PIVOT
(  
  AggregateFunction(ColumnToBeAggregated)
  FOR PivotColumn IN (PivotColumnValues)
) AS (Alias);                                   
*/

use interview
go

select * from emp;

select id, [name], [gender], [salary] 
from
(select id, name as ename, value
from emp) as source_table
pivot
(max(value)
for 
ename in ([name], [gender], [salary]))
as pivot_table;