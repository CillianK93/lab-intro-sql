-- Question 1
select last_name,count(last_name) from actor
group by last_name
having count(last_name) = 1;

-- Question 2
select last_name, count(last_name) from actor
group by last_name
having count(last_name) > 1;

-- Question 3
select staff_id, count(rental_id) as 'Number of rentals' from rental
group by staff_id;

-- Question 4 
select release_year, count(release_year) as 'Number of Films' from film
group by release_year;

-- Question 5
select rating, count(rating) from film
group by rating;

-- Question 6
select rating, round(avg(length),2) from film
group by rating;

-- Question 7
select rating, round(avg(length),2) from film
group by rating
having round(avg(length),2) > 120;



