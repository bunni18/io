# Public Services Data Analysis (MySQL)

## Objective
Provide accurate summary reporting on participation and benefit distribution
across public assistance programs.

## Database
- MySQL 8.x (Avien Console)
- 3 normalized tables: citizens, programs, enrollments

## Business Questions Answered
- How many participants are enrolled per program?
- What is the average benefit amount per program?
- What is the total benefit distribution?

## SQL Techniques Used
- JOINs
- Aggregation (COUNT, AVG, SUM)
- FLOOR for government-style rounding
- Grouped reporting

## Validation
Queries were executed in a live MySQL environment.
Screenshots included for verification.

## Outcome
Produces clear, auditable metrics that support funding and program evaluation decisions.

## Screenshots

### Database Tables Created
![Tables Created](screenshots/Create_Table.png)
![Tables Created](screenshots/Create_Table_2.png)

### Database INSERT Data
![Data Inserted Into Tables](screenshots/Insert_INTO.png)

### Summary Query Results
![Summary Results](screenshots/Core_Analytic_Query.png)

[Return to Home Screen](index.html)




