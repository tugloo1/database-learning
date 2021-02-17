-- Write a script that creates a stored procedure named test. 
-- This procedure should attempt to insert a new category named “Guitars” into the Categories table. 
-- The procedure should return a 1 row, 1 column result set with a column named result.  
-- If the insert is successful, the procedure should return the value:
-- 1 row was inserted.
-- If the update is unsuccessful, the procedure should return the value:
-- Row was not inserted - duplicate entry.


-- use my_guitar_shop;
-- DROP PROCEDURE IF EXISTS test;

-- DELIMITER //

CREATE PROCEDURE test()
	
BEGIN
    DECLARE success TINYINT DEFAULT TRUE;


    DECLARE CONTINUE HANDLER FOR 1062
		SET success = FALSE;
        
	INSERT INTO categories(category_name) VALUES ('Guitar');
    
    
	IF success = TRUE THEN
		SELECT '1 row was inserted.' AS result;
	ELSE
		SELECT 'Row was not inserted - duplicate entry.' AS result;
    END IF;

END  

-- //

-- CALL test();