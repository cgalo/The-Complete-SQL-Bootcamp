/* 
Author: CGalo
Database: learning
PgAdmin - PostgreSQL
*/

/* Challenge
Create a table to organize our potential leads! We will have the following information:
A customer's first name, last name,email,sign-up date, and number of minutes spent on the dvd rental site. You should also have 
some sort of id tracker for them. You have free reign on how you want to create this table, the next lecture will show one 
possible implementation of this.
*/


CREATE TABLE leads 
(
	customer_id serial PRIMARY KEY,
	role_id integer NOT NULL,
	firstName VARCHAR(50) NOT NULL,
	lastName VARCHAR(50) NOT NULL,
	email VARCHAR (200) UNIQUE NOT NULL,
	minutes INTEGER NOT NULL,
	signupDate TIMESTAMP NOT NULL,
	grant_date TIMESTAMP NOT NULL
) ;
