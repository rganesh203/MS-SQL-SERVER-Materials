use my
go

CREATE TABLE ExamResult
(StudentName VARCHAR(70), 
 Subject     VARCHAR(20), 
 Marks       INT
);
INSERT INTO ExamResult VALUES('Lily', 'Maths', 65);
INSERT INTO ExamResult VALUES('Lily', 'Science', 80);
INSERT INTO ExamResult VALUES('Lily', 'english', 70);
INSERT INTO ExamResult VALUES('Isabella', 'Maths', 50);
INSERT INTO ExamResult VALUES('Isabella', 'Science', 70);
INSERT INTO ExamResult VALUES('Isabella', 'english', 90);
INSERT INTO ExamResult VALUES('Olivia', 'Maths', 55);
INSERT INTO ExamResult VALUES('Olivia', 'Science', 60);
INSERT INTO ExamResult VALUES('Olivia', 'english', 89);

select * from examresult

create function tvf(@subject varchar(50)) 
returns table 
as 
return(select *from ExamResult where subject=@subject)

select * from tvf('english')