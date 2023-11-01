CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);

insert into persons(id, LastName, FirstName, age) values (1, 'r', 'g', 36)

select * from Persons


delete from persons