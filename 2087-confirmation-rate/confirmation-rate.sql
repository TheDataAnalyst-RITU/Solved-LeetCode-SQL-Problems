# Write your MySQL query statement below
with cte as 
(select 
s.user_id, 
sum(case when c.action='confirmed'  then 1 else 0 end ) as confirmcount,
sum(case when c.action is not null then 1 else 0 end ) as totalcount
from Signups s
join Confirmations c
on s.user_id=c.user_id
group by 1)

select user_id, round(confirmcount/totalcount,2) as confirmation_rate
from cte
UNION
Select user_id, 0.00 as confirmation_rate
from Signups where user_id not in (select distinct user_id from Confirmations)