# SQL Command Categories

## 1. Introduction to SQL Commands

SQL stands for Structured Query Language. It is used to communicate with relational database management systems (RDBMS) such as MySQL.

SQL commands are instructions used to perform operations on a database, including creating tables, inserting records, retrieving information, and modifying data.

## 2. Categories of SQL Commands

SQL commands are commonly classified into five categories:

1. DDL — Data Definition Language
2. DML — Data Manipulation Language
3. DQL — Data Query Language
4. DCL — Data Control Language
5. TCL — Transaction Control Language

### 2.1 DDL — Data Definition Language

**Definition:** DDL commands are used to define or modify the structure of database objects, such as databases and tables.

| Command  | Purpose                                                     |
| -------- | ----------------------------------------------------------- |
| CREATE   | Creates database objects                                    |
| ALTER    | Changes the structure of an existing object                 |
| DROP     | Removes a database object                                   |
| TRUNCATE | Removes all rows from a table while retaining its structure |
| RENAME   | Renames an object where supported                           |

**Example:**

```sql
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);
```

This query creates a table named `Departments`.

### 2.2 DML — Data Manipulation Language

**Definition:** DML commands are used to insert, modify, and remove data stored in tables.

| Command | Purpose                   |
| ------- | ------------------------- |
| INSERT  | Adds new records          |
| UPDATE  | Modifies existing records |
| DELETE  | Removes records           |

**Example:**

```sql
INSERT INTO Students
    (student_id, student_name, department, age, city, marks)
VALUES
    (104, 'Kiran', 'CSE', 21, 'Udupi', 88);
```

This query inserts a new student record into the `Students` table.

### 2.3 DQL — Data Query Language

**Definition:** DQL is a commonly used classification for SQL commands that retrieve data from a database.

| Command | Purpose                    |
| ------- | -------------------------- |
| SELECT  | Retrieves data from tables |

**Example:**

```sql
SELECT student_name, marks
FROM Students;
```

This query displays the names and marks of students.

### 2.4 DCL — Data Control Language

**Definition:** DCL commands control access and permissions in a database.

| Command | Purpose                        |
| ------- | ------------------------------ |
| GRANT   | Gives privileges to a user     |
| REVOKE  | Removes privileges from a user |

**Example:**

```sql
GRANT SELECT ON college_db.Students TO 'student_user'@'localhost';
```

This illustrates granting permission to retrieve data from the `Students` table. The database account must exist, and the executing account must have the necessary privileges.

### 2.5 TCL — Transaction Control Language

**Definition:** TCL commands manage transactions in a database.

A transaction is a group of database operations handled as a unit.

| Command   | Purpose                                                   |
| --------- | --------------------------------------------------------- |
| COMMIT    | Commits changes made in the current transaction           |
| ROLLBACK  | Reverses uncommitted changes where supported              |
| SAVEPOINT | Creates a point within a transaction for partial rollback |

**Example:**

```sql
START TRANSACTION;

UPDATE Students
SET marks = 95
WHERE student_id = 104;

ROLLBACK;
```

This example demonstrates reversing an uncommitted change in a transaction, provided the table uses a transactional storage engine such as InnoDB and the transaction remains active.

## 3. Difference Between DELETE, TRUNCATE, and DROP

| Feature                  | DELETE       | TRUNCATE         | DROP                                        |
| ------------------------ | ------------ | ---------------- | ------------------------------------------- |
| Purpose                  | Removes rows | Removes all rows | Removes the table or other specified object |
| Supports WHERE           | Yes          | No               | No                                          |
| Table structure remains  | Yes          | Yes              | No, if the table itself is dropped          |
| Can target selected rows | Yes          | No               | No                                          |

### DELETE Example

```sql
DELETE FROM Students
WHERE student_id = 104;
```

Removes the student record whose ID is 104.

### TRUNCATE Example

```sql
TRUNCATE TABLE Students;
```

Removes all rows from `Students` while retaining its table structure.

**Warning:** This removes every student record. Do not run it on your learning database unless you intentionally want to clear the table.

### DROP Example

