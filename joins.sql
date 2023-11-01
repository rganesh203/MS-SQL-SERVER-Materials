CREATE TABLE Books
(
Id INT PRIMARY KEY IDENTITY(1,1),
Name VARCHAR (50) NOT NULL,
Price INT,
CategoryId INT, 
AuthorId INT
)


INSERT INTO Books 
VALUES ( 'Book-A', 100, 1, 2),
( 'Book-B', 200, 2, 2),
( 'Book-C', 150, 3, 2),
( 'Book-D', 100, 3,1),
( 'Book-E', 200, 3,1),
( 'Book-F', 150, 4,1),
( 'Book-G', 100, 5,5),
( 'Book-H', 200, 5,6),
('Book-I', 150, 7,8)

CREATE TABLE Categories
(
Id INT PRIMARY KEY,
Name VARCHAR (50) NOT NULL,
)

INSERT INTO Categories 
VALUES (1, 'Cat-A'),
(2, 'Cat-B'),
(3, 'Cat-C'),
(7, 'Cat-D'),
(8, 'Cat-E'),
(4, 'Cat-F'),
(10,'Cat-G'),
(12,'Cat-H'),
(6, 'Cat-I')

select b.id, c.id from books as b
left join
Categories as c on 
b.id = c.id

select b.id, c.id from books as b
right join
Categories as c on 
b.id = c.id

select b.id, c.id, c.[Name] from books as b
full join 
Categories as c on 
b.id = c.id

select * from books
cross join 
Categories


select b.id, c.id, c.[Name] from books as b
inner join 
Categories as c on 
b.id = c.id