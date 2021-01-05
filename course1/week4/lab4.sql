-- Write a SELECT statement that joins the Customers, Orders, Order_Items, and Products tables. This statement should return these columns: last_name, first_name, order_date, product_name, item_price, discount_amount, and quantity.
-- Use aliases for the tables.
-- Sort the final result set by the last_name, order_date, and product_name columns.

SELECT
	last_name, first_name, order_date, product_name, item_price, discount_amount, quantity
FROM 
	customers as C  INNER JOIN orders as O ON
		C.customer_id = O.customer_id
	INNER JOIN order_items as OI ON
		O.order_id = OI.order_id
	INNER JOIN products as P ON
		OI.product_id = P.product_ID

ORDER BY
	last_name, order_date, product_name;