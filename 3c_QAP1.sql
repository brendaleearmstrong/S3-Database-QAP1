-- 3c. DELETE the old family address 

DELETE FROM address
WHERE address = '67 Springdale Street'
AND district = 'Avalon'
AND city_id = 1
AND postal_code = '12345'
AND phone = '682-6878';