```sql
DROP TABLE Students;
```

Removes the `Students` table itself, including its structure and data.

**Warning:** Do not execute this example on your current learning table unless you intend to remove it.

## 4. Quick Revision

| Category | Main purpose               | Common commands               |
| -------- | -------------------------- | ----------------------------- |
| DDL      | Defines database structure | CREATE, ALTER, DROP, TRUNCATE |
| DML      | Manipulates data           | INSERT, UPDATE, DELETE        |
| DQL      | Retrieves data             | SELECT                        |
| DCL      | Controls permissions       | GRANT, REVOKE                 |
| TCL      | Controls transactions      | COMMIT, ROLLBACK, SAVEPOINT   |

## 5. Placement Interview Questions

1. What is the difference between DDL and DML?
2. What is the difference between DELETE, TRUNCATE, and DROP?
3. Which SQL command retrieves records from a table?
4. What are GRANT and REVOKE used for?
5. What is a transaction?
6. What is the purpose of COMMIT and ROLLBACK?

## 6. Important Notes

* `SELECT` retrieves data without modifying the stored records.
* `DELETE` removes rows, not individual columns.
* `TRUNCATE` removes all rows but preserves the table structure.
* `DROP TABLE` removes the table itself.

## 7. Filtering Records Using WHERE

The `WHERE` clause is used to filter records based on a specified condition.

**Syntax:**

```sql
SELECT column_name
FROM table_name
WHERE condition;
```

**Example:**

```sql
SELECT *
FROM Students
WHERE marks > 80;
```

This query displays students who scored more than 80 marks.

### 7.1 Comparison Operators

| Operator | Purpose |
|---|---|
| `=` | Equal to |
| `>` | Greater than |
| `<` | Less than |
| `>=` | Greater than or equal to |
| `<=` | Less than or equal to |
| `<>` | Not equal to |

### 7.2 Logical Operators

- `AND` – All conditions must be true.
- `OR` – At least one condition must be true.
- `NOT` – Reverses a condition.

**Example:**

```sql
SELECT *
FROM Students
WHERE department = 'CSE' AND marks > 80;
```

### 7.3 IN and NOT IN

`IN` checks whether a value matches any value in a specified list.

```sql
SELECT *
FROM Students
WHERE department IN ('CSE', 'ISE');
```

`NOT IN` excludes the specified values.

```sql
SELECT *
FROM Students
WHERE department NOT IN ('CSE', 'ISE');
```

### 7.4 BETWEEN

`BETWEEN` checks whether a value falls within a specified range. Both endpoints are included.

```sql
SELECT *
FROM Students
WHERE marks BETWEEN 60 AND 90;
```

### 7.5 LIKE

`LIKE` is used to search for a specified pattern in a column.

| Wildcard | Meaning |
|---|---|
| `%` | Zero or more characters |
| `_` | Exactly one character |

**Examples:**

```sql
-- Names starting with A
SELECT *
FROM Students
WHERE student_name LIKE 'A%';

-- Names ending with A
SELECT *
FROM Students
WHERE student_name LIKE '%A';

-- Names containing A
SELECT *
FROM Students
WHERE student_name LIKE '%A%';
```

## 8. DISTINCT

`DISTINCT` is used to retrieve unique values and remove duplicates from the result.

**Syntax:**

```sql
SELECT DISTINCT column_name
FROM table_name;
```

**Example:**

```sql
SELECT DISTINCT department
FROM Students;
```

This query displays each department only once.

## 9. ORDER BY

`ORDER BY` is used to sort records in ascending or descending order.

| Keyword | Purpose |
|---|---|
| ASC | Ascending order |
| DESC | Descending order |

**Example:**

```sql
SELECT *
FROM Students
ORDER BY marks DESC;
```

This displays students from highest marks to lowest marks.

Multiple-column sorting:

```sql
SELECT *
FROM Students
ORDER BY department ASC, marks DESC;
```

This sorts departments alphabetically and marks from highest to lowest within each department.

## 10. LIMIT

`LIMIT` restricts the number of rows returned by a query. It is supported by MySQL.

