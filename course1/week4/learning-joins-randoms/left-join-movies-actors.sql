use test_joins;
-- LEFT JOIN (other way)

SELECT
	*
FROM 
	movies LEFT JOIN actors on
		actors.actor_id = movies.primary_actor_id;
        