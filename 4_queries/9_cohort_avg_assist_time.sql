-- We also need to know the average total amount of time being spent on an assistance request for each cohort. 
-- This is just the average of the total_duration column from the previous query.
-- Calculate the average total duration of assistance requests for each cohort.
-- Use the previous query as a sub query to determine the duration per cohort.
-- Return a single row average_total_duration

--  average_total_duration 
-- ------------------------
--  555:22:25.909091
-- (1 row)

SELECT AVG(total_duration) as average_total_duration 
FROM (
  SELECT cohorts.name AS cohort, SUM(completed_at - started_at) as total_duration
  FROM assistance_requests
  JOIN students ON students.id = assistance_requests.student_id
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.name
  ORDER by total_duration
) as total_durations;