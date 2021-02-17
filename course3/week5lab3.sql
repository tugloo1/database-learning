-- Write a script that creates a stored procedure named insert_category. 
-- Code the procedure so that it adds a new row to the Categories table. 
-- To do that, the procedure should have a parameter for the category name.


-- use my_guitar_shop;
-- DROP PROCEDURE IF EXISTS test;

-- DELIMITER //

CREATE PROCEDURE insert_category
(
category_name VARCHAR(400)
)
	
BEGIN
--     DECLARE success TINYINT DEFAULT TRUE;


--     DECLARE CONTINUE HANDLER FOR 1062
-- 		SET success = FALSE;
        
	INSERT INTO categories(category_name) VALUES (category_name);


END  

-- //

-- CALL insert_category('not guitar');