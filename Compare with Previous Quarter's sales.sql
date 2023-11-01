use interview 
go

create table sales 
(year int, quarter varchar(5), sales int
)

insert into sales values (2018, 'q1', 5000),
(2018, 'q2', 5500),
(2018, 'q3', 3000),
(2018, 'q4', 5500),
(2019, 'q1', 5200),
(2019, 'q2', 5500),
(2019, 'q3', 6000),
(2019, 'q4', 7000)

select * from sales;

select 
year, 
[quarter] as quatername, 
sales as currentsale,
lag(sales) over (partition by year order by [quarter]) as previous
from sales;

select 
year, 
[quarter] as quatername, 
sales as currentsale,
lead(sales,2) over (partition by year order by [quarter]) as previous
from sales;

select 
year, 
[quarter] as quatername, 
sales as currentsale,
lead(sales) over (partition by year order by [quarter] desc) as previous
from sales;