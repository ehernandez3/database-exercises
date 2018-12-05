DROP DATABASE IF EXISTS join_test_db;
CREATE DATABASE join_test_db;

USE join_test_db;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null);


SHOW TABLES;

SELECT * FROM roles;
SELECT * FROM users;


# 2. Insert 4 new users into the database. One should have a NULL role.
#    The other three should be authors.
INSERT INTO users (name, email, role_id) VALUES
  ('ron', 'ron@example.com', 2),
  ('richard', 'richard@example.com', null),
  ('rose', 'rose@example.com', 2),
  ('rachel', 'rachel@example.com', 2);


# 3. Use join, left join, and right join to combine results from the users
#    and roles tables as we did in the lesson. Before you run each query,
#    guess the expected number of results.
SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

SELECT users.name as user_name, users.email, roles.name as role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name as user_name, users.email, roles.name as role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;


# 4. Although not explicitly covered in the lesson, aggregate functions like
#    count can be used with join queries. Use count and the appropriate join
#    type to get a list of roles along with the number of users that has the role.
#    Hint: You will also need to use group by in the query.
SELECT roles.name as role_name, count(users.name) as no_of_users
FROM users
JOIN roles ON users.role_id = roles.id
GROUP BY role_name;