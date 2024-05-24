SELECT accounts.name AS account_name,
       AVG(orders.standard_amt_usd) AS avg_standard_amt_usd,
       AVG(orders.gloss_amt_usd) AS avg_gloss_amt_usd,
    AVG(orders.poster_amt_usd) AS avg_poster_amt_usd,
       AVG(orders.standard_amt_usd) + AVG(orders.gloss_amt_usd) + AVG(orders.poster_amt_usd) AS total
FROM accounts
JOIN orders ON accounts.id = orders.account_id
GROUP BY account_name
ORDER BY total DESC;
