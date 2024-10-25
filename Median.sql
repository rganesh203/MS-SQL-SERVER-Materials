CREATE TABLE search_frequency (
    searches INTEGER,
    num_users INTEGER
);
INSERT INTO search_frequency (searches, num_users) VALUES (1, 2);
INSERT INTO search_frequency (searches, num_users) VALUES (2, 2);
INSERT INTO search_frequency (searches, num_users) VALUES (3, 3);
INSERT INTO search_frequency (searches, num_users) VALUES (4, 1);

select * from search_frequency

WITH RankedSearches AS (
    SELECT 
        searches,
        ROW_NUMBER() OVER (ORDER BY searches) AS RowAsc,
        ROW_NUMBER() OVER (ORDER BY searches DESC) AS RowDesc
    FROM search_frequency
)

SELECT 
    ROUND(AVG(searches * 1.0), 1) AS Median
FROM RankedSearches
WHERE RowAsc IN ((SELECT COUNT(*) FROM RankedSearches) / 2, (SELECT COUNT(*) FROM RankedSearches) / 2 + 1)

