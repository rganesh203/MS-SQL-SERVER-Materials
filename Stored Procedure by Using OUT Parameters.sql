--Stored Procedure by Using "OUT" Parameters
use my
go
create table employees(eid int, ename varchar(20), salary money)

insert into employees values (101, 'jones', 25000)
insert into employees values (102, 'scott', 35000)
insert into employees values (103, 'ganesh', 45000)

select * from employees

create procedure sp1(@EID int, @pt int out , @pf int out) 
as
begin
declare @sal money
select @sal=salary from employees where eid=@eid
set @pf=@sal*0.1
set @pt=@sal*0.1
end

exec sp1 102-- not allowed

output:
declare @bpf int, @bpt int
exec sp1 102,@bpf out, @bpt out
print 'pf is :' +cast(@bpf as varchar)	
print 'pt is :' +cast(@bpt as varchar)

--drop procedure
DROP PROCEDURE do_db_maintenance;