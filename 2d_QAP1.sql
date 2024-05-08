-- Deliverable 2d) Order the results using an ORDER BY clause.
-- Table: Film 
-- ORDER BY: Using 'ORDER BY' and 'ASC' to group/sort title from A-Z.

SELECT title, release_year, length, rating
FROM film
ORDER BY title ASC;

