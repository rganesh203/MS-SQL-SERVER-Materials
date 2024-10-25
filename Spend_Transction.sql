-- Create the transactions table
CREATE TABLE transactions (
    user_id INT,
    spend DECIMAL(10, 2),
    transaction_date DATETIME
);
drop table transactions
-- Insert records into the transactions table
INSERT INTO transactions (user_id, spend, transaction_date) VALUES
(111, 100.50, '2022-01-08 12:00:00'),
(111, 55.00, '2022-01-10 12:00:00'),
(121, 36.00, '2022-01-18 12:00:00'),
(145, 24.99, '2022-01-26 12:00:00'),
(111, 89.60, '2022-02-05 12:00:00'),
(145, 45.30, '2022-02-28 12:00:00'),
(121, 22.20, '2022-04-01 12:00:00'),
(121, 67.90, '2022-04-03 12:00:00'),
(263, 156.00, '2022-04-11 12:00:00'),
(230, 78.30, '2022-06-14 12:00:00'),
(263, 68.12, '2022-07-11 12:00:00'),
(263, 100.00, '2022-07-12 12:00:00');

SELECT 
    t1.user_id,
    t1.spend,
    t1.transaction_date
FROM transactions AS t1
JOIN (
    SELECT 
        user_id, 
        spend, 
        transaction_date, 
        ROW_NUMBER() OVER (
            PARTITION BY user_id ORDER BY transaction_date
        ) AS row_num
    FROM transactions
) AS t2 ON t1.user_id = t2.user_id 
    AND t1.transaction_date = t2.transaction_date
WHERE t2.row_num = 3;
