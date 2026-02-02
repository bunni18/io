-- Create the main Citizen Registry
CREATE TABLE citizens (
    citizen_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    zip_code VARCHAR(10),
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the Public Programs table
CREATE TABLE programs (
    program_id INT AUTO_INCREMENT PRIMARY KEY,
    program_name VARCHAR(100) NOT NULL,
    department VARCHAR(100),
    annual_budget DECIMAL(15, 2)
);

-- Link them with an Enrollment table
CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    citizen_id INT,
    program_id INT,
    benefit_amount DECIMAL(10, 2),
    FOREIGN KEY (citizen_id) REFERENCES citizens(citizen_id),
    FOREIGN KEY (program_id) REFERENCES programs(program_id)
);
