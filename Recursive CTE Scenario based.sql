use practice

-- Sample table creation and data insertion
CREATE TABLE your_table (
    id INT,
    date_col DATE,
    value INT
);

INSERT INTO your_table (id, date_col, value)
VALUES 
    (1, '2023-01-01', 10),
    (1, '2023-02-15', 15),
    (1, '2023-03-03', 18),
    (1, '2023-03-27', 15),
    (1, '2023-04-06', 20);

-- Query to generate missing dates with last known value

select * from your_table

WITH recursive_dates AS (
    SELECT 
        id, 
        MIN(date_col) AS min_date, 
        MAX(date_col) AS max_date
    FROM your_table
    GROUP BY id

    UNION ALL

    SELECT 
        id,
        DATEADD(month, 1, min_date) AS min_date,
        max_date
    FROM recursive_dates
    WHERE DATEADD(month, 1, min_date) <= max_date
)
SELECT 
    rd.id,
    DATEFROMPARTS(YEAR(rd.min_date), MONTH(rd.min_date), 1) AS date_col,
    COALESCE(yt.value, lag_value.value) AS value
FROM recursive_dates rd
LEFT JOIN your_table yt ON rd.id = yt.id AND rd.min_date = yt.date_col
OUTER APPLY (
    SELECT TOP(1) yt_prev.value
    FROM your_table yt_prev
    WHERE yt_prev.id = rd.id AND yt_prev.date_col < rd.min_date
    ORDER BY yt_prev.date_col DESC
) AS lag_value
ORDER BY rd.id, rd.min_date;
