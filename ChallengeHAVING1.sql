/* 
Author:   CGalo
Program:  PostgreSQL, pgAdmin 4
Database: dvdrental.tar
*/

/* 
Problem: We want to know what customer are eligble for our premium platinum credit card.
The requirements are that the customer has at least a total of 40 transaction payments.
What customer are eligble for the credit card?
*/

SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY customer_id
HAVING COUNT(amount) > 40
ORDER BY COUNT(amount) DESC;
