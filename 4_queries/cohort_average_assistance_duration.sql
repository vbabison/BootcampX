SELECT avg(total_duration) as average_total_duration
FROM(SELECT sum(completed_at - started_at) as total_duration
FROM assistance_requests r
JOIN students ON students.id = r.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration) as average_total_duration;