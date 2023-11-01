select * from ExamResult

create procedure sop1
as begin 
select * from ExamResult
end

execute sop1
--(or)
exec sop1