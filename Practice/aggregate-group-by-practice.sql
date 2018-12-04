USE w3_db;

SHOW TABLES;

SELECT * FROM countries;
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM job_history;
SELECT * FROM jobs;
SELECT * FROM locations;
SELECT * FROM regions;

# 1. Write a query to list the number of jobs available in the employees table.
SELECT DISTINCT JOB_ID
FROM employees;

SELECT COUNT(DISTINCT JOB_ID)
FROM employees;

# 2. Write a query to get the total salaries payable to employees.

SELECT SUM(SALARY)
FROM employees;

# 3. Write a query to get the minimum salary from employees table.

# 4. Write a query to get the maximum salary of an employee working as a Programmer.

# 5. Write a query to get the average salary and number of employees working the department 90.

# 6. Write a query to get the highest, lowest, sum, and average salary of all employees.

# 7. Write a query to get the number of employees with the same job.

# 8. Write a query to get the difference between the highest and lowest salaries.

# 9.

# 10.

# 11.

# 12.

# 13.

# 14.


