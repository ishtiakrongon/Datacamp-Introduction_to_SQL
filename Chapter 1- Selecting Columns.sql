-- Select title column from table films

SELECT
	title
FROM
	films;
	
	
-- Select release_year from table films

SELECT
	release_year
FROM
	films;

-- Get the title of every film from the films table

SELECT title
FROM films;


-- Select all columns using asterisk *

SELECT *
FROM films
LIMIT 10;


-- SELECT DISTINCT
-- Get all the unique countries represented in the films table

SELECT	DISTINCT	country
FROM films;

-------------------------------------------------------------------------------------------------------

-- Get all the different film certifications from the films table

SELECT DISTINCT certification
FROM
	films;

-------------------------------------------------------------------------------------------------------
-- How many records are contained in the films table?

SELECT COUNT(*)
FROM films;

---------------------------------------------------------------------------------

-- PRACTICE WITH COUNT()
-- As you've seen, COUNT(*) tells you how many rows are in a table.
-- However, if you want to count the number of non-missing values in a particular column,
-- you can call COUNT() on just that column.

-- It's also common to combine COUNT() with 
-- DISTINCT to count the number of distinct values in a column.

SELECT COUNT(DISTINCT country)
FROM films;
