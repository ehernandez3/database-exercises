USE employees;

SELECT * FROM employees;




SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%';

# SHOWS FIRST 2 ON THE LIST
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%'
LIMIT 2 OFFSET 0;

# SHOWS FIRST 2 AFTER FIRST 2 ON THE LIST
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%'
LIMIT 2 OFFSET 30725;

# FORMULA FOR THE ABOVE
# OFFSET = LIMIT * PAGE - LIMIT


