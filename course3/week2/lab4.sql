-- Create a view named best_products that uses the same table you used in in exercise 3. 
-- The view should have the same columns returned. The view should only return the five best selling products by order_total.

use my_guitar_shop;
CREATE VIEW best_products AS
    SELECT 
        P.product_name,
        COUNT(P.product_name) AS order_count,
        SUM((OI.item_price - OI.discount_amount) * OI.quantity) AS order_total
    FROM
        orders O
            INNER JOIN
        order_items OI ON O.order_id = OI.order_id
            INNER JOIN
        products P ON OI.product_id = P.product_id
    GROUP BY P.product_name
    ORDER BY order_total DESC
    LIMIT 5
    
;
