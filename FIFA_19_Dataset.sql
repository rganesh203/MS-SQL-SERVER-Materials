use ganesh
GO

select * from [dbo].[FIFA_19_Dataset]

select CONCAT(name, nationality) as concate from [dbo].[FIFA_19_Dataset]

select top 10 upper(name) as Black_letter from [dbo].[FIFA_19_Dataset]

select top 10 lower(name) as Black_letter from [dbo].[FIFA_19_Dataset]

select top 10 proper(name) as Black_letter from [dbo].[FIFA_19_Dataset]

select top 10 substring(name, 2, 5) from [dbo].[FIFA_19_Dataset];

select top 10 joined, year(joined) year, month(joined) month, day(joined) date from [dbo].[FIFA_19_Dataset]

select joined, format(joined,'dd-MM-yyyy') as formatted_date from FIFA_19_Dataset;

select value/wage as Nearest_integer from [dbo].[FIFA_19_Dataset]

select sum(wage) from [dbo].[FIFA_19_Dataset] where Nationality in ('spain', 'turkey')

select sum(wage) as total from [dbo].[FIFA_19_Dataset] where Nationality ='spain' or Nationality = 'turkey'

select count(*) from [dbo].[FIFA_19_Dataset] where overall >= 50 and overall <= 80

select count(*) from [dbo].[FIFA_19_Dataset] where overall between  50 and  80

select distinct [Nationality] from [dbo].[FIFA_19_Dataset] order by 1

select distinct [Nationality] from [dbo].[FIFA_19_Dataset] order by [Nationality]

select avg([Age]) from [dbo].[FIFA_19_Dataset] where name not in ('Felipe')

select stdev([Age]) from [dbo].[FIFA_19_Dataset] where name <> ('Felipe')

select top 10 * from [dbo].[FIFA_19_Dataset];

select count(*) as Total_records from [dbo].[FIFA_19_Dataset];

select count(distinct Nationality) as [No. of nationalities] from [dbo].[FIFA_19_Dataset];

select count(*) as Freq, Nationality from [dbo].[FIFA_19_Dataset] group by Nationality;

select top 3 count(*) as Freq, Nationality from [dbo].[FIFA_19_Dataset] 
group by Nationality order by Freq desc;

select max(wage) as max_wage from [dbo].[FIFA_19_Dataset]

select name from [dbo].[FIFA_19_Dataset] where wage= 565000;

select name from [dbo].[FIFA_19_Dataset] 
where wage =(select max(wage) as max_wage from [dbo].[FIFA_19_Dataset])

select name from [dbo].[FIFA_19_Dataset] 
where wage =(select min(wage) from [dbo].[FIFA_19_Dataset])

select count(name) from [dbo].[FIFA_19_Dataset] 
where wage =(select min(wage) from [dbo].[FIFA_19_Dataset])

select min(wage) from [dbo].[FIFA_19_Dataset]

select name from [dbo].[FIFA_19_Dataset] 
where Overall =(select max(Overall) from [dbo].[FIFA_19_Dataset])

select sum(overall) as total_rating, club from fifa_19_dataset 
group by club order by total_rating desc;

select top 3 sum(overall) as total_rating, club from fifa_19_dataset 
group by club order by total_rating desc;

select top 3 avg(overall) as total_rating, club from fifa_19_dataset 
group by club order by total_rating desc;

select top 5 avg(overall) as total_rating, club from fifa_19_dataset 
group by club order by total_rating desc;

select count(*) as freq, Preferred_Foot from FIFA_19_Dataset 
group by Preferred_Foot order by freq;

select sum(wage) as total_wage, Jersey_number from FIFA_19_Dataset 
group by Jersey_Number order by total_wage;

select top 1 sum(wage) as total_wage, Jersey_number from FIFA_19_Dataset 
group by Jersey_Number order by total_wage desc;

select count(*) as freq, nationality from FIFA_19_Dataset where club like 'M%' group by nationality;

select count(*) as Total from FIFA_19_Dataset where Joined >= '2018-05-20' and Joined <= '2019-04-10';

select count(*) as freq, Joined from FIFA_19_Dataset group by Joined;

select count(*) as freq, year(Joined) as [year] from FIFA_19_Dataset group by year(Joined) order by freq;

select count(*) as freq, (Joined) from FIFA_19_Dataset group by (Joined) order by freq;

select count(*) as freq, (Joined) from FIFA_19_Dataset group by (Joined) order by freq;

select max(wage),min(wage) from [dbo].[FIFA_19_Dataset]

select * from FIFA_19_Dataset 

