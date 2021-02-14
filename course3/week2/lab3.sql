-- Create a view named product_summary that uses the same table you used in in exercise 2. This view should return summary information about each product.
-- Each row should include product_name, order_count (the quantity of the product that has been ordered) and order_total (the total sales revenue for the product).

use my_guitar_shop;

CREATE OR REPLACE VIEW product_summary AS
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
    
;
