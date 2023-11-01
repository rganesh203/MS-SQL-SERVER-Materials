use [interview]
Go

create table customers1
(id int identity(1,1) primary key,
first_name varchar(20),
last_name varchar(20),
email varchar(20)
);

drop table customers

create table cus_orders
(id int identity(1,1) primary key,
order_date date,
amount decimal(8,2),
customer_id int
);

insert into customers1 values ('boy', 'george',  'george@gmail.com'),
					('George', 'Michael',  'gm@gmail.com'),
					('David', 'Bowie',  'david@gmail.com'),
					('Blue', 'Steele',  'blue@gmail.com'),
					('Bette', 'davis',  'bette@gmail.com')

insert into cus_orders values ('2016/02/10', 99.99, 1),
					('2017/11/11', 35.50, 1),
					('2014/12/12', 800.67, 2),
					('2015/01/03', 12.50, 2),
					('1999/04/11', 450.25, 5);

drop table cus_orders

select * from cus_orders

select * from customers1

ALTER TABLE cus_orders ADD CONSTRAINT FK_PersonOrder FOREIGN KEY (Customer_ID) REFERENCES Customers(ID);

insert into cus_orders(order_date, amount, customer_id) values ('2018/02/10', 56.99, 4);

SELECT LEN(email) from [dbo].[customers1];

select *, max(amount) over ( partition by id) as max_salary from cus_orders;

select avg(amount) as avg_salary from cus_orders;

select *, lag(amount,1,0) over (partition by id order by customer_id) as rn  from cus_orders;

select *, lead(amount) over (partition by id order by id) as rn  from cus_orders;

SELECT  *,
  FIRST_VALUE(amount) OVER
  (PARTITION BY customer_id ORDER BY amount DESC) AS most_expensive,
  LAST_VALUE(amount) OVER (PARTITION BY customer_id ORDER BY amount DESC
  range between unbounded preceding and current row) AS least_expensive
FROM cus_orders;


