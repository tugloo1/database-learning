-- Use a correlated subquery to return one row per customer, representing the customer’s oldest order (the one with the earliest date). 
-- Each row should include these three columns: email_address, oldest_order_id, and oldest_order_date. 
-- Only include customers who have placed an order.
-- Sort the result set by the oldest_order_date and oldest_order_id columns.

SELECT
	email_address,
    order_id AS oldest_order_id,
    order_date AS oldest_order_date
FROM
	my_guitar_shop.customers C INNER JOIN my_guitar_shop.orders A
		ON C.customer_id = A.customer_id
WHERE
	A.order_date = (select min(order_date) FROM my_guitar_shop.orders O WHERE C.customer_id = O.customer_id)
ORDER BY
	oldest_order_date, oldest_order_id
;