
-- SQL query to count how many counts of Wahlberg are in the data table
select count(*) 
from public.actor 
where last_name 
like 'Wahl%'

-- Counts how many entries are between 3.99 and 5.99 for payment amount
select COUNT(*)
from public.payment
where amount between 3.99 and 5.99

-- Counts which film the store has the greatest inventory of
select count(film_id) as "Value Occurence"
from inventory
group by film_id 
order by "Value Occurence" desc 

-- Count the number of customers with the last name William
select count(*) as "Number of William"
from customer
where last_name 
like 'William%'

-- Which employee sold the most rentals. Staff ID 1 is the winner
select count(staff_id)
from rental	
group by staff_id 

-- How many different district names are there? 378
select count(distinct district) 
from address a  

-- What film has the most actors in it? Film ID 1 has 15 unique actors
select count(actor_id) "Unique Actors Per Film"
from film_actor fa 
group by film_id 
order by "Unique Actors Per Film" desc 

-- From store_id 1, how many customers have a last name ending with 'es'? 21
select count(*) 
from customer c 
where last_name 
like '%es'
 
 -- How many payment amounts had a number of rentals above 250 for customers with ids between 380 and 430? 3 Payment amounts, I believe have rentals above 250 with the desired parameters
select count(amount) 
from payment
where customer_id between 380 and 430
group by amount  
having count(amount) > 250 

-- Within the film table, how many rating categories are there? And what rating has the most movies total? 5 categories, PG-13 has the most films
select rating, count(film_id) as "Number of Films in Category"
from film f 
group by rating 




	








