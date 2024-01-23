# Display all Tables
USE sakila;
show Tables;

#Retrieve all the data from the tables actor, film and customer
select * from actor;
select * from film;
select * from customer;
#3.1 Titles of all films from the film table
select title from film;
#3.2 List of languages used in films, with the column aliased as language from the language table

select name from language;
#List of first names of all employees from the staff table
select first_name from staff;
#Retrieve unique release years.
select DISTINCT release_year from film;
#Determine the number of stores that the company has
SELECT COUNT(DISTINCT store_id)
FROM store;
#Determine the number of employees that the company has.
select count(distinct staff_id)
from staff;
#Determine how many films have been rented
SELECT COUNT( inventory_id ) as numOfDVDsOnRent 
FROM rental
WHERE return_date IS NULL;
#how many films are available for rent 
-- select * from inventory_id;
select * from inventory;
select count(distinct film_id) from inventory; # avilble to rent from store
select count(*) from film; # Total Film
select * from rental;
select count(distinct inventory_id) from rental; # already rented
#Determine the number of distinct last names of the actors in the database.
select count(distinct last_name) from actor;
# Retrieve the 10 longest films
select  title, length from film order by length desc limit 10;
select * from film order by length desc limit 10;
#Retrieve all actors with the first name "SCARLETT"
select * from actor where first_name like "SCARLETT" ;
#Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes
select * from film where (title like "%ARMAGEDDON%") and (length>100);
#7.3 Determine the number of films that include Behind the Scenes content
select count(film_id) from  film where special_features like "%Behind the Scenes%";





