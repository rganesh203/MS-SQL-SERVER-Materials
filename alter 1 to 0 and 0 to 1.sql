use interview 
select substring('virat kohli',7,8) 

create table alt
(id int)

insert into alt values (1),(0),(1),(0),(1),(0)

select * from alt

select *, 
CASE
    WHEN id = 0 THEN 1 else 0 end
FROM alt;