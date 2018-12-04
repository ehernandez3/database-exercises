USE employees;

SELECT CONCAT();


# assign an alias to a column name or table
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 25;

# SELECT CONCAT(first_name, ' ', last_name) AS full_name
# FROM employees
# ORDER BY full_name
# LIMIT 25;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
GROUP BY full_name
ORDER BY last_name
LIMIT 25;



SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;


SELECT hire_date, COUNT(*) as number_hired
FROM employees
GROUP BY hire_date
ORDER BY number_hired DESC
LIMIT 10;




SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees AS emp
GROUP BY full_name
ORDER BY last_name
LIMIT 25;
