-- Write a script that creates a stored function named discount_price that calculates 
-- 	the discount price of an item in the Order_Items table (discount amount subtracted from item price). 
-- To do that, this function should accept one parameter for the item ID, and it should return the value of the discount price for that item.


-- use my_guitar_shop;
-- DROP FUNCTION IF EXISTS discount_price;

-- DELIMITER //

CREATE function discount_price
	(
	input_item_id INT
	)
	RETURNS DECIMAL(10, 2)
	DETERMINISTIC READS SQL DATA
	
	BEGIN
		DECLARE discounted_price DECIMAL(10, 2);
		
		SELECT 
			item_price - discount_amount
		INTO 
			discounted_price 
		FROM
			order_items
		WHERE
			item_id = input_item_id;
		RETURN(discounted_price);
	END  

-- //

-- SELECT discount_price(1) AS RESULT;