/* 
Author:   CGalo
Program:  PostgreSQL, pgAdmin 4
Database: dvdrental.tar
*/

/* 
Problem: Find how many films whose rental rate is higher than the average rental rate.
*/

SELECT COUNT(title)
FROM film
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film );