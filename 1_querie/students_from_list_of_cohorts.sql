SELECT SUM(count) AS "count"
FROM(SELECT COUNT(*) AS count
FROM students
WHERE cohort_id IN (1, 2, 3)
GROUP BY cohort_id)

SUM(COUNT)
