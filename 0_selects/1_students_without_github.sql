SELECT id, name, email, cohort_id
FROM students
WHERE github IS NULL
ORDER BY cohort_id


/* Select their id, name, email, and cohort_id.
Order them by cohort_id. */