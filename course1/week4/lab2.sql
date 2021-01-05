SELECT
	first_name, last_name, line1, city, state, zip_code
FROM
	my_guitar_shop.customers AS C LEFT JOIN my_guitar_shop.addresses as A ON
    C.customer_id = A.customer_id
WHERE 
	email_address ='allan.sherwood@yahoo.com';
	
