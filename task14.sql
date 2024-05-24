SELECT year, month, day, total_usd
FROM (
    SELECT EXTRACT(YEAR FROM occurred_at) AS year,
           EXTRACT(MONTH FROM occurred_at) AS month,
           EXTRACT(DAY FROM occurred_at) AS day,
           SUM(total_amt_usd) AS total_usd
    FROM orders
    GROUP BY year, month, day
    ORDER BY total_usd
) AS newtable
WHERE month = 1 AND day = 1;
