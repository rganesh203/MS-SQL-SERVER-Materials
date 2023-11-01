create table removeTrailingZeroInDecimal
(
 Id int,
 Amount decimal(5,2),
PRIMARY KEY(Id)
);

insert into removeTrailingZeroInDecimal values(1,405.50),
(2, 23.05),
(3, 12.050),
(4, 125.23),
(5, 125.00),
(6, 126);

select *, cast(amount as float) as amount from removeTrailingZeroInDecimal
