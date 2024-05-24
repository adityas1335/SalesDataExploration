SELECT region.name AS Region,
       accounts.name AS account_name,
       (orders.total_amt_usd / (orders.total + 0.01)) AS unit_price
FROM region
JOIN sales_reps ON region.id = sales_reps.region_id
JOIN accounts ON sales_reps.id = accounts.sales_rep_id
JOIN orders ON accounts.id = orders.account_id
WHERE orders.standard_qty > 100;