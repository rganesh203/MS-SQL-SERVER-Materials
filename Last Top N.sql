CREATE TABLE [users] (
	[id] INT IDENTITY(1,1),
	[name] VARCHAR(100) NOT NULL,
	[country] VARCHAR(15) NOT NULL,
	PRIMARY KEY ([id])
);

INSERT INTO [users]
	([name], [country])
VALUES
	('Tom', 'Poland'),
	('Chris', 'Spain'),
	('Jack', 'Spain'),
    ('Kim', 'Vietnam'),
    ('Marco', 'Italy'),
	('Kate', 'Spain'),
	('Nam', 'Vietnam');

	SELECT * FROM (
     SELECT TOP 3 * 
	 FROM [users] 
	 ORDER BY [id] DESC
) subquery
ORDER BY [id] ASC;