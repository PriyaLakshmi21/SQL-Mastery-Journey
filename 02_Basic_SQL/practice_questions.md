# SQL Command Categories — Practice Questions and Answers

## Part A: Identify the Command Category

### 1. Which category does CREATE belong to?

**Answer:** DDL (Data Definition Language).

**Explanation:** CREATE is used to create database objects, such as tables.

### 2. Which category does INSERT belong to?

**Answer:** DML (Data Manipulation Language).

**Explanation:** INSERT adds new records to an existing table.

### 3. Which category does SELECT belong to?

**Answer:** DQL (Data Query Language).

**Explanation:** SELECT retrieves data from a table.

### 4. Which category does GRANT belong to?

**Answer:** DCL (Data Control Language).

**Explanation:** GRANT gives database privileges to a user.

### 5. Which category does COMMIT belong to?

**Answer:** TCL (Transaction Control Language).

**Explanation:** COMMIT saves transaction changes.

### 6. Which category does ALTER belong to?

**Answer:** DDL.

**Explanation:** ALTER changes the structure of an existing database object.

### 7. Which category does UPDATE belong to?

**Answer:** DML.

**Explanation:** UPDATE modifies existing records.

### 8. Which category does ROLLBACK belong to?

**Answer:** TCL.

**Explanation:** ROLLBACK undoes uncommitted transaction changes, subject to the database's transaction rules.

---

## Part B: Understand the Commands

### 9. Which command removes selected rows from a table?

**Answer:** DELETE.

Example:

```sql
DELETE FROM Students
WHERE student_id = 102;
```

### 10. Which command removes a table's structure and its data?

**Answer:** DROP.

Example:

```sql
DROP TABLE Teachers;
```

**Warning:** This removes the table itself. Run it only when you intend to remove the table.

### 11. Which command adds a new column to an existing table?

**Answer:** ALTER.

Example:

```sql
ALTER TABLE Teachers
ADD COLUMN salary INT;
```

### 12. Which command retrieves data from a table?

**Answer:** SELECT.

Example:

```sql
SELECT * FROM Students;
```

### 13. Which command adds new records to a table?

**Answer:** INSERT.

### 14. Which command gives database privileges to a user?

**Answer:** GRANT.

### 15. Which command can undo uncommitted changes in a transaction?

**Answer:** ROLLBACK.

---

## Part C: Write SQL Queries

Use the `Students` table in the `college_db` database.

Columns: `student_id`, `student_name`, `department`, `age`, `city`, `marks`.

### 16. Write a query to display all students.

**Answer:**

```sql
SELECT *
FROM Students;
```

### 17. Write a query to display only student names.

**Answer:**

```sql
SELECT student_name
FROM Students;
```

### 18. Insert a student with these details:

* ID: 104
* Name: Sneha
* Department: ISE
* Age: 22
* City: Manipal
* Marks: 88

**Answer:**

```sql
INSERT INTO Students
    (student_id, student_name, department, age, city, marks)
VALUES
    (104, 'Sneha', 'ISE', 22, 'Manipal', 88);
```

### 19. Change Sneha's marks to 90.

**Answer:**

```sql
UPDATE Students
SET marks = 90
WHERE student_id = 104;
```

### 20. Delete Sneha's record.

**Answer:**

```sql
DELETE FROM Students
WHERE student_id = 104;
```

**Important:** Questions 19 and 20 modify data. Understand the `UPDATE` and `DELETE` queries before executing them. Always check the `WHERE` condition to avoid accidentally affecting other records.

---

## Quick Revision

| Category | Full Form                    | Common Commands               |
| -------- | ---------------------------- | ----------------------------- |
| DDL      | Data Definition Language     | CREATE, ALTER, DROP, TRUNCATE |
| DML      | Data Manipulation Language   | INSERT, UPDATE, DELETE        |
| DQL      | Data Query Language          | SELECT                        |
| DCL      | Data Control Language        | GRANT, REVOKE                 |
| TCL      | Transaction Control Language | COMMIT, ROLLBACK, SAVEPOINT   |

**Note:** Some SQL references classify SELECT differently, but DQL is a widely used teaching classification. Exact transaction behaviour can vary by database system.

---

# Part D: Filtering Records — WHERE

Use the `Students` table.

### 21. Display students who scored more than 80 marks.

### 22. Display students who belong to the CSE department.

### 23. Display students whose age is 21.

### 24. Display students whose marks are less than or equal to 85.

---

# Part E: Logical Operators

### 25. Display CSE students who scored more than 85 marks.

### 26. Display students who belong to either CSE or ECE.

### 27. Display students who do not belong to the CSE department.

---

# Part F: IN, NOT IN and BETWEEN

### 28. Display students belonging to CSE, ECE or ISE using IN.

### 29. Display students who do not belong to CSE or ECE using NOT IN.

### 30. Display students whose marks are between 80 and 90.

---

# Part G: LIKE Operator

 31. Display students whose names start with 'A'.

### 32. Display students whose names end with 'a'.

### 33. Display students whose names contain the letter 'n'.

---

# Part H: DISTINCT

### 34. Display all unique departments.

### 35. Display all unique cities.

---

# Part I: ORDER BY and LIMIT

### 36. Display students in ascending order of marks.

### 37. Display students in descending order of marks.

### 38. Display the top 3 students based on marks.

### 39. Display the first 2 student records.

---

# Part J: NULL Values

### 40. Display students whose city is NULL.

### 41. Display students whose city is NOT NULL.

---

# Part K: Aggregate Functions

### 42. Count the total number of students.

### 43. Find the average marks of all students.

### 44. Find the highest marks.

### 45. Find the lowest marks.

### 46. Calculate the total marks of all students.

---

# Part L: GROUP BY

### 47. Count the number of students in each department.

### 48. Find the average marks in each department.

### 49. Find the maximum marks in each department.

---

# Part M: HAVING

### 50. Display departments having more than one student.

### 51. Display departments whose average marks are greater than 80.

---

# Part N: Combined SQL Queries

### 52. Display CSE students in descending order of marks.

### 53. Find the average marks of students belonging to CSE.

### 54. Count the number of students in each city.

### 55. Display departments having at least 2 students who scored more than 80 marks.

---

# Part O: Interview Questions

### 56. What is the difference between WHERE and HAVING?

### 57. What is the difference between ORDER BY and GROUP BY?

### 58. What is the difference between COUNT(*) and COUNT(column_name)?

### 59. Why is DISTINCT used in SQL?

### 60. What is the difference between NULL and 0?

### 61. What is the purpose of the LIMIT clause?

### 62. Can we use aggregate functions with GROUP BY?

### 63. What is the logical execution order of a basic SELECT query?

---

# End of Level 2 Practice Questions
