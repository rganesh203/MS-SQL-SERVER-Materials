declare @x varchar(40)
set @x='hello world'
select @x

declare @y varchar(40)
set @y='          hello world'
select @y

SELECT LEFT('SQL Tutorial', 3) AS ExtractString;

SELECT right('SQL Tutorial', 3) AS ExtractString;

SELECT SUBSTRING('SQL Tutorial', 3, 6) AS ExtractString;

SELECT charindex('q', 'SQL Tutorial') AS ExtractString;

SELECT SUBSTRING('SQL Tutorial', 1, charindex('q', 'SQL Tutorial')) AS ExtractString;

SELECT SUBSTRING('SQL Tutorial', charindex(' ', 'SQL Tutorial')+1, len('SQL Tutorial')) AS ExtractString;

select stuff('ganesh',2,3,'hbr')

select replace('ganesh','a', 'xx')
