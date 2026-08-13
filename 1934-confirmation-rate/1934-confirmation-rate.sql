# Write your MySQL query statement below
select si.user_id, round(ifnull(avg(action = 'confirmed'),0),2) as confirmation_rate
from Signups as si
left join Confirmations as co
on si.user_id = co.user_id
group by si.user_id;
