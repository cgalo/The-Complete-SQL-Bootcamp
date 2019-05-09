/* 
Author:   CGalo
Program:  PostgreSQL, pgAdmin 4
Database: dvdrental.tar
*/

/*
Problem:
When grouped by rating, what movie ratings have an average rental duration of 
more than 5 days?
*/

SELECT rating, AVG(rental_rate)
FROM film
GROUP BY rating;
HAVING AVG (rental_rate) > 5
