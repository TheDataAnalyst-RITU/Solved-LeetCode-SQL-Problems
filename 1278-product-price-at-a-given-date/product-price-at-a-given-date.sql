# Write your MySQL query statement below
with cte as (Select product_id, new_price as price, 
row_number()
over (partition by product_id order by change_date desc) as rw
from Products
where change_date<='2019-08-16')

select product_id, price
from cte where rw=1
UNION
Select distinct product_id, 10 as price
from Products
where change_date>'2019-08-16' and product_id not in (select distinct product_id from cte)