SELECT sales_reps.name AS sales_rep_name,
web_events.channel AS channel,
COUNT(web_events.channel) AS number_of_occurrences
FROM web_events 
JOIN accounts ON web_events.account_id = accounts.id
JOIN sales_reps ON accounts.sales_rep_id = sales_reps.id
GROUP BY sales_rep_name, channel
ORDER BY number_of_occurrences DESC;