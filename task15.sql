SELECT accounts.name AS account_name,
EXTRACT(YEAR FROM orders.occurred_at) AS year,
EXTRACT(MONTH FROM orders.occurred_at) AS month,
SUM(orders.gloss_amt_usd) AS gloss_total_usd
FROM accounts
JOIN orders ON accounts.id = orders.account_id
WHERE accounts.name = 'Walmart'
GROUP BY account_name, year, month
ORDER BY gloss_total_usd DESC
LIMIT 1;
