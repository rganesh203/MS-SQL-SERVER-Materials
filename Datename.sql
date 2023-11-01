use 
interview
go

CREATE TABLE M_Y(
 year int,month varchar(15)
);

DECLARE @cnt INT = 2014;

WHILE @cnt < 2021
BEGIN
   INSERT INTO M_Y(year) VALUES(@cnt);
   SET @cnt = @cnt + 1;
END;

UPDATE M_Y SET month = 'january' WHERE year=2014
UPDATE M_Y SET month = 'feb' WHERE year=2015
UPDATE M_Y SET month = 'march' WHERE year=2016
UPDATE M_Y SET month = 'april' WHERE year=2017
UPDATE M_Y SET month = 'may' WHERE year=2018
UPDATE M_Y SET month = 'june' WHERE year=2019
UPDATE M_Y SET month = 'july' WHERE year=2020;

ALTER TABLE M_Y ADD date DATETIME

UPDATE M_Y SET date = '2008-01-11' WHERE year=2014
UPDATE M_Y SET date = '2008-02-11' WHERE year=2015
UPDATE M_Y SET date = '2008-03-11' WHERE year=2016
UPDATE M_Y SET date = '2008-04-11' WHERE year=2017
UPDATE M_Y SET date = '2008-05-11' WHERE year=2018
UPDATE M_Y SET date = '2008-06-11' WHERE year=2019
UPDATE M_Y SET date = '2008-07-11' WHERE year=2020

select * from M_Y

select datename(day, date) as day, datename(month, date)as monthname, month(date) as month from M_Y
order by month desc;
