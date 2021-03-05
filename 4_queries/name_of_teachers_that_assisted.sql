SELECT DISTINCT t.name as teacher, c.name as cohort
FROM assistance_requests r
JOIN students s ON s.id = r.student_id
JOIN teachers t ON t.id = r.teacher_id
JOIN cohorts c ON c.id = s.cohort_id
WHERE c.name = 'JUL02'
ORDER BY t.name;