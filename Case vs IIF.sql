use [sql]
go

select * from college
insert into college values(5, 80, 'hareesh')

select *, case when marks >=70 then 'a1'
				when marks >=61 then 'b1' 
				when marks >=50 then 'c1'
				else 'd'
				END
from college

select *, iif(marks>=70,'A',iif(marks>=60,'B',iif(marks>=50,'C','D')))
from college