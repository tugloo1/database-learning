-- Write a SELECT statement that returns the name, list_price and discount percent of each product that has a unique discount percent. 
-- In other words, don’t include products that have the same discount percent as another product.
-- Sort the result set by the product_name column.

SELECT
	product_name, list_price, discount_percent
FROM
	my_guitar_shop.products
WHERE
	discount_percent in  (
	SELECT
		discount_percent
	FROM
		my_guitar_shop.products
	GROUP BY
		discount_percent
	HAVING
		COUNT(discount_percent) = 1
	)
ORDER BY product_name
;