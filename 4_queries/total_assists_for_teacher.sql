SELECT count(*) AS total_assistances, t.name AS name
FROM teachers t
JOIN assistance_requests ON teacher_id = t.id
WHERE t.name = 'Waylon Boehm'
GROUP BY t.name;