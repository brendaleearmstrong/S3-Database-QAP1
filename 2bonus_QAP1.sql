-- Deliverable 2 Bonus) Complete this problem with only one SQL statement containing all the attributes and clauses.

SELECT customer.first_name, customer.last_name, film.title, film.rating, rental.return_date
FROM film
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental ON inventory.inventory_id = rental.inventory_id
JOIN customer ON rental.customer_id = customer.customer_id
WHERE customer.last_name = 'Williams'
GROUP BY film.rating, film.title, customer.customer_id, customer.last_name, rental.return_date
ORDER BY film.rating, film.title ASC;
