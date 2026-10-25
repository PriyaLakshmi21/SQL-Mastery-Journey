-- SQL MASTERY JOURNEY
-- Topic: SQL Commands and Basic Queries
-- Database: college_db
-- ==========================================

-- Select the database to work with
USE college_db;

-- 1. DDL: Create a table
-- Creates a table for storing department details

CREATE TABLE IF NOT EXISTS Departments (
department_id INT PRIMARY KEY,
department_name VARCHAR(50)
);

-- 2. DML: Insert records
-- Adds department records to the Departments table

INSERT INTO Departments (department_id, department_name)
VALUES
(1, 'CSE'),
(2, 'ECE'),
(3, 'ISE');

-- 3. DQL: Retrieve all department records

SELECT *
FROM Departments;

-- 4. DQL: Retrieve specific columns

SELECT department_name
FROM Departments;

-- 5. DML: Update an existing record
-- Changes the department name for department_id 3

UPDATE Departments
SET department_name = 'Information Science'
WHERE department_id = 3;

-- 6. DML: Delete a specific record
-- Deletes department_id 2

DELETE FROM Departments
WHERE department_id = 2;

-- 7. DDL: Add a column to an existing table

ALTER TABLE Departments
ADD COLUMN location VARCHAR(50);

-- 8. DDL: Rename a table
-- Uncomment this command only when you intentionally want to rename it.

-- RENAME TABLE Departments TO CollegeDepartments;

-- 9. DDL: Remove a table
-- WARNING: This permanently removes the table structure and its data.
-- Run only if you intentionally want to delete this example table.

-- DROP TABLE Departments;

-- End of examples
