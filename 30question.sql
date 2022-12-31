-- Which category of movies released in 2018? Fetch with number of movies.

SELECT category.name, category.category_id, film.release_year, film.film_id, COUNT(category.category_id)
from category
JOIN Film_category ON category.category_id=film_category.category_id
JOIN film ON film_category.film_id=film.film_id
WHERE Film.release_year=2018 GROUP BY category.category_id;



-- Update the address of actor id 36 to "677 Jazz Street"

UPDATE Address JOIN actor ON Actor.address_id=Address.address_id
SET address="677 Jass Street" WHERE actor_id=36

