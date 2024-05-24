SELECT EXTRACT(YEAR FROM occurred_at) AS year,
       EXTRACT(MONTH FROM occurred_at) AS month,
       EXTRACT(DAY FROM occurred_at) AS day,
       SUM(total_amt_usd) AS total_usd
FROM orders
WHERE EXTRACT(YEAR FROM occurred_at) = 2017
GROUP BY year, month, day
ORDER BY total_usd;
