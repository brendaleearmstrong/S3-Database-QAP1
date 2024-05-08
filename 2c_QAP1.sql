-- Deliverable 2c) Group the results using a GROUP BY clause.
-- Table: Film 
-- GROUP BY: Counting number of movies per rating category using 'GROUP BY' 

SELECT film.rating, COUNT(*) AS "Total Movies"
FROM film
GROUP BY film.rating;

