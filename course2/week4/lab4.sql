-- Write a SELECT statement that returns these columns from the Orders table:

-- The order_id column
-- The order_date column
-- A column named approx_ship_date that’s calculated by adding 2 days to the order_date column
-- The ship_date column if it doesn’t contain a null value
-- A column named days_to_ship that shows the number of days between the order date and the ship date
-- add a WHERE clause that retrieves just the orders for March 2018 that have shipped.

-- Sort the result set by the order_id column in ascending sequence.

SELECT
	order_id,
    order_date,
    DATE_ADD(order_date, INTERVAL 2 DAY) as approx_ship_date,
    ship_date,
    DATEDIFF(ship_date, order_date) AS days_to_ship

FROM
	my_guitar_shop.orders

WHERE
	DATE_FORMAT(order_date, '%m-%Y') = '03-2018' AND
    ship_date is not null
    
    ;