**Example:**

```sql
SELECT *
FROM Students
ORDER BY marks DESC
LIMIT 3;
```

This displays the top three students based on marks.

## 11. NULL Values

`NULL` represents a missing or unknown value in a database.

### 11.1 IS NULL

Used to find records containing NULL values.

```sql
SELECT *
FROM Students
WHERE city IS NULL;
```

### 11.2 IS NOT NULL

Used to find records that do not contain NULL values.

```sql
SELECT *
FROM Students
WHERE city IS NOT NULL;
```

**Important:** Use `IS NULL` or `IS NOT NULL`, not `= NULL`.

## 12. Aggregate Functions

Aggregate functions perform calculations on multiple rows and return a single result.

| Function | Purpose |
|---|---|
| COUNT() | Counts records |
| SUM() | Calculates total |
| AVG() | Calculates average |
| MIN() | Finds the minimum value |
| MAX() | Finds the maximum value |

**Examples:**

```sql
-- Count students
SELECT COUNT(*) FROM Students;

-- Total marks
SELECT SUM(marks) FROM Students;

-- Average marks
SELECT AVG(marks) FROM Students;

-- Lowest marks
SELECT MIN(marks) FROM Students;

-- Highest marks
SELECT MAX(marks) FROM Students;
```

**Important:** Most aggregate functions ignore NULL values. `COUNT(*)` counts all rows.

## 13. GROUP BY

`GROUP BY` is used to group rows that have the same values in a specified column. It is commonly used with aggregate functions.

**Syntax:**

```sql
SELECT column_name, AGGREGATE_FUNCTION(column)
FROM table_name
GROUP BY column_name;
```

**Example:**

```sql
SELECT department, AVG(marks)
FROM Students
GROUP BY department;
```

This calculates the average marks separately for each department.

Other examples:

```sql
-- Total marks department-wise
SELECT department, SUM(marks)
FROM Students
GROUP BY department;

-- Number of students in each department
SELECT department, COUNT(*)
FROM Students
GROUP BY department;

-- Highest marks in each department
SELECT department, MAX(marks)
FROM Students
GROUP BY department;
```

## 14. HAVING

`HAVING` is used to filter groups created by `GROUP BY`.

**Syntax:**

```sql
SELECT column_name, AGGREGATE_FUNCTION(column)
FROM table_name
GROUP BY column_name
HAVING condition;
```

**Example:**

```sql
SELECT department, AVG(marks)
FROM Students
GROUP BY department
HAVING AVG(marks) > 80;
```

This displays departments whose average marks are greater than 80.

### 14.1 Difference Between WHERE and HAVING

| WHERE | HAVING |
|---|---|
| Filters individual rows | Filters groups |
| Applied before GROUP BY | Applied after GROUP BY |
| Commonly used for row conditions | Commonly used with aggregate functions |

**Example using WHERE:**

```sql
SELECT *
FROM Students
WHERE marks > 70;
```

**Example using HAVING:**

```sql
SELECT department, AVG(marks)
FROM Students
GROUP BY department
HAVING AVG(marks) > 75;
```

### 14.2 Combining WHERE, GROUP BY and HAVING

```sql
SELECT department, COUNT(*)
FROM Students
WHERE marks > 70
GROUP BY department
HAVING COUNT(*) > 1;
```

This query:
1. Selects students scoring above 70.
2. Groups them department-wise.
3. Displays departments having more than one qualifying student.

## 15. SQL Query Execution Order

The logical processing order of a typical SELECT query is:

1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY
7. LIMIT

## 16. Important Revision Points

- `WHERE` filters individual records.
- `HAVING` filters groups.
- `DISTINCT` removes duplicate values from query results.
- `ORDER BY ASC` sorts in ascending order.
- `ORDER BY DESC` sorts in descending order.
- `LIMIT` restricts the number of returned rows.
- `BETWEEN` includes both boundary values.
- `GROUP BY` is commonly used with aggregate functions.
- `COUNT(*)` counts rows, including rows containing NULL values.
- `IS NULL` checks for missing values.