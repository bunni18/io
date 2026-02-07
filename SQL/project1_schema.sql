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
