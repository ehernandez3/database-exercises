USE employees;

SHOW TABLES;

DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE titles;


USE codeup_test_db;

SHOW CREATE TABLE albums;
SHOW TABLES;

ALTER TABLE albums
  ADD UNIQUE (artist, name);


INSERT INTO albums (artist, name)
  VALUES('Pink Floyd', 'The Dark Side of the Moon');

SELECT * FROM albums;

