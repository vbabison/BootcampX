SELECT name, id, email, cohort_id
FROM students
WHERE 'gmail.com' ~ email OR phone IS NULL AND email IS NOT NULL;