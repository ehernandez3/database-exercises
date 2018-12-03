use codeup_test_db;

-- The name of all albums by Pink Floyd.
SELECT name AS 'Pink Floyd Albums'
FROM albums
WHERE artist = 'Pink Floyd';


-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date AS 'Sgt. Peppers''s Release Date'
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The genre for Nevermind
SELECT genre AS 'Nevermind Genre'
FROM albums
WHERE name = 'Nevermind';

-- Which albums were released in the 1990s
SELECT name AS '1900s Albums'
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

-- Which albums had less than 20 million certified sales
SELECT name AS 'Sales under 20 million'
FROM albums
WHERE sales < 20;

-- All the albums with a genre of "Rock". Why do these query results
-- not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT name AS 'Rock Genre Albums'
FROM albums
WHERE genre = 'Rock';

# SELECT * FROM albums
# WHERE genre LIKE '%rock%';



-- As always, commit your changes after each step and push them out to GitHub
SELECT * FROM albums;

# Create a new file called select_exercises.sql.
#
# Remember to USE the codeup_test_db.
#
# In select_exercises.sql write queries to find the following information. Before each item, output a caption explaining the results:
#
# The name of all albums by Pink Floyd.
# The year Sgt. Pepper's Lonely Hearts Club Band was released
# The genre for Nevermind
# Which albums were released in the 1990s
# Which albums had less than 20 million certified sales
# All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
# As always, commit your changes after each step and push them out to GitHub