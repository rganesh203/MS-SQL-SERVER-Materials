use CareerBI
go

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100)
);


INSERT INTO Employees (FirstName, LastName, Email) VALUES 
('John', 'Doe', 'john.doe@example.com'),
    ('Jane', 'Smith', 'jane.smith@example.com'),
    ('Jim', 'Johnson', 'jim.johnson@example.com'),
    ('Janet', 'Doe', 'janet.doe@example.com');

select * from Employees

/*
% (Percent Sign):
Represents zero or more characters.
Example: Find names that start with 'J':
*/
SELECT * 
FROM Employees
WHERE FirstName LIKE 'Jo%';

/*_ (Underscore):
Represents a single character.
Example: Find names with exactly three characters:
*/
SELECT * 
FROM Employees
WHERE FirstName LIKE '__';

/* [] (Brackets):
Specifies a range or set of characters to match.
Example: Find names where the second letter is either 'a' or 'o':*/

SELECT * 
FROM Employees
WHERE FirstName LIKE '_[ao]%';

/*
^ (Caret):
When used inside brackets, it negates the set. It specifies characters that should not be matched.
Example: Find names where the second letter is neither 'a' nor 'o':
*/
SELECT * 
FROM Employees
WHERE FirstName LIKE '_[^ao]%';

/*- (hyphen):
Specifies a range of characters inside brackets.
Example: Find names where the second letter is a letter between 'a' and 'c':
*/
SELECT * 
FROM Employees
WHERE FirstName LIKE '_[a-c]%';




