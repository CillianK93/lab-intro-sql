-- Question 1
alter table staff
drop column picture;
select * from staff;
-- Question 2
Select * from customer
where first_name ='TAMMY';

insert into staff
values (3, 'Tammy','Sanders',79,'TAMMY.SANDERS@sakilacustomer.org',2,1,'TAMMY','hello', '2006-02-15 04:57:20');

select * from staff;

-- Question 3
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select film_id from film
where title = 'Academy Dinosaur';
 
select inventory_id from inventory
where film_id =1;

select staff_id from staff
where first_name = 'Mike';

select rental_id from rental;

insert into rental
values(250000000, curdate(),1,130,'2023-06-1 00:00:00',1,'2006-02-15 04:57:20');

select * from rental
where rental_id = 250000000;

-- Question 4
select customer_id, email, create_date from customer
where active = 0; -- getting the non active users



Create table back_up (customer_id int(11) default null,  -- creating back_up table
  email text,
  create_date text);

insert into back_up (customer_id, email, create_date)
select customer_id, email,create_date from customer
where active =0;  -- inserting non activer users

alter table back_up
rename to deleted_users; -- renaming table becuase i didnt read the Question haha

select * from deleted_users;  -- making sure the table is correct

set sql_safe_updates = 0;  -- setting update mode to off
set foreign_key_checks=0;  -- had an error with foreign keys and found this to fix

delete from customer
where active = 0;  -- deleting non active users 

select * from customer
where active = 0; -- checking it worked and fin.
















