SELECT name, email, phone
FROM students
WHERE github IS NULL
And end_date IS NOT NULL;