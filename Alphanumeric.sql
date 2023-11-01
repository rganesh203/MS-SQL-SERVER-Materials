use interview
go

CREATE TABLE dbo.Numbers
(
Id INT, Val VARCHAR(15)
)

INSERT dbo.Numbers (Id, Val) VALUES
(1, 'ABCXDE101'),
(2, '03256263'),
(3, 'BSFSGS'),
(4, '2432VS64'),
(5, '35435683'),
(6, 'IFSNDS'),
(7, 'ABNTY'),
(8, '848427')



select * from dbo.Numbers
where Val like '%[^a-z][^A-Z][^0-9]%'

select * from dbo.Numbers
where Val like '%[^a-z0-9()-]%'

SELECT Id, Val FROM dbo.Numbers
WHERE PATINDEX('%[^0-9A-Z]%', Val) = 0 
AND PATINDEX('%[A-Z]%', Val) > 0 
AND PATINDEX('%[0-9]%', Val) > 0