SELECT c.name AS name, AVG(r.completed_at-r.started_at) AS average_assistance_time
FROM assistance_requests r
JOIN students s ON s.id = r.student_id
JOIN cohorts c ON c.id = s.cohort_id
GROUP BY c.name
ORDER BY average_assistance_time;