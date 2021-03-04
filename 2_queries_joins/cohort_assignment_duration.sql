SELECT sum(assignment_submissions.duration) as total_duration FROM assignment_submissions
WHERE student_id IN
(SELECT id FROM students
WHERE cohort_id IN
(SELECT id FROM cohorts
 WHERE cohorts.name = 'FEB12'))