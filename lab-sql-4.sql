-- lab-sql-4
-- Question1 
select title,rating from film;

-- Question 2
select title,release_year from film;

-- Question 3
select title from film
where title regexp 'ARMAGEDDON';

-- Question 4
select title from film
where title regexp 'APOLLO';

-- Question 5
select title from film
where title regexp 'APOLLO$';

-- Question 6
select title from film
where title regexp 'DATE';

-- Question7
select max(length(title)) from film
group by title
order by length(title) desc
limit 10;

-- Question8
select max(length) from film
group by length
order by length desc
limit 10;

-- Question9
select count(special_features) from film
where special_features like '%Behind the Scenes%'; 

-- Question 10
select * from film
order by release_year, title asc;


           