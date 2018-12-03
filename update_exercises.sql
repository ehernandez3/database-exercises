USE codeup_test_db;

# SELECT QUERIES
# All albums in your table.
SELECT name AS 'All albums in the table'
FROM albums;

# All albums released before 1980
SELECT name AS 'All albums released before 1980'
FROM albums
WHERE release_date < 1980;

# All albums by Michael Jackson
SELECT name AS 'All albums by Michael Jackson'
FROM albums
WHERE artist = 'Michael Jackson';

# UPDATE QUERIES
# Make all the albums 10 times more popular (sales * 10)
UPDATE albums
SET sales = sales * 10;
SELECT * FROM albums;

# Move all the albums before 1980 back to the 1800s.
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;
SELECT * FROM albums;

# Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums
SET artist = 'Peter Jacskson'
WHERE artist = 'Michael Jackson';
SELECT * FROM albums;

# Add SELECT statements after each UPDATE so you can see the results of your handiwork