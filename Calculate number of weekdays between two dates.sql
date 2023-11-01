CREATE TABLE list_prices (
    product_id INT NOT NULL,
    valid_from DATE NOT NULL,
    valid_to DATE NOT NULL,
    amount DEC (10, 2) NOT NULL,
    PRIMARY KEY (product_id));

INSERT INTO list_prices VALUES (1, '2019-01-01', '2019-12-31', 400)
INSERT INTO list_prices values (2, '2020-02-01', '2020-02-10',500)
INSERT INTO list_prices values (3, '2020-03-01', '2020-03-10',400)
INSERT INTO list_prices values (4, '2020-04-01', '2020-04-10',700)
INSERT INTO list_prices values (5, '2020-05-01', '2020-05-10',600)
INSERT INTO list_prices values (6, '2020-06-01', '2020-06-10',200)
INSERT INTO list_prices values (7, '2020-07-01', '2020-07-10',40)
INSERT INTO list_prices values (8, '2020-08-01', '2020-08-10',70)
;

select * from list_prices;

select datename(DW, valid_from) day, valid_to from list_prices;

select datediff(Dd, valid_from, valid_to) day, valid_from, valid_to from list_prices;

select datediff(ww, valid_from, valid_to) day, valid_from, valid_to from list_prices;

select valid_from, valid_to, 
(datediff(dd, valid_from, valid_to)+1)
-datediff(ww, valid_from, valid_to)*2
- (case when datename(DW, valid_from)='sunday' then 1 else 0 end)
-  (case when datename(DW, valid_to)='saturday' then 1 else 0 end)
from list_prices;