# Write your MySQL query statement below
WITH newtbl AS(
    SELECT  s.student_id,
        s.student_name,
        e.subject_name  FROM Students AS s
    CROSS JOIN Subjects AS e
    
)

SELECT n.student_id,
        n.student_name,
        n.subject_name, 
        COUNT(s.subject_name)AS attended_exams FROM newtbl AS n
        LEFT JOIN Examinations AS s
        ON n.student_id=s.student_id AND n.subject_name =s.subject_name
       
        GROUP BY n.student_id, n.student_name,n.subject_name
        ORDER BY student_id,subject_name
        ;