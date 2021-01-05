use test_joins;
-- RIGHT JOIN (other way)

SELECT
	*
FROM 
	movies RIGHT JOIN actors on
		actors.actor_id = movies.primary_actor_id;
        