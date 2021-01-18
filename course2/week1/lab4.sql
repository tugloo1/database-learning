-- Write a SELECT statement that returns one row for each customer that has orders with these columns:

-- The email_address column from the Customers table
-- A count of the number of orders aliased as order_count
-- The total amount for each order aliased as order_total (Hint: First, subtract the discount amount from the price. Then, multiply by the quantity.)
-- Return only those rows where the customer has more than 1 order.
-- Sort the result set in descending sequence by the sum of the line item amounts.


-- Store the query in a file named query.sql and upload to GradeScope below


SELECT
    email_address,
    COUNT(distinct(orders.order_id)) as order_count,
    SUM((item_price-discount_amount)*quantity) as order_total
FROM
    my_guitar_shop.customers INNER JOIN my_guitar_shop.orders ON
        my_guitar_shop.customers.customer_id = my_guitar_shop.orders.customer_id
    INNER JOIN my_guitar_shop.order_items ON
        my_guitar_shop.orders.order_id = my_guitar_shop.order_items.order_id
GROUP BY email_address
HAVING
    order_count > 1

ORDER BY order_total DESC
;
