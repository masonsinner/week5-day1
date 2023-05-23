-- QUESTION 1 

SELECT * FROM actor a 
WHERE last_name = 'Wahlberg';

-- QUESTION 2

SELECT * FROM payment p 
WHERE amount >= 3.99 AND amount <= 5.99;

-- QUESTION 3

SELECT film.film_id, film.title, COUNT(*) AS copy_count
FROM inventory i
JOIN film ON film.film_id = i.film_id
GROUP BY film.film_id, film.title
HAVING COUNT(*) = 7;

-- QUESTION 4

SELECT COUNT(*) AS customer_count
FROM customer c 
WHERE first_name = 'Willie';

-- QUESTION 5
ou
SELECT staff_id, COUNT(*) AS rental_cnt
FROM rental r 
GROUP BY staff_id
ORDER BY rental_count DESC
LIMIT 1;

-- QUESTION 6

SELECT COUNT(DISTINCT district) AS unique_district_count
FROM address a ;

-- QUESTION 7

SELECT f.film_id, f.title, COUNT(*) AS actor_count
FROM film_actor fa
JOIN film f ON f.film_id = fa.film_id
GROUP BY f.film_id, f.title
ORDER BY actor_count DESC
LIMIT 1;

-- QUESTION 8

SELECT COUNT(*) AS customer_count
FROM customer c 
WHERE store_id = 1 AND last_name LIKE '%es';

-- QUESTION 9 

SELECT p.amount, COUNT(*) AS rental_count
FROM payment p 
JOIN rental r ON p.customer_id = r.customer_id
WHERE p.customer_id BETWEEN 380 AND 430
GROUP BY p.amount
HAVING COUNT(*) > 250;

-- QUESTION 10

SELECT COUNT(DISTINCT rating) AS rating_category_count
FROM film f ;

SELECT rating, COUNT(*) AS movie_count
FROM film f 
GROUP BY rating
ORDER BY movie_count DESC
LIMIT 1;
