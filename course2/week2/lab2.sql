-- Write a SELECT statement that returns three columns: email_address, order_id, and the order total for each customer. 
-- To do this, you can group the result set by the email_address and order_id columns. 
-- In addition, you must calculate the order total from the columns in the Order_Items table.

-- Write a second SELECT statement that uses the first SELECT statement in its FROM clause. 
-- The main query should return three columns: the customer’s email address and the largest order (aliased as max_order_total) 
-- and the smallest order_id (aliased as min_order_id). To do this, you can group the result set by the email_address. 
-- Sort the result set by the largest order in descending sequence.

SELECT
	email_address,
    max(order_total) AS max_order_total,
    min(order_id) AS min_order_id
FROM 
	(SELECT
		email_address,
		my_guitar_shop.orders.order_id,
		SUM((item_price - discount_amount)*quantity) AS order_total

	FROM my_guitar_shop.customers INNER JOIN my_guitar_shop.orders
			ON my_guitar_shop.customers.customer_id = my_guitar_shop.orders.customer_id
		 INNER JOIN my_guitar_shop.order_items
			ON my_guitar_shop.orders.order_id = my_guitar_shop.order_items.order_id

	GROUP BY email_address, order_id
    ) t1
GROUP BY
	t1.email_address
ORDER BY
	max_order_total DESC
;