SELECT 
 	first_name || ' ' || last_name full_name
FROM
	customer
	
SELECT * FROM payment

SELECT
	first_name || ' ' || last_name AS full_name,
	SUM (amount) AS amount
FROM
	payment

INNER JOIN customer ON customer.customer_id = payment.customer_id
-- INNER JOIN customer USING (customer_id)    	
GROUP BY
	full_name
ORDER BY amount DESC;	

SELECT
	customer.customer_id, payment.customer_id, customer.last_name, payment.amount
FROM
	payment
INNER JOIN customer USING (customer_id)  