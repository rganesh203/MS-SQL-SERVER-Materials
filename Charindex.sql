create table conc
(id int,
name varchar(50)
)

insert into conc values
(1, 'radha, ganesh'),
(2, 'radha, jathin'),
(3, 'radha, harika'),
(4, 'radha, rajesh')

select *, CHARINDEX(',', name) including_delimiter from conc; 
select *, left(name, CHARINDEX(',', name)) firstname from conc;
select *, right(name, CHARINDEX(',', name)) lastname from conc; 

select *, left(name, CHARINDEX(',', name)-1) firstname, 
right(name, len(name)-CHARINDEX(',', name)) as lastname from conc; 

