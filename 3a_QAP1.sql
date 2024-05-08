-- 3a.	Add (or INSERT) a family of new customers to the dvdrental database. They should all have the same last name. Add them all to the same store and living at the same address.
-- Insert the new address into the address table
INSERT INTO address (address, district, city_id, postal_code, phone)
VALUES ('67 Springdale Street', 'Avalon', 1, '12345', '682-6878');

SELECT address_id FROM address WHERE address = '123 Main St' LIMIT 1;
-- Use the retrieved address_id to insert the customers
INSERT INTO customer (store_id, first_name, last_name, email, address_id)
VALUES
    (1, 'Brenda', 'Bendiksen', 'brenda@bendiksen.net', (SELECT address_id FROM address WHERE address = '123 Main St' LIMIT 1)),
    (1, 'Stephan', 'Bendiksen', 'stephan@bendiksen.net', (SELECT address_id FROM address WHERE address = '123 Main St' LIMIT 1)),
    (1, 'Josie', 'Bendiksen', 'josie@bendiksen.net', (SELECT address_id FROM address WHERE address = '123 Main St' LIMIT 1)),
     (1, 'Ellie', 'Bendiksen', 'ellie@bendiksen.net', (SELECT address_id FROM address WHERE address = '123 Main St' LIMIT 1));

SELECT customer_id, store_id, first_name, last_name, email, address_id
FROM customer
WHERE last_name = 'Bendiksen';

