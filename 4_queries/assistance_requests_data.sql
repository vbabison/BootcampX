SELECT t.name AS teacher, s.name AS student, a.name AS assignment, (r.completed_at-r.started_at) AS duration
FROM assistance_requests r
JOIN teachers t ON t.id = r.teacher_id
JOIN students s ON s.id = r.student_id
JOIN assignments a ON a.id = r.assignment_id
ORDER BY duration;