# Write your MySQL query statement below
SELECT w.id FROM Weather w JOIN Weather u
ON DATEDIFF(w.recordDate,u.recordDate)=1
WHERE w.temperature>u.temperature;  