use Interview

create table student(sid smallint identity,sname varchar(20) not null,dob smalldatetime)

create table course(cid smallint identity,cname varchar(20) not null,duration int)

create table enroll(sid int not null,cid int not null,marks int)

Insert into student values ('XXX','1990/2/12'), ('AAA','1990/2/12'), ('YYY','1990/2/12'), ('ZZZ','1990/2/12')

insert into course values ('C1',3), ('C2',3), ('C2',3)

insert into enroll values (1,1,null), (1,2,null), (2,1,null), (2,2,null), (2,3,null),(3,1,null),(4,2,null)

with getMaxCourse AS
(Select cid,count(sid) over (partition by cid) Kount From enroll)
Select cid from getMaxCourse where Kount = (Select max(Kount) from getMaxCourse)



SELECT c.cid ,c.cname, COUNT(*) AS [Number_Of_Students]
FROM course c
INNER JOIN enroll e
ON c.cid = e.cid
GROUP BY c.cid, c.cname
ORDER BY Number_Of_Students DESC