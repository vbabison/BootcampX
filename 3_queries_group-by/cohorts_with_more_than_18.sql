SELECT c.name AS cohort_name, COUNT(*) AS student_count
FROM students, cohorts c
WHERE cohort_id = c.id
GROUP BY c.name
HAVING COUNT(*) >= 18
ORDER BY COUNT(*) ASC;