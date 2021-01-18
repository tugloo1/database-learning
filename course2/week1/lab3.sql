
SELECT
    email_address,
    SUM(item_price*quantity) as item_price_total,
    SUM(discount_amount*quantity) AS discount_amount_total
FROM
    my_guitar_shop.customers INNER JOIN my_guitar_shop.orders ON
        my_guitar_shop.customers.customer_id = my_guitar_shop.orders.customer_id
    INNER JOIN my_guitar_shop.order_items ON
        my_guitar_shop.orders.order_id = my_guitar_shop.order_items.order_id

GROUP BY email_address
ORDER BY item_price_total DESC
;
