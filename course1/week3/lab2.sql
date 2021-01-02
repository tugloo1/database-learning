SELECT first_name, last_name, CONCAT(last_name, ', ', first_name) as full_name
FROM my_guitar_shop.customers
WHERE last_name >= 'M'
ORDER BY last_name ASC;