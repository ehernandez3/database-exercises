USE employees;

SELECT * FROM employees;

# ORDER BY ASCENDING
SELECT * FROM employees
ORDER BY first_name;

# ORDER BY DESCENDING
SELECT * FROM employees
ORDER BY first_name DESC;


SELECT * FROM employees
Where first_name LIKE 'R%'
ORDER BY first_name;


SELECT first_name, last_name FROM employees
ORDER BY first_name, last_name DESC;

SELECT first_name, last_name FROM employees
ORDER BY first_name DESC, last_name;

# first employee hired
SELECT * FROM employees
ORDER BY hire_date;

# last employee hired
SELECT * FROM employees
ORDER BY hire_date DESC;

