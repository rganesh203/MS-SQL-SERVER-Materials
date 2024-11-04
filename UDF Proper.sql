declare @i nvarchar(10)='hello world'
declare @o nvarchar(13)=' '; --'Hello World'
declare @index int=1;
declare @c nvarchar(1);
declare @p nvarchar(1)=' ';

while @index <=len(@i)
begin 
set @c=substring(@i,@index,1);
if @p in (' ') and @c between 'a' and 'z'
set @o=@o+upper(@c);
else 
set @o=@o+lower(@c);
set @p=@c;
set @index=@index+1
end;

select @o as output