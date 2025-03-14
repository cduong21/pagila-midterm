/*
 * Write a SQL query SELECT query that:
 * List the first and last names of all actors who have appeared in movies in the "Children" category,
 * but that have never appeared in movies in the "Horror" category.
 *
 * HINT:
 * This requires joining from the category table down to the actor table.
 */

-- children : category id = 3 
-- horror : category id = 11 
select first_name || ' ' ||  last_name as name
from actor
inner join film_actor using (actor_id)
inner join film using (film_id)
inner join film_category using (film_id) 
inner join category using (category_id)  
where actor_id not in (
    select actor_id 
    from actor 
    inner join film_actor using (actor_id)
    inner join film using (film_id)
    inner join film_category using (film_id)
    inner join category using (category_id)
    where category_id = 11)
AND category_id = 3;


