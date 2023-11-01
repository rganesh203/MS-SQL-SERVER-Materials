use powerbi
select * from [dbo].[college]

alter table college alter column marks varchar(30)

begin tran
	update college
	set marks =marks+'5'
	where id =1
rollback

select * from college(nolock)