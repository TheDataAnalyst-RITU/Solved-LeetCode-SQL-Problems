SELECT DATE_FORMAT(trans_date,'%Y-%m') as month, 
country,
sum(case when id is not null then 1 else 0 end) as trans_count,
SUM(CASE WHEN state='approved' then 1 else 0 end) as approved_count,
sum(case when id is not null then amount else 0 end) as trans_total_amount,
SUM(CASE WHEN state='approved' then amount else 0 end) as approved_total_amount
from Transactions
group by 1,2