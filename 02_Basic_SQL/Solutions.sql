-- ==========================================
-- SQL MASTERY JOURNEY
-- Topic: SQL Command Categories
-- Database: college_db
-- ==========================================

USE college_db;

-- Q16: Display all students
SELECT *
FROM Students;

-- Q17: Display only student names
SELECT student_name
FROM Students;

-- Q18: Insert a new student
INSERT INTO Students
(student_id, student_name, department, age, city, marks)
VALUES
(104, 'Sneha', 'ISE', 22, 'Manipal', 88);

-- Q19: Update Sneha's marks
UPDATE Students
SET marks = 90
WHERE student_id = 104;

-- Q20: Delete Sneha's record
DELETE FROM Students
WHERE student_id = 104;
-- ==========================================

-- ==========================================
-- End of Solutions
-- ==========================================
