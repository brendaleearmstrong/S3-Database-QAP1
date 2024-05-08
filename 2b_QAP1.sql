-- Reduce the number of rows displayed in the query result using a WHERE clause.
-- Table: Film 
-- WHERE: Using 'WHERE' to filter films with ratings of 'PG-13' only.

SELECT title, rating
FROM film
WHERE rating = 'PG-13';
