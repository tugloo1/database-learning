
SELECT
	category_name, product_name, list_price
FROM
	my_guitar_shop.products as P LEFT JOIN my_guitar_shop.categories as C ON
    P.category_id = C.category_id
ORDER BY 
	category_name, product_name;