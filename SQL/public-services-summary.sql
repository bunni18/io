SELECT
  p.program_name,
  COUNT(*) AS total_enrolled,
  FLOOR(AVG(e.benefit_amount)) AS avg_benefit
FROM enrollments e
JOIN programs p ON e.program_id = p.program_id
GROUP BY p.program_name;

