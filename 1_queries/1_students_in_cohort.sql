-- Select their id and name.
-- Order them by their name in alphabetical order.
-- Since this query needs to work with any specific cohort, just use any number for the cohort_id. 

SELECT id, name
FROM students
WHERE cohort_id = 7
ORDER BY name

-- SELECT id, name, email, cohort_id
-- FROM students
-- WHERE github IS NULL
-- ORDER BY cohort_id