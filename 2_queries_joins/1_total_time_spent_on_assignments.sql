SELECT SUM(assignment_submissions.duration) 
From assignment_submissions 
INNER JOIN students
ON students.id = assignment_submissions.student_id
WHERE students.name = 'Ibrahim Schimmel'; 