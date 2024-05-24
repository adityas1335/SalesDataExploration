select region.name as Region,
sales_reps.name as Rep_name,
accounts.name as account_name
from region 
join sales_reps on region.id = sales_reps.region_id
join accounts on sales_reps.id = accounts.sales_rep_id
where region.name = 'Midwest' and sales_reps.name like 'S%'
order by account_name;