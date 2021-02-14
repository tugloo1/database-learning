-- Create a view named order_item_products that returns columns from the Orders, Order_Items, and Products tables.
-- This view should return these columns from the Orders table: order_id, order_date, tax_amount, and ship_date.
-- This view should return the product_name column from the Products table.
-- This view should return these columns from the Order_Items table: 
-- item price, discount_amount, final_price (the discount amount subtracted from the item price), quantity, and item_total (the calculated total for the item - quantity * price).


use my_guitar_shop;
CREATE VIEW order_item_products AS
    SELECT 
        O.order_id,
        O.order_date,
        O.tax_amount,
        O.ship_date,
        P.product_name,
        OI.item_price,
        OI.discount_amount,
        (OI.item_price - OI.discount_amount) AS final_price,
        OI.quantity,
        (OI.item_price - OI.discount_amount) * OI.quantity AS item_total
    FROM
        orders O
            INNER JOIN
        order_items OI ON O.order_id = OI.order_id
            INNER JOIN
        products P ON OI.product_id = P.product_id
    
;
	