SELECT c.name as cohort, count(a.id) as total_submissions
FROM cohorts c
INNER JOIN students s ON c.id = s.cohort_id
INNER JOIN assignment_submissions a ON s.id = a.student_id
GROUP BY c.name
ORDER BY c.name DESC;