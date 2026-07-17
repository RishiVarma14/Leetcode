

USE college;

DESCRIBE students;
DESCRIBE courses;
DESCRIBE enrollments;


SELECT s.student_name, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;
use enrollement;

SELECT DISTINCT marks
FROM enrollments
ORDER BY marks DESC
LIMIT 1 OFFSET 1;


SELECT MAX(marks) AS Third_highest
FROM enrollments
WHERE marks < (
    SELECT MAX(marks)
    FROM enrollments
    WHERE marks < (
        SELECT MAX(marks)
        FROM enrollments
    )
);


SELECT marks
FROM (
    SELECT marks, DENSE_RANK() OVER (ORDER BY marks DESC) AS rnk
    FROM enrollments
) t
WHERE rnk = 3;
