USE employees;

SELECT gender FROM employees
GROUP BY gender;

SELECT gender, COUNT(*) FROM employees
GROUP BY gender;

# Grouping by multiple columns
SELECT first_name, last_name FROM employees
GROUP BY first_name, last_name;

SELECT first_name, last_name FROM employees
GROUP BY first_name DESC, last_name;

SELECT first_name, last_name, COUNT(*) FROM employees
GROUP BY first_name DESC, last_name;


# Return the longest first name
SELECT first_name, length(first_name) FROM employees
GROUP BY first_name;

SELECT first_name, length(first_name) FROM employees
GROUP BY first_name DESC;

SELECT first_name, length(first_name) FROM employees
GROUP BY first_name
ORDER BY length(first_name) DESC
LIMIT 1;

SELECT first_name, length(first_name) FROM employees  # Need to be in this order (SELECT)
WHERE first_name LIKE 'a%'                            # Need to be in this order (WHERE)
GROUP BY first_name                                   # Need to be in this order (GROUP BY)
ORDER BY length(first_name) DESC;                     # Need to be in this order (ORDER BY)


#================ AGGREGATE FUNCTIONS

# COUNT
# Find total number of employees
SELECT COUNT(*) FROM employees;

# Aggregating with group by
# Find total number of female and male employees
SELECT gender, COUNT(*) FROM employees
GROUP BY gender
ORDER BY COUNT(*);

# MIN and MAX
# Select the first and last hire date for each first name
DESCRIBE employees;
SELECT first_name, MIN(hire_date), MAX(hire_date) FROM employees
GROUP BY first_name;


SHOW TABLES;
DESCRIBE salaries;
SELECT COUNT(salary), MIN(salary), MAX(salary), AVG(salary), SUM(salary) FROM salaries;



SELECT emp_no, COUNT(salary), MIN(salary), MAX(salary), AVG(salary), SUM(salary) FROM salaries
GROUP BY emp_no
ORDER BY MAX(salary) DESC;