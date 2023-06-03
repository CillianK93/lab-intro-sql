  -- Question 1
  select title,length, rank() over (order by length desc) as 'Rank' from film
  where length is not null;

  
  -- Question 2
  select title, length, rating, rank() over (partition by rating order by length desc) from film
  where length is not null;
  
  -- Question 3
  select *, count(film_id) from category c
  join film_category fc on c.category_id = fc.category_id
  group by name
  order by count(film_id) desc;
  
  -- Question 4
  select a.first_name,a.last_name, count(a.actor_id) from actor a
  join film_actor fa on a.actor_id = fa.actor_id
  group by first_name
  order by count(a.actor_id) desc
  limit 1;
  
  -- Question 5
  select count(c.customer_id),c.first_name,c.last_name from customer c
  join rental r on r.customer_id = c.customer_id
  group by first_name
  order by count(c.customer_id) desc
  limit 1;
  
  -- Bonus, bonus
  select f.title, count(f.title) from film f
  join inventory i on f.film_id = i.film_id
  join rental r on i.inventory_id = r.inventory_id
  group by f.title
  order by count(f.title) desc limit 1;
  
  
  
  
  
  
  
  
  
  
  
  