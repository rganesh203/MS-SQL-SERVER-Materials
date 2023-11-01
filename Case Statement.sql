use interview
go

select * from ADDRESS

insert into ADDRESS values (1,'imbd','sdpt', 'ts', 'ind'),
(2,'yellamma','sdpt', 'ts', 'ind'),
(3,'kaman','sdpt', 'ts', 'ind'),
(4,'busstand','sdpt', 'ts', 'ind'),
(5,'chourasta','sdpt', 'ts', 'ind'),
(6,'gandhi','sdpt', 'ts', 'ind')

ALTER TABLE ADDRESS ADD binary int;

Update [ADDRESS] set [binary]=0 where Address_id = 1
Update [ADDRESS] set [binary]=0 where Address_id = 2
Update [ADDRESS] set [binary]=0 where Address_id = 3
Update [ADDRESS] set [binary]=1 where Address_id = 4
Update [ADDRESS] set [binary]=1 where Address_id = 5
Update [ADDRESS] set [binary]=1 where Address_id = 6

SELECT
  *,
  (CASE
    WHEN [binary] = 1 THEN 'yes'
    ELSE 'no'
  END) AS stringtable
FROM [dbo].[ADDRESS]