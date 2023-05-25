-- Question1
select distinct count(last_name) from actor;

-- Question2
select distinct (language_id) from film;

-- Question3
select sum(rating) from film
where rating ='PG-13';

-- Question4
select release_year, length from film
where release_year ='2006'
order by length desc
limit 10;

-- Question5
select datediff(max(rental_date),min(rental_date)) from rental;

-- Question6
select *, date_format(convert(rental_date,date),'%m') as ' Rental Month',date_format(convert(rental_date,date),'%d') as ' Rental Day'
from rental
limit 20;

-- Question 7
select *,
case
when date_format(rental_date, '%W') = 'Saturday' or 'Sunday'
then 'weekend'
else 'workday'
end
as day_type
from rental;

-- Question 8
select *,rental_id from rental
where (max(date_format(convert(rental_date,date)'%m')));

select count(rental_id) from rental
where date_format(rental_date,'%m') =(select max(date_format(rental_date,'%m')) from rental);
