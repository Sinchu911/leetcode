# using joins

-- SELECT e1.name
-- FROM Employee e1
-- JOIN Employee e2
-- ON e1.id = e2.managerID
-- GROUP BY e1.id, e1.name
-- HAVING count(e1.id) >= 5

# using subquery

-- select e.name
-- from Employee e
-- join(
--     select managerId
--     from Employee
--     group by managerID
--     having count(id) >=5
-- ) mgr  on e.id = mgr.managerID

# using subquery+where IN 

SELECT name
FROM Employee
WHERE id IN (
    SELECT managerId
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(id) >= 5
);