use
master 
go

create table bank
( account_no varchar(10), 
transaction_date date,
debit_credit varchar(6),
transaction_amount int
);

INSERT INTO bank
  VALUES ('acc_1', '2022-01-20', 'credit', 100),
  ('acc_1', '2022-01-21', 'credit', 500),
  ('acc_1', '2022-01-22', 'credit', 300),
  ('acc_1', '2022-01-23', 'credit', 200),
  ('acc_2', '2022-01-20', 'credit', 500),
  ('acc_2', '2022-01-21', 'credit', 1100),
  ('acc_2', '2022-01-22', 'credit', 1000),
  ('acc_3', '2022-01-20', 'credit', 1000),
  ('acc_4', '2022-01-20', 'credit', 1500),
  ('acc_4', '2022-01-21', 'credit', 500),
  ('acc_5', '2022-01-20', 'credit', 900);

WITH cte
AS (SELECT
  account_no,
  transaction_amount,
  CASE
    WHEN debit_credit = 'debit' THEN transaction_amount * -1
    ELSE transaction_amount
  END AS trans_amount
FROM bank),
final_data
AS (SELECT
  *,
  SUM(trans_amount) OVER (PARTITION BY account_no ORDER BY transaction_date,
  RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS balance
FROM cte)
SELECT
  *
FROM final_data;

select * from bank;