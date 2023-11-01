create table files 
(id int, 
date_modified date, 
file_ext varchar(50)
)

delete files where id=1

insert into files values(1, '2021-06-01', 'redra.py')
insert into files values(2, '2021-06-01', 'under.pptx')
insert into files values(3, '2021-06-01', 'sri.py')
insert into files values(4, '2021-06-01', 'ur.py')
insert into files values(5, '2021-06-02', 'tra.pptx')
insert into files values(6, '2021-06-02', 'demit.csv')
insert into files values(7, '2021-06-03', 'thre.svg')
insert into files values(8, '2021-06-03', 'counter.pdf')
insert into files values(9, '2021-06-03', 'discuss.pdf')
insert into files values(10, '2021-06-03', 'pseudo.pdf')
insert into files values(11, '2021-06-03', 'unguarded.jpeg')
insert into files values(12, '2021-06-03', 'trialor.py')
insert into files values(13, '2021-06-04', 'flavour.py')
insert into files values(14, '2021-06-04', 'asst.py')
insert into files values(15, '2021-06-05', 'nonv.pptx')
insert into files values(16, '2021-06-06', 'ant.py')
insert into files values(17, '2021-06-06', 'ton.docx')
insert into files values(18, '2021-06-06', 'non.pdf')
insert into files values(19, '2021-06-06', 'rein.py')
insert into files values(20, '2021-06-06', 'suzy.docx')

with cte as
	(Select id,date_modified,file_ext,substring(file_ext,CHARINDEX('.',file_ext)+1,5) 
	as file_exti from files),
	cte2 as(
	Select distinct date_modified,file_exti,count(file_exti) over 
	(partition by date_modified,file_exti order by date_modified) as cnt
	from cte)

	select date_modified,STRING_AGG(file_exti,',') within group (order by file_exti desc) 
	as extension,cnt from cte2 as c1
where cnt = (select MAX(cnt) from cte2 as c2 where c1.date_modified=c2.date_modified)
group by date_modified,cnt