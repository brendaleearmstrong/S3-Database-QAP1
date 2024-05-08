-- 3b. The family moves, change their address using an UPDATE statement. Don’t over think the move… you should be able to add the new address and change one attribute for each family member to make the move.

INSERT INTO address (address, district, city_id, postal_code, phone)
VALUES ('999 Southern Shore Highway', 'West', 1, '67890', '555-5678');

UPDATE customer
SET address_id = LASTVAL()
WHERE last_name = 'Bendiksen';


