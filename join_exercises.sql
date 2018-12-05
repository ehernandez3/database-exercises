USE employees;


SHOW TABLES;

DESCRIBE departments;
SELECT * FROM departments;
DESCRIBE dept_emp;
SELECT * FROM dept_emp;
DESCRIBE dept_manager;
SELECT * FROM dept_manager;
DESCRIBE employees;
SELECT * FROM employees;
DESCRIBE salaries;
DESCRIBE titles;
SELECT * FROM titles;

# 2. write a query that shows each department along with the
#    name of the current manager for that department.



SELECT d.dept_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS `Department Manager`
FROM employees AS e
        JOIN dept_manager AS dm
          ON dm.emp_no = e.emp_no
        JOIN departments AS d
          ON d.dept_no = dm.dept_no
WHERE dm.to_date > NOW()
ORDER BY `Department Name`;


# Find the name of all departments currently managed by women.

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
       JOIN dept_manager AS dm
         ON dm.emp_no = e.emp_no
       JOIN departments AS d
         ON d.dept_no = dm.dept_no
WHERE dm.to_date > NOW() AND e.gender = 'F'
ORDER BY d.dept_name;


# 4. Find the current titles of employees currently working in the Customer Service department.


SELECT * FROM departments; # dept_no
SELECT * FROM dept_emp; # emp_no, dept_no
SELECT * FROM titles; # emp_no

SELECT * FROM employees; # emp_no


SELECT t.title AS Title, COUNT(*) AS Count
FROM titles AS t
       JOIN dept_emp AS de
         ON de.emp_no = t.emp_no
       JOIN departments AS d
         ON d.dept_no = de.dept_no
WHERE de.dept_no = 'd009' and de.to_date > NOW()
  and t.to_date > NOW()
group by t.title;


# 5. Find the current salary of all current managers.

SELECT * FROM departments; # dept_no, dept_name
SELECT * FROM dept_manager; # emp_no, dept_no, to_date
SELECT * FROM employees; # emp_no, first_name, last_name
SELECT * FROM salaries; # emp_no, salary

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS Name, s.salary AS Salary
FROM departments AS d
        JOIN dept_manager AS dm
          ON dm.dept_no = d.dept_no
        JOIN salaries AS s
          ON s.emp_no = dm.emp_no
        JOIN employees AS e
          ON e.emp_no = dm.emp_no
WHERE dm.to_date > NOW() and s.to_date > NOW()
order by d.dept_name;

# Bonus Find the names of all current employees, their department name,
# and their current manager's name.

SELECT CONCAT(e.first_name, ' ', e.last_name) AS `Employee Name`, d.dept_name AS `Department Name`
FROM departments AS d
        JOIN dept_emp AS de
          ON de.dept_no = d.dept_no
        JOIN dept_manager AS dm
          ON de.emp_no = dm.emp_no
        JOIN employees AS e
          ON dm.emp_no = e.emp_no;




WHERE dm.to_date > NOW() ;

     employees AS e
        JOIN dept_manager AS dm
          ON e.emp_no = dm.emp_no
        JOIN departments d
          ON dm.dept_no = d.dept_no
        JOIN dept_emp AS de
         ON e.emp_no = de.emp_no
