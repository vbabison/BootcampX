SELECT s.name AS student, AVG(a.duration) AS average_assignment_duration
FROM students s
INNER JOIN assignment_submissions a ON s.id = a.student_id
WHERE s.end_date IS NULL
GROUP BY s.name
ORDER BY average_assignment_duration DESC;