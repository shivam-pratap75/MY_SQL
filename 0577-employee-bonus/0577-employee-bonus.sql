# Write your MySQL query statement below
SELECT Employee.name,B.bonus FROM Employee
LEFT JOIN Bonus B
ON Employee.empId=B.empId
WHERE B.bonus<1000 OR B.bonus IS NULL;