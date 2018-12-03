use codeup_test_db;

-- The name of all albums by Pink Floyd.
select 'The name of all albums by Pink Floyd.' as 'Pink Floyd Albums';

SELECT name FROM albums
WHERE artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Sgt. Peppers''s Release Date';

SELECT release_date FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The genre for Nevermind
SELECT 'The genre for Nevermind' as 'Nevermind Genre';

SELECT genre FROM albums
WHERE name = 'Nevermind';

-- Which albums were released in the 1990s
# SELECT 'Albums relased in the 1900s' AS '1900s Albums';
#
# SELECT name FROM albums
# WHERE release_date BETWEEN 1990 AND 1999;

-- Which albums had less than 20 million certified sales
# SELECT 'Albums with less than 20 million certified sales' AS 'Sales under 20 million';
#
# SELECT name FROM albums
# WHERE sales < 20;

-- All the albums with a genre of "Rock". Why do these query results
-- not include albums with a genre of "Hard rock" or "Progressive rock"?
# SElECT 'All the albums with a genre of "Rock". N' AS 'Rock Genre Albums';
#
# SELECT * FROM albums
# WHERE genre = 'Rock';
#
# SELECT * FROM albums
# WHERE genre LIKE '%rock%';



-- As always, commit your changes after each step and push them out to GitHub
# SELECT * FROM albums;

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