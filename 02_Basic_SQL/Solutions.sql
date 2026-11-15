```sql
-- ==========================================
-- SQL MASTERY JOURNEY
-- Topic: SQL Solutions - Level 2
-- Database: college_db
-- ==========================================

USE college_db;


-- ==========================================
-- PART A: IDENTIFY THE COMMAND CATEGORY
-- ==========================================

-- Q1: CREATE belongs to DDL
-- Q2: INSERT belongs to DML
-- Q3: SELECT belongs to DQL
-- Q4: GRANT belongs to DCL
-- Q5: COMMIT belongs to TCL
-- Q6: ALTER belongs to DDL
-- Q7: UPDATE belongs to DML
-- Q8: ROLLBACK belongs to TCL


-- ==========================================
-- PART B: UNDERSTAND THE COMMANDS
-- ==========================================

-- Q9: Remove selected rows
DELETE FROM Students
WHERE student_id = 102;

-- Q10: Remove a table and its structure
-- DROP TABLE Teachers;

-- Q11: Add a new column
ALTER TABLE Teachers
ADD COLUMN salary INT;

-- Q12: Retrieve data
SELECT *
FROM Students;

-- Q13: Add new records
INSERT INTO Students
(student_id, student_name, department, age, city, marks)
VALUES
(106, 'Sneha', 'ISE', 22, 'Manipal', 88);

-- Q14: Give database privileges
-- GRANT SELECT ON college_db.Students TO 'user_name';

-- Q15: Undo uncommitted transaction changes
-- ROLLBACK;


-- ==========================================
-- PART C: WRITE SQL QUERIES
-- ==========================================

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
(106, 'Sneha', 'ISE', 22, 'Manipal', 88);


-- Q19: Change Sneha's marks to 90

UPDATE Students
SET marks = 90
WHERE student_id = 106;


-- Q20: Delete Sneha's record

DELETE FROM Students
WHERE student_id = 106;


-- ==========================================
-- PART D: WHERE CLAUSE
-- ==========================================

-- Q21: Students scoring more than 80

SELECT *
FROM Students
WHERE marks > 80;


-- Q22: Students belonging to CSE

SELECT *
FROM Students
WHERE department = 'CSE';


-- Q23: Students whose age is 21

SELECT *
FROM Students
WHERE age = 21;


-- Q24: Students whose marks are <= 85

SELECT *
FROM Students
WHERE marks <= 85;


-- ==========================================
-- PART E: LOGICAL OPERATORS
-- ==========================================

-- Q25: CSE students scoring more than 85

SELECT *
FROM Students
WHERE department = 'CSE'
AND marks > 85;


-- Q26: Students belonging to CSE or ECE

SELECT *
FROM Students
WHERE department = 'CSE'
OR department = 'ECE';


-- Q27: Students not belonging to CSE

SELECT *
FROM Students
WHERE NOT department = 'CSE';


-- ==========================================
-- PART F: IN, NOT IN AND BETWEEN
-- ==========================================

-- Q28: Students from CSE, ECE or ISE

SELECT *
FROM Students
WHERE department IN ('CSE', 'ECE', 'ISE');


-- Q29: Students not from CSE or ECE

SELECT *
FROM Students
WHERE department NOT IN ('CSE', 'ECE');


-- Q30: Students scoring between 80 and 90

SELECT *
FROM Students
WHERE marks BETWEEN 80 AND 90;


-- ==========================================
-- PART G: LIKE OPERATOR
-- ==========================================

-- Q31: Names starting with A

SELECT *
FROM Students
WHERE student_name LIKE 'A%';


-- Q32: Names ending with a

SELECT *
FROM Students
WHERE student_name LIKE '%a';


-- Q33: Names containing the letter n

SELECT *
FROM Students
WHERE student_name LIKE '%n%';


-- ==========================================
-- PART H: DISTINCT
-- ==========================================

-- Q34: Display unique departments

SELECT DISTINCT department
FROM Students;


-- Q35: Display unique cities

SELECT DISTINCT city
FROM Students;


-- ==========================================
-- PART I: ORDER BY AND LIMIT
-- ==========================================

-- Q36: Marks in ascending order

SELECT *
FROM Students
ORDER BY marks ASC;


-- Q37: Marks in descending order

SELECT *
FROM Students
ORDER BY marks DESC;


-- Q38: Top 3 students based on marks

SELECT *
FROM Students
ORDER BY marks DESC
LIMIT 3;


-- Q39: First 2 student records

SELECT *
FROM Students
LIMIT 2;


-- ==========================================
-- PART J: NULL VALUES
-- ==========================================

-- Q40: Students whose city is NULL

SELECT *
FROM Students
WHERE city IS NULL;


-- Q41: Students whose city is NOT NULL

SELECT *
FROM Students
WHERE city IS NOT NULL;


-- ==========================================
-- PART K: AGGREGATE FUNCTIONS
-- ==========================================

-- Q42: Count total students

SELECT COUNT(*)
FROM Students;


-- Q43: Average marks

SELECT AVG(marks)
FROM Students;


-- Q44: Highest marks

SELECT MAX(marks)
FROM Students;


-- Q45: Lowest marks

SELECT MIN(marks)
FROM Students;


-- Q46: Total marks

SELECT SUM(marks)
FROM Students;


-- ==========================================
-- PART L: GROUP BY
-- ==========================================

-- Q47: Count students in each department

SELECT department, COUNT(*)
FROM Students
GROUP BY department;


-- Q48: Average marks in each department

SELECT department, AVG(marks)
FROM Students
GROUP BY department;


-- Q49: Maximum marks in each department

SELECT department, MAX(marks)
FROM Students
GROUP BY department;


-- ==========================================
-- PART M: HAVING
-- ==========================================

-- Q50: Departments having more than one student

SELECT department, COUNT(*)
FROM Students
GROUP BY department
HAVING COUNT(*) > 1;


-- Q51: Departments with average marks above 80

SELECT department, AVG(marks)
FROM Students
GROUP BY department
HAVING AVG(marks) > 80;


-- ==========================================
-- PART N: COMBINED SQL QUERIES
-- ==========================================

-- Q52: CSE students in descending order of marks

SELECT *
FROM Students
WHERE department = 'CSE'
ORDER BY marks DESC;


-- Q53: Average marks of CSE students

SELECT AVG(marks)
FROM Students
WHERE department = 'CSE';


-- Q54: Count students in each city

SELECT city, COUNT(*)
FROM Students
GROUP BY city;


-- Q55: Departments having at least 2 students
-- who scored more than 80 marks

SELECT department, COUNT(*)
FROM Students
WHERE marks > 80
GROUP BY department
HAVING COUNT(*) >= 2;


-- ==========================================
-- PART O: INTERVIEW QUESTIONS
-- ==========================================

-- Q56: Difference between WHERE and HAVING
--
-- WHERE filters individual rows before grouping.
-- HAVING filters groups after GROUP BY.


-- Q57: Difference between ORDER BY and GROUP BY
--
-- ORDER BY sorts the query result.
-- GROUP BY combines rows with matching values
-- into groups, usually for aggregate calculations.


-- Q58: Difference between COUNT(*) and COUNT(column_name)
--
-- COUNT(*) counts all rows.
-- COUNT(column_name) counts only non-NULL values
-- in that particular column.


-- Q59: Why is DISTINCT used?
--
-- DISTINCT removes duplicate values from
-- the query result.


-- Q60: Difference between NULL and 0
--
-- NULL represents a missing or unknown value.
-- 0 is an actual numeric value.


-- Q61: Purpose of LIMIT
--
-- LIMIT restricts the number of rows returned.


-- Q62: Can aggregate functions be used with GROUP BY?

      Yes. Functions such as COUNT(), SUM(), AVG(),
       MIN() and MAX() can be used with GROUP BY.


-- Q63: Logical execution order of a SELECT query
--
-- 1. FROM
-- 2. WHERE
-- 3. GROUP BY
-- 4. HAVING
-- 5. SELECT
-- 6. DISTINCT
-- 7. ORDER BY
-- 8. LIMIT


-- ==========================================
-- END OF LEVEL 2 SOLUTIONS
-- ==========================================
```