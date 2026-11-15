```sql
-- ==========================================
-- SQL MASTERY JOURNEY
-- Topic: SQL Commands and Basic Queries
-- Database: college_db
-- ==========================================

-- Select the database
USE college_db;


-- ==========================================
-- PART 1: DDL COMMANDS
-- ==========================================

-- 1. Create Departments table

CREATE TABLE IF NOT EXISTS Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- 2. Insert records into Departments

INSERT INTO Departments (department_id, department_name)
VALUES
(1, 'CSE'),
(2, 'ECE'),
(3, 'ISE');

-- 3. Display all departments

SELECT * FROM Departments;

-- 4. Display only department names

SELECT department_name
FROM Departments;

-- 5. Update department name

UPDATE Departments
SET department_name = 'Information Science'
WHERE department_id = 3;

-- 6. Delete a department

DELETE FROM Departments
WHERE department_id = 2;

-- 7. Add a new column

ALTER TABLE Departments
ADD COLUMN location VARCHAR(50);

-- Rename table example
-- RENAME TABLE Departments TO CollegeDepartments;

-- Drop table example
-- DROP TABLE Departments;


-- ==========================================
-- PART 2: CREATE STUDENTS TABLE
-- ==========================================

CREATE TABLE IF NOT EXISTS Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department VARCHAR(50),
    age INT,
    city VARCHAR(50),
    marks INT
);


-- ==========================================
-- PART 3: INSERT RECORDS
-- Run these INSERT statements only once.
-- ==========================================

INSERT INTO Students
(student_id, student_name, department, age, city, marks)
VALUES
(101, 'Priya', 'CSE', 21, 'Udupi', 85),
(102, 'Ananya', 'ECE', 20, 'Mangalore', 90),
(103, 'Rahul', 'ISE', 21, 'Bangalore', 78),
(104, 'Sneha', 'CSE', 20, 'Udupi', 88),
(105, 'Kiran', 'CSE', 21, 'Bangalore', 91);


-- ==========================================
-- PART 4: SELECT COMMAND
-- ==========================================

-- Display all records

SELECT * FROM Students;

-- Display selected columns

SELECT student_name, department
FROM Students;


-- ==========================================
-- PART 5: WHERE CLAUSE
-- ==========================================

-- Students scoring more than 80

SELECT *
FROM Students
WHERE marks > 80;

-- Students belonging to CSE

SELECT *
FROM Students
WHERE department = 'CSE';

-- Students aged 21

SELECT *
FROM Students
WHERE age = 21;


-- ==========================================
-- PART 6: COMPARISON OPERATORS
-- ==========================================

SELECT * FROM Students WHERE marks = 85;

SELECT * FROM Students WHERE marks != 85;

SELECT * FROM Students WHERE marks > 80;

SELECT * FROM Students WHERE marks < 90;

SELECT * FROM Students WHERE marks >= 85;

SELECT * FROM Students WHERE marks <= 90;


-- ==========================================
-- PART 7: AND, OR, NOT OPERATORS
-- ==========================================

-- AND: Both conditions must be true

SELECT *
FROM Students
WHERE department = 'CSE' AND marks > 85;

-- OR: At least one condition must be true

SELECT *
FROM Students
WHERE department = 'CSE' OR department = 'ECE';

-- NOT: Negates a condition

SELECT *
FROM Students
WHERE NOT department = 'CSE';


-- ==========================================
-- PART 8: IN AND NOT IN
-- ==========================================

-- Students from CSE or ECE

SELECT *
FROM Students
WHERE department IN ('CSE', 'ECE');

-- Students not from CSE or ECE

SELECT *
FROM Students
WHERE department NOT IN ('CSE', 'ECE');


-- ==========================================
-- PART 9: BETWEEN OPERATOR
-- ==========================================

-- Students scoring between 80 and 90

SELECT *
FROM Students
WHERE marks BETWEEN 80 AND 90;


-- ==========================================
-- PART 10: LIKE OPERATOR
-- ==========================================

-- Names starting with A

SELECT *
FROM Students
WHERE student_name LIKE 'A%';

-- Names ending with a

SELECT *
FROM Students
WHERE student_name LIKE '%a';

-- Names containing y

SELECT *
FROM Students
WHERE student_name LIKE '%y%';

-- Names with exactly five characters

SELECT *
FROM Students
WHERE student_name LIKE '_____';


-- ==========================================
-- PART 11: DISTINCT
-- ==========================================

-- Display unique departments

SELECT DISTINCT department
FROM Students;

-- Display unique cities

SELECT DISTINCT city
FROM Students;


-- ==========================================
-- PART 12: ORDER BY
-- ==========================================

-- Sort marks in ascending order

SELECT *
FROM Students
ORDER BY marks ASC;

-- Sort marks in descending order

SELECT *
FROM Students
ORDER BY marks DESC;

-- Sort by department and then marks

SELECT *
FROM Students
ORDER BY department ASC, marks DESC;


-- ==========================================
-- PART 13: LIMIT
-- ==========================================

-- Display top 3 students

SELECT *
FROM Students
ORDER BY marks DESC
LIMIT 3;

-- Display first 2 students

SELECT *
FROM Students
LIMIT 2;


-- ==========================================
-- PART 14: NULL VALUES
-- ==========================================

-- Find students whose city is NULL

SELECT *
FROM Students
WHERE city IS NULL;

-- Find students whose city is NOT NULL

SELECT *
FROM Students
WHERE city IS NOT NULL;


-- ==========================================
-- PART 15: AGGREGATE FUNCTIONS
-- ==========================================

-- Count total students

SELECT COUNT(*)
FROM Students;

-- Calculate total marks

SELECT SUM(marks)
FROM Students;

-- Calculate average marks

SELECT AVG(marks)
FROM Students;

-- Find highest marks

SELECT MAX(marks)
FROM Students;

-- Find lowest marks

SELECT MIN(marks)
FROM Students;


-- ==========================================
-- PART 16: GROUP BY
-- ==========================================

-- Count students in each department

SELECT department, COUNT(*)
FROM Students
GROUP BY department;

-- Calculate average marks in each department

SELECT department, AVG(marks)
FROM Students
GROUP BY department;

-- Find highest marks in each department

SELECT department, MAX(marks)
FROM Students
GROUP BY department;


-- ==========================================
-- PART 17: HAVING
-- ==========================================

-- Departments having more than one student

SELECT department, COUNT(*)
FROM Students
GROUP BY department
HAVING COUNT(*) > 1;

-- Departments with average marks above 80

SELECT department, AVG(marks)
FROM Students
GROUP BY department
HAVING AVG(marks) > 80;


-- ==========================================
-- PART 18: WHERE + GROUP BY + HAVING
-- ==========================================

-- Consider only students scoring above 80.
-- Group them by department.
-- Display departments having at least 2 such students.

SELECT department, COUNT(*)
FROM Students
WHERE marks > 80
GROUP BY department
HAVING COUNT(*) >= 2;


-- ==========================================
-- PART 19: COMBINED QUERIES
-- ==========================================

-- Top 3 students from CSE

SELECT *
FROM Students
WHERE department = 'CSE'
ORDER BY marks DESC
LIMIT 3;

-- Average marks of students from CSE

SELECT AVG(marks)
FROM Students
WHERE department = 'CSE';

-- Count students in each city

SELECT city, COUNT(*)
FROM Students
GROUP BY city;

-- Departments with average marks above 80,
-- sorted by average marks in descending order

SELECT department, AVG(marks)
FROM Students
GROUP BY department
HAVING AVG(marks) > 80
ORDER BY AVG(marks) DESC;


-- ==========================================
-- PART 20: UPDATE AND DELETE EXAMPLES
-- ==========================================

-- Update marks of student 105
-- Uncomment to execute

-- UPDATE Students
-- SET marks = 95
-- WHERE student_id = 105;

-- Delete student with ID 105
-- Uncomment to execute

-- DELETE FROM Students
-- WHERE student_id = 105;


-- ==========================================
-- END OF LEVEL 2: BASIC SQL
-- ==========================================
```