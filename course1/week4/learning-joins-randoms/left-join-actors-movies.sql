use test_joins;
-- LEFT JOIN

SELECT
	*
FROM 
	actors LEFT JOIN movies on
		actors.actor_id = movies.primary_actor_id;
        