USE employees;

# Find all the employees with the same hire date as employee 101010 using a sub-query.
# 69 Rows

SELECT concat(first_name, ' ', last_name) AS Name
FROM employees
WHERE hire_date IN (
                   SELECT hire_date
                   FROM employees
                   WHERE emp_no = '101010');


# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles

SELECT title AS Titles, COUNT(*)
FROM titles
WHERE emp_no IN (
                  SELECT emp_no
                  FROM employees
                  WHERE first_name = "Aamod")
GROUP BY title;


# Find all the current department managers that are female.
#
# +------------+------------+
# | first_name | last_name  |
# +------------+------------+
# | Isamu      | Legleitner |
# | Karsten    | Sigstam    |
# | Leon       | DasSarma   |
# | Hilary     | Kambil     |
# +------------+------------+

SELECT CONCAT(first_name, ' ', last_name) AS `FEMALE MANAGERS`
FROM employees
WHERE gender = 'F' AND emp_no IN (
                                  SELECT emp_no
                                  FROM dept_manager
                                  WHERE to_date > NOW());



# ========= Bonuses ========= #
# Find all the department names that currently have female managers.
#
# +-----------------+
# | dept_name       |
# +-----------------+
# | Development     |
# | Finance         |
# | Human Resources |
# | Research        |
# +-----------------+

SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE to_date > NOW() AND emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
        )
    );


# Find the first and last name of the employee with the highest salary.
#
# +------------+-----------+
# | first_name | last_name |
# +------------+-----------+
# | Tokuyasu   | Pesch     |
# +------------+-----------+


SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE salary IN (
        SELECT MAX(salary)
        FROM salaries
        )
    );

SELECT * FROM salaries;

# SELECT column_a, column_b, column_c
# FROM table_a
# WHERE column_a IN (
#                   SELECT column_a
#                   FROM table_b
#                   WHERE column_b = true
#                   );