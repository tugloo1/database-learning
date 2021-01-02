SELECT	
	order_id,
	order_date,
    ship_date
FROM my_guitar_shop.orders
WHERE ship_date IS null
ORDER BY order_id DESC;