# Write your MySQL query statement below
SELECT contest_id ,ROUND(((COUNT(R.user_id)/ (SELECT COUNT(*) FROM Users)) *100),2) as percentage FROM Register as R
GROUP BY R.contest_id
ORDER BY percentage DESC,contest_id ;
