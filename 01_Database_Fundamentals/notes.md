# SQL Mastery Journey

## Level 1: Database Fundamentals

### 1. What is Data?

Data means raw facts or information.

Example:

* Student name: Priya
* Age: 21
* Department: CSE
* Marks: 85

### 2. What is a Database?

A database is an organized collection of data that can be stored, accessed, and managed.

Example: A college database stores student details, courses, examination marks, and faculty information.

### 3. What is a DBMS?

DBMS stands for Database Management System.

It is software used to create, store, retrieve, update, and manage data in a database.

Examples: MySQL, PostgreSQL, and Oracle Database.

### 4. What is an RDBMS?

RDBMS stands for Relational Database Management System.

It organizes data into tables and supports relationships between those tables.

Example: MySQL.

### 5. What is SQL?

SQL stands for Structured Query Language.

It is used to communicate with relational databases.

SQL can be used to create tables, insert records, retrieve information, update data, and delete records

## 6. Tables, Rows, and Columns

A table stores related information in rows and columns.

* **Row:** Represents one complete record.
* **Column:** Represents one type of information.

Example:

| student_id | student_name | department |
| ---------- | ------------ | ---------- |
| 101        | Priya        | CSE        |
| 102        | Ananya       | ISE        |

## 7. Primary Key

A primary key uniquely identifies each record in a table.

Example: `student_id`

Rules:

* Primary key values must be unique.
* Primary key values cannot be NULL.

## 8. Foreign Key

A foreign key is a column or group of columns that references a primary key or another suitable unique key in a related table.

It helps maintain relationships between tables.

Example:

* `Students.student_id` is the primary key.
* `Enrollments.student_id` references it as a foreign key.

Foreign keys can contain duplicate values when multiple records refer to the same student.
