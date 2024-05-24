SELECT EXTRACT(YEAR FROM occurred_at) AS year,
       EXTRACT(MONTH FROM occurred_at) AS month,
       SUM(total_amt_usd) AS total_usd
FROM orders
WHERE EXTRACT(YEAR FROM occurred_at) = 2013 OR EXTRACT(YEAR FROM occurred_at) = 2017
GROUP BY year, month
ORDER BY year, month;
