SELECT s.name AS student, AVG(a.duration) AS average_assignment_duration, AVG(seed.duration) AS average_estimated_duration
FROM students s
JOIN assignment_submissions a ON a.student_id = s.id
JOIN assignments seed ON a.assignment_id = seed.id
WHERE s.end_date IS NULL
GROUP BY s.name
HAVING AVG(a.duration) < AVG(seed.duration)
ORDER BY average_assignment_duration ASC;