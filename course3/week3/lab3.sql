-- Write a script that creates and calls a stored procedure named test. 
-- This stored procedure should create a cursor for a result set that consists of the product_name and list_price columns 
-- for each product with a list price that’s greater than $700. The rows in this result set should be sorted in descending sequence by list price. 
-- The procedure should return a 1 row, 1 column result set with a column named result.  
-- The procedure should set the return value to a string variable that includes the product_name and list price for each product so it looks something like this:
-- *Gibson SG*,*2517.00*|*Gibson Les Paul*,*1199.00*|
-- Here, each value is enclosed in asterisk(*), each column is separated by a comma (,) and each row is separated by a pipe character (|).


use my_guitar_shop;
DROP PROCEDURE IF EXISTS test;

DELIMITER //

CREATE PROCEDURE test()
	
BEGIN
	DECLARE p_name VARCHAR(400) DEFAULT '';
	DECLARE p_price DECIMAL(10, 2);
	DECLARE output VARCHAR(400) DEFAULT '';
    DECLARE row_not_found TINYINT DEFAULT False;
    
    DECLARE products_cursor CURSOR FOR
		SELECT product_name, list_price 
		FROM products WHERE list_price > 700.00
        ORDER BY list_price DESC
        ;
    
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND
		SET row_not_found = TRUE;
        
	OPEN products_cursor;
    
	WHILE row_not_found = FALSE DO
		FETCH products_cursor INTO p_name, p_price;
        IF row_not_found = FALSE THEN
			SET p_name = CONCAT('*', p_name, '*');
			SET output = CONCAT(output, p_name, ',', CONCAT('*', p_price, '*'), '|');
		END IF;
    
    END WHILE;
    
    SELECT output AS result;
    

END  

//

CALL test();