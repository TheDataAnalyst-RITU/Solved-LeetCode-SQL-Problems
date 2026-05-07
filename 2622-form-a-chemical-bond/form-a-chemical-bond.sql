# Write your MySQL query statement below
SELECT m.symbol AS metal, nm.symbol AS nonmetal
FROM Elements AS m
CROSS JOIN Elements AS nm
WHERE m.type = 'Metal' AND nm.type = 'Nonmetal'