-- Write a SELECT statement that answers this question: Which products have a list price that’s greater than the average list price for all products?
-- Return the prodcut_id, product_name and list_price columns for each product.
-- Sort the result set by the list_price column in descending sequence.

SELECT 
	product_id, product_name, list_price 
FROM
	my_guitar_shop.products
WHERE
	list_price > (SELECT avg(list_price) FROM my_guitar_shop.products)
ORDER BY list_price DESC
;
