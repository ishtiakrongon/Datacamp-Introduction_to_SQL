-- Get the title of films released in 2000 or 2012, in the order they were released

SELECT title
FROM films
WHERE release_year IN (2000, 2012)
ORDER BY release_year;

------------------------------------------------------------------------------------------

-- Get all details for all films except those released in 2015 and order them by duration

SELECT *
FROM films
WHERE release_year <> 2015
ORDER BY duration;

------------------------------------------------------------------------------------------

-- Get the release year, duration, and title of films 
-- ordered by their release year and duration

SELECT release_year, duration, title
FROM films
ORDER by release_year, duration;

-------------------------------------------------------------------------------------------

-- Get certifications, release years, and titles of films 
-- ordered by certification (alphabetically) and release year

SELECT certification, release_year, title
FROM films
ORDER BY certification, release_year;

-------------------------------------------------------------------------------------------
-- Get the release year and count of films released in each year

SELECT release_year, COUNT(*)
FROM films
GROUP BY release_year;

------------------------------------------------------------------------------------------

-- Get the release year and average duration of all films, grouped by release year

SELECT release_year, AVG(duration)
FROM films
GROUP BY release_year;


------------------------------------------------------------------------------------------

-- Get the title and gross earnings for movies which begin with the letter 'M' 
-- and order the results alphabetically

SELECT title, gross
FROM films
WHERE title LIKE 'M%'
ORDER BY title ASC;

------------------------------------------------------------------------------------------
-- Get the title for every film, in reverse order

SELECT title
FROM films
ORDER BY title DESC;

------------------------------------------------------------------------------------------

-- Get the title and duration for every film, in order of longest duration to shortest

SELECT title, duration
FROM films
ORDER BY duration DESC;

------------------------------------------------------------------------------------------

-- Get the release year and largest budget for all films, grouped by release year

SELECT release_year, MAX(budget)
FROM films
GROUP BY release_year;

------------------------------------------------------------------------------------------

-- Get the release year and lowest gross earnings per release year

SELECT release_year, MIN(gross) AS lowest_earnings_per_release_year
FROM films
GROUP BY release_year;

-----------------------------------------------------------------------------------------

-- Get the language and total gross amount films in each language made

SELECT language, SUM(gross)
FROM films
GROUP BY language;

-----------------------------------------------------------------------------------------

-- Get the country and total budget spent making movies in each country

SELECT country, SUM(budget)
FROM films
GROUP BY country;

-----------------------------------------------------------------------------------------

-- Get the release year, country, and highest budget spent making a film for each year,
-- for each country. Sort your results by release year and country

SELECT release_year, country, MAX(budget)
FROM films
GROUP BY release_year, country
ORDER BY release_year, country;

-------------------------------------------------------------------------------------------

-- Get the country, release year, and lowest amount grossed per release year per country.
--  Order your results by country and release yea

SELECT country, release_year, MIN(gross)
FROM films
GROUP BY country, release_year
ORDER BY country, release_year;

-----------------------------------------------------------------------------------------
SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING avg_budget > 60000000
ORDER BY avg_gross DESC;

