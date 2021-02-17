-- Write a script that creates a stored procedure named test. 
-- This stored procedure should declare a variable and set it to the count of all products in the Products table. 
-- The stored procedure should accept an OUT  parameter where a message is passed out of the procedure.  
-- If the count is greater than or equal to 7, the stored procedure should return the value “The number of products is greater than or equal to 7”. 
-- Otherwise, it should return the value “The number of products is less than 7”.

use my_guitar_shop;
DROP PROCEDURE IF EXISTS test;

DELIMITER //

CREATE PROCEDURE test
(
OUT message VARCHAR(400)
)
	
BEGIN
	DECLARE products_count INTEGER;
    
	SELECT COUNT(*) 
    INTO products_count
    FROM products;
    IF products_count >= 7 THEN
		SET message = 'The number of products is greater than or equal to 7';
    ELSE
		SET message =  'The number of products is less than 7” AS message';
	END IF;

END  
//

CALL test(@returnedMessage);
SELECT @returnedMessage AS result;