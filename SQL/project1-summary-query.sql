SELECT
  p.program_name,
  COUNT(e.enrollment_id) AS total_enrolled,
  FLOOR(AVG(e.benefit_amount)) AS avg_benefit_amount,
  SUM(e.benefit_amount) AS total_benefits
FROM enrollments e
JOIN programs p
  ON e.program_id = p.program_id
GROUP BY p.program_name;
