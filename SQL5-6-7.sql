--SQL EXERCISE 5
SELECT *
FROM film
WHERE title ILIKE '%n'
ORDER BY length DESC
LIMIT 5;

SELECT *
FROM film
WHERE title ILIKE '%n'
ORDER BY length
OFFSET 5 LIMIT 5;

SELECT *
FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;

--SQL EXERCISE 6
SELECT avg(rental_rate)
FROM film;

SELECT count(title)
FROM film
WHERE title LIKE 'C%';

SELECT max(length)
FROM film
WHERE rental_rate = 0.99;

SELECT count(DISTINCT replacement_cost)
FROM film
WHERE length > 150;


--SQL EXERCISE 7
SELECT rating, count(*)
FROM film
GROUP BY rating;

SELECT replacement_cost, count(*)
FROM film
GROUP BY replacement_cost
HAVING count(*) > 50;

SELECT store_id, count(*)
FROM customer
GROUP BY store_id;

SELECT country_id, count(*)
FROM city
GROUP BY country_id
ORDER BY count(*) DESC
LIMIT 1;

