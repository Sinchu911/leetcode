# Write your MySQL query statement below
-- SELECT A.user_id,
--        ROUND(IFNULL(AVG(action = 'confirmed'), 0), 2) AS confirmation_rate
-- FROM Signups AS A
-- LEFT JOIN Confirmations AS B ON A.user_id = B.user_id
-- GROUP BY A.user_id;


-- using subquery
SELECT s.user_id,
       ROUND(IFNULL(c.confirmed_count / c.total_count, 0), 2) AS confirmation_rate
FROM Signups s
LEFT JOIN (
    SELECT user_id,
           SUM(action = 'confirmed') AS confirmed_count,
           COUNT(*) AS total_count
    FROM Confirmations
    GROUP BY user_id
) c ON s.user_id = c.user_id;
