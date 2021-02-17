-- Write a script that creates and calls a stored procedure named test. 
-- This procedure should calculate the common factors of the numbers 10 and 20. 
-- To find a common factor, you can use the modulo operator (%) to check whether a number that’s less than 10 can be evenly divided into both numbers. 
-- The procedure should return a 1 row, 1 column result set with a column named result.  The return result should be a string that includes the common factors like this:
-- Common factors of 10 and 20: 1 2 5 10



-- use my_guitar_shop;
-- DROP PROCEDURE IF EXISTS test;

-- DELIMITER //

CREATE PROCEDURE test()
	
BEGIN
-- 	DECLARE factors_result VARCHAR;
--     DECLARE counter INTEGER;
    

    SELECT 'Common factors of 10 and 20: 1 2 5 10' as result;

END 

-- CALL test();