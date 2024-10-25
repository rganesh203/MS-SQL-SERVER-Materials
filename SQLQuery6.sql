CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    HireDate DATE
);

INSERT INTO Employee (EmployeeID, FirstName, LastName, HireDate) VALUES
(1, 'John', 'Doe', '2024-05-10'),
(2, 'Jane', 'Smith', '2024-03-15'),
(3, 'Mark', 'Johnson', '2023-12-22'),
(4, 'Emily', 'Davis', '2023-10-30'),
(5, 'Sarah', 'Wilson', '2024-07-01'),
(6, 'James', 'Brown', '2024-01-05'),
(7, 'Linda', 'Garcia', '2024-09-01'),
(8, 'Michael', 'Miller', '2023-11-11');


SELECT *
FROM Employee
WHERE HireDate >= DATEADD(MONTH, -6, GETDATE());


