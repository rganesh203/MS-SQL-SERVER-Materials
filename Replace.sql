select replace(replace(replace('Yagna   Sathish     Aripina',' ','12'),'121212',' '),'1212','')


select id, [name] from employee where salary =(select max(salary) from employee)

/*records from the "emp" table based on the "emp_name" and "emp_department" columns */

with remove_duplicate as
(select *, rank() over by(partition by emp_name, emp_department over by emp_name) as [order_name] from emp)
delete from remove_duplicate where [oredr_name]>1

create proc sp @id 
as
begin 
select * from emp 
case when id>0 '+ve' then '-ve' end

select id from emp where id is null


go


p_id   s_month   amount


select p_id from emp
pivot 
(sum(amount) for s_month in ([jan], [feb], [march]) as pivot_table

