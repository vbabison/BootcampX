SELECT SUM(duration) AS total_duration
FROM (SELECT * FROM students AS student
LEFT OUTER JOIN assignment_submissions
ON student.id = assignment_submissions.student_id
WHERE student.name = 'Ibrahim Schimmel') AS duration;