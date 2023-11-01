use [sql]

select * from 
( select * from college)
t
pivot 
(
avg(marks) for name in (ganesh, ram))
p

select * from sub