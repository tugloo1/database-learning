use test_joins;


SELECT
	* 
FROM 
	actors RIGHT JOIN movies on
		actors.actor_id = movies.primary_actor_id;

-- LEFT JOIN (other way around)

-- SELECT
-- 	* 
-- FROM 
-- 	movies LEFT JOIN actors on
-- 		actors.actor_id = movies.primary_actor_id;
-- 

