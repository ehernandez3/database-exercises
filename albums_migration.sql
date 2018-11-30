USE codeup_test_db;
DROP TABLE IF EXISTS albums;

-- CREATE TABLE quotes (
--     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--     author_first_name VARCHAR(50),
--     author_last_name  VARCHAR(100) NOT NULL,
--     content TEXT NOT NULL,
--     PRIMARY KEY (id)
-- );

-- Create an albums table with the following columns:
--
-- id — auto incrementing unsigned integer primary key
-- artist — string for storing the recording artist name
-- name — string for storing a record name
-- release_date — integer representing year record was released
-- sales — floating point value for number of records sold (in millions)
-- genre — string for storing the record's genre(s)

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(55) NOT NULL,
    name VARCHAR(55) NOT NULL,
    release_date INT NOT NULL,
    sales FLOAT,
    genre VARCHAR(55),
    PRIMARY KEY (id)
)