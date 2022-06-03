-- Simple filtering of numeric VALUES
-- # WHERE cluase use

-- GET ALL THE DETAILS FOR ALL FILMS RELEASED IN 2016

SELECT *
FROM films
WHERE release_year = 2016;

-----------------------------------------------------------------------------------

-- Get the number of films released before 2000

SELECT count(*)
FROM films
WHERE release_year < 2000;

------------------------------------------------------------------------------------

-- Get the title and release year of films released after 2000

SELECT title, release_year
FROM films
WHERE release_year > 2000;

------------------------------------------------------------------------------------

-- Get all details for all French language films

SELECT *
FROM films
WHERE language = 'French';

-- Get the name and birth date of the person born on november 11th, 1974. Remember to use
-- ISO date format ('1974-11-11')!

-- SELECT name, birthdate
-- FROM people
-- WHERE birthdate = '1974-11-11';
--------------------------------------------------------------------------------------------

-- Get the number of Hindi language films

SELECT COUNT(*)
FROM films
WHERE language = 'Hindi';

---------------------------------------------------------------------------------------------

-- Get all details for all films with an R certification

SELECT *
FROM films
WHERE certification = 'R';


---------------------------------------------------------------------------------------------
-- # WHERE AND
-- Often, you'll want to select data based on multiple conditions. You can build up your WHERE
-- queries by combining multiple conditions with the AND keyword.

-- Get the title and release year for all Spanish language films released before 2000

SELECT title, release_year
FROM films
WHERE language = 'Spanish'
AND release_year < 2000;

-------------------------------------------------------------------------------------------

-- Get all details for Spanish language films released after 2000

SELECT *
FROM films
WHERE language = 'Spanish' 
AND release_year > 2000;

--------------------------------------------------------------------------------------------

-- Get all details for Spanish language films released after 2000, but before 2010

SELECT *
FROM films
WHERE language = 'Spanish'
AND release_year > 2000
AND release_year < 2010;


-------------------------------------------------------------------------------------------

-- # WHERE AND OR

-- Get the title and release year for films released in the 90s

SELECT title, release_year
FROM films
WHERE release_year > 1989
AND release_year < 2000;

------------------------------------------------------------------------------------------

-- Now, build on your query to filter 
-- the records to only include French or Spanish language films

SELECT title, release_year
FROM films
WHERE ( release_year >= 1990 AND release_year < 2000 )
AND ( language = 'Spanish' OR language = 'French' );

------------------------------------------------------------------------------------------

-- Finally, restrict the query to only return films that took in more than $2M gross

SELECT title, release_year
FROM films
WHERE ( release_year >= 1990 AND release_year < 2000 )
AND ( language = 'Spanish' OR language = 'French' )
AND gross > 2000000;

------------------------------------------------------------------------------------------

-- # BETWEEN

-- Get the title and release year of all films released between 1990 and 2000 (inclusive)

SELECT title, release_year
FROM films
WHERE release_year
BETWEEN 1990 and 2000;

------------------------------------------------------------------------------------------

-- Now, build on your previous query to select only films that have budgets over $100 million

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
AND budget > 100000000;

-------------------------------------------------------------------------------------------

-- Now restrict the query to only return Spanish language films

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
AND budget > 100000000
AND language = 'Spanish';

------------------------------------------------------------------------------------------
-- Finally, modify to your previous query to include all Spanish language or French 
-- language films with the same criteria as before. Don't forget your parentheses!

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
AND budget > 100000000
AND (language = 'Spanish' OR language = 'French');

-----------------------------------------------------------------------------------------

-- # WHERE IN CLAUSES
-- USE IN WHEN YOU HAVE TO DECLARE MULTIPLE OR CLAUSES

-- Get the title and release year of all films released in 1990 or 2000 that were longer
--  than two hours. Remember, duration is in minutes!

SELECT title, release_year
FROM films
WHERE release_year IN (1990, 2000)
AND duration > 120;

-----------------------------------------------------------------------------------------

-- Get the title and language of all films which were in English, Spanish, or French

SELECT title, language
FROM films
WHERE language IN ('English', 'Spanish', 'French');

-----------------------------------------------------------------------------------------

-- Get the title and certification of all films with an NC-17 or R certification

SELECT title, certification
FROM films
WHERE certification in ('NC-17', 'R');

-----------------------------------------------------------------------------------------

-- # Introduction to NULL and IS NULL and IS NOT NULL

-- As you can see, IS NULL is useful when combined with WHERE to figure out
-- what data you're missing

-- Sometimes, you'll want to filter out missing values so you only 
-- get results which are not NULL. To do this, you can use the IS NOT NULL operator

-----------------------------------------------------------------------------------------

SELECT title
FROM films
WHERE release_year IS NULL;


-----------------------------------------------------------------------------------------

-- Get the title of every film which doesn't have a budget associated with it

SELECT title
FROM films
WHERE budget IS NULL;


------------------------------------------------------------------------------------------

-- Get the number of films which don't have a language associated with them

SELECT count(*)
FROM films
WHERE language IS NULL;

------------------------------------------------------------------------------------------


-- # LIKE and NOT LIKE

SELECT language
FROM films
WHERE language LIKE 'F%';

-------------------------------------------------------------------------------------------
