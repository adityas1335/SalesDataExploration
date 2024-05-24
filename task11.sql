SELECT EXTRACT(YEAR FROM occurred_at) AS year,
SUM(total_amt_usd) AS total_usd
FROM orders
GROUP BY year
ORDER BY total_usd;