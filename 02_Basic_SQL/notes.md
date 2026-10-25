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
