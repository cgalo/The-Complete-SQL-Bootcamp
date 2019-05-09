/* 
Author:   CGalo
Program:  PostgreSQL, pgAdmin 4
Database: dvdrental.tar
*/

/*
Problems:
1. Return the customer IDs of customer who have spent at least $110 with the staff member who has an ID of 2
--Answer: should be customer 187 and 148

2. How many films begin with the letter J?
--Answer: 20

3. What customer has the highest customer ID number, whose name starts with an 'E' and has an address ID lower than 500?
--Answer: Eddie Tomlin
*/

/* Problem #1 Solution */
SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 110

/* Problem #2 Solution */
SELECT COUNT(title)
FROM film
WHERE title LIKE 'J%';

/* Problem #3 Solution */
SELECT first_name, last_name, customer_id
FROM customer
WHERE address_id < 500 AND first_name LIKE 'E%'
ORDER BY customer_id DESC
LIMIT 1;

