-- lab1 q1.
use sakila;

-- q2
select * from actor;

select * from film;

select * from customer;

 -- q3
select title
from film;

-- q4
select name as language
from language;

-- q5
select store_id
from store;

select staff_id
from staff; 

select first_name
from staff;

-- lab 2 q 1
select * from actor
where first_name = 'Scarlett';

-- q 2 
select * from actor
where last_name = 'Johansson';

-- q 3
 select count(film_id)
 from film;
 
 -- q 4
 select count(rental_id)
 from rental;
 
 -- q 5
 select min(rental_duration)
 from film;
 
 select max(rental_duration)
 from film;
 
 -- q 6
 select min(length) as Min_duration, max(length) as Max_Duration
 from film;
 
 -- q 7
 select (avg(length)) from film;
 
 -- q 8
select  concat(floor(avg(length)/60),'h', round(((avg(length))%60),0),'min') from film;
-- q 9
select count(length) from film
where length >= 180;

-- q 10
select concat(upper(left(first_name,1)), lower(substring(first_name,2)), ' ', last_name, ' - ', lower(email)) as Customer_info
from customer;

-- q11
select max(length(title)) as 'Longest Title' from film;







 