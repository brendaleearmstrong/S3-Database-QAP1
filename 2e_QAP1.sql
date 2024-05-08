-- Deliverable 2e) Join two or more tables using a JOIN clause.
-- Tables: Film & Customer, Rental, Inventory
-- JOIN: Using Customer, rental, inventory, and film tables to acquire film title, rating, return_datefor each customer rental. 

SELECT customer.first_name, customer.last_name, film.title, film.rating, rental.return_date
FROM film
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental ON inventory.inventory_id = rental.inventory_id
JOIN customer ON rental.customer_id = customer.customer_id
;
