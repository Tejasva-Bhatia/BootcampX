SELECT AVG (total_duration) as average_total_duration
FROM (
  SELECT cohorts.name AS name, SUM(completed_at - started_at) as total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name

) as subquery