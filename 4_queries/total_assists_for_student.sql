SELECT count(*) AS total_assistances, s.name AS name
FROM students s
JOIN assistance_requests ON student_id = s.id
WHERE s.name = 'Elliot Dickinson'
GROUP BY s.name;