/* 
Problem: We want to know what costumer are eligble for our premium platinum credit card.
The requirements are that the costumer has at least a total of 40 transaction payments.
What costumer are eligble for the credit card?
*/

SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY customer_id
HAVING COUNT(amount) > 40
ORDER BY COUNT(amount) DESC;
