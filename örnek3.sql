-- Write a solution to find the number of times each student attended each exam.

-- Return the result table ordered by student_id and subject_name.

-- The result format is in the following example.

SELECT 
    S.student_id,
    S.student_name,
    Sub.subject_name,
    COUNT(E.subject_name) AS attended_exams
FROM
    Students AS S
    CROSS JOIN Subjects AS Sub
    LEFT JOIN Examinations AS E ON S.student_id = E.student_id AND Sub.subject_name = E.subject_name
GROUP BY
    S.student_id,
    S.student_name,
    Sub.subject_name
ORDER BY
    S.student_id,
    Sub.subject_name
