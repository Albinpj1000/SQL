-- Which category of movies released in 2018? Fetch with number of movies.

SELECT category.name, category.category_id, film.release_year, film.film_id, COUNT(category.category_id)
from category
JOIN Film_category ON category.category_id=film_category.category_id
JOIN film ON film_category.film_id=film.film_id
WHERE Film.release_year=2018 GROUP BY category.category_id;



-- Update the address of actor id 36 to "677 Jazz Street"

UPDATE Address JOIN actor ON Actor.address_id=Address.address_id
SET address="677 Jass Street" WHERE actor_id=36


--   Get the name of films of the actors who belong to India.

SELECT DISTINCT Film.title, Country.country from Film 
JOIN Film_actor ON Film.film_id=Film_actor.film_id
JOIN Actor ON Film_actor.actor_id=Actor.actor_id
JOIN Address ON Address.address_id=Actor.address_id
JOIN City ON Address.city_id=City.city_id
JOIN Country ON City.country_id=Country.country_id
WHERE country="india" ;


--  How many actors are from the United States?

SELECT DISTINCT COUNT(Actor.actor_id) AS Actors_from_usa from actor
JOIN Address ON actor.address_id=address.address_id
JOIN City ON address.city_id=City.city_id
JOIN Country ON Country.country_id=City.country_id
WHERE country="united states"

-- Get all languages in which films are released in the year between 2001 and 2010.

SELECT DISTINCT language.language_id, Language.name, COUNT(language.language_id) from language 
JOIN Film ON Language.language_id=Film.language_id
WHERE release_year BETWEEN 2001 AND 2010 GROUP BY language.language_id