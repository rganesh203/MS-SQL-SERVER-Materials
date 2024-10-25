CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    amount DECIMAL(10, 2),
    transaction_date DATE
);
INSERT INTO transactions (transaction_id, amount, transaction_date)
VALUES 
(1, 150, '2024-07-01'),
(2, 200, '2024-07-01'),
(3, 75,  '2024-07-01'),
(4, 300, '2024-07-02'),
(5, 50,  '2024-07-02'),
(6, 120, '2024-07-03');

-- Write your PostgreSQL query statement below
WITH OddEvenSums AS (
    SELECT
        transaction_date,
        CASE WHEN amount % 2 != 0 THEN amount ELSE 0 END AS odd_amount,
        CASE WHEN amount % 2 = 0 THEN amount ELSE 0 END AS even_amount
    FROM
        transactions
)
SELECT
    transaction_date,
    SUM(odd_amount) AS odd_sum,
    SUM(even_amount) AS even_sum
FROM
    OddEvenSums
GROUP BY
    transaction_date
ORDER BY
    transaction_date;  -- You can change to ASC if needed

