use interview
go

create table orders
(id int IDENTITY(1,1) primary key,
products varchar(20)
)

insert into orders(products) values('apple'),('orange'),('banana'),('apple, banana'),('kiwi'), ('watermelon'),('orange,grapes')

select * from orders

CREATE TABLE Persons (
    returnid int,
    id int
);

insert into Persons values(1,2),(2,4)

SELECT o.ID, o.PRODUCTS
FROM ORDERS o
LEFT JOIN Persons p ON o.ID = p.ID
WHERE p.ID is null;

