CREATE TABLE citizens (
  citizen_id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  date_of_birth DATE NOT NULL
);

CREATE TABLE programs (
  program_id INT AUTO_INCREMENT PRIMARY KEY,
  program_name VARCHAR(100) NOT NULL
);

CREATE TABLE enrollments (
  enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
  citizen_id INT NOT NULL,
  program_id INT NOT NULL,
  benefit_amount DECIMAL(10,2) NOT NULL,
  enrollment_date DATE NOT NULL
);
INSERT INTO programs (program_name)
VALUES
('Housing Assistance'),
('Food Assistance'),
('Workforce Training');
SELECT
  p.program_name,
  COUNT(e.enrollment_id) AS total_enrolled,
  FLOOR(AVG(e.benefit_amount)) AS avg_benefit_amount,
  SUM(e.benefit_amount) AS total_benefits
FROM enrollments e
JOIN programs p
  ON e.program_id = p.program_id
GROUP BY p.program_name;


INSERT INTO citizens (full_name, date_of_birth)
VALUES
('Alex Johnson', '1985-06-12'),
('Maria Lopez', '1990-03-22'),
('David Smith', '1978-11-05'),
('Tanya Brown', '1995-01-18');

INSERT INTO enrollments (citizen_id, program_id, benefit_amount, enrollment_date)
VALUES
(1, 1, 1200.00, '2024-01-10'),
(2, 2, 450.00, '2024-01-15'),
(3, 3, 800.00, '2024-02-01'),
(4, 3, 900.00, '2024-02-10');
