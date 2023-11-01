CREATE TABLE YMD (
ID int NOT NULL IDENTITY(1,1),
birthday date);
GO

INSERT INTO ymd VALUES ('2019-01-01'),
('2020-02-01'),
('2020-03-01'),
('2020-04-01'),
('2020-05-01'),
('2020-06-01'),
('2020-07-01'),
('2020-08-01')

select *, getdate() as currentdate, datediff(yyyy, birthday, GETDATE()) 
as age
from YMD

select *,
CASE
    WHEN dateadd(year, datediff(yyyy, birthday, GETDATE()), birthday)>GETDATE()
	then datediff(yyyy, birthday, GETDATE())-1
	ELSE 
	datediff(yy, birthday, GETDATE()) 
	end as age
from YMD
where month(birthday)=1