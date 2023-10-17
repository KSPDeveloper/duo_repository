use sakila;

select * from actor;

select * from actor where first_name = "John";

select * from actor where last_name = "Neeson";

select * from actor where actor_id % 10 = 0;

select * from film where film_id = 100;

select * from film;

select * from film where rating = "r";

select * from film where rating != "r";

select * from film
order by length 
limit 10;

select * from film --
order by length desc; --

select * from film where special_features like '%Deleted Scenes%';


select last_name, count(*) as count from actor 
where last_name is not null
group by last_name having count = 1
order by last_name desc;


select last_name, count(*) as count from actor 
where last_name is not null
group by last_name having count > 1
order by count desc;

select * from film_actor;


select * from actor where actor_id = (
select actor_id from
(select actor_id, count(*) as count 
from film_actor
where actor_id is not null
group by actor_id
order by count desc
limit 1) as t1 ) ;

select title, release_year from film 
where title = 'academy dinosaur';

select avg(length) from film; 

select * from film_category;
select * from film;
select * from category;


select
	c.name,
    avg(f.length) as avg_length,
    fc.category_id
from film as f
inner join film_category as fc on f.film_id = fc.film_id
inner join category as c on c.category_id = fc.category_id
group by category_id
order by avg_length desc;

-- 17
select * from film where description like '%robot%';

-- 18
select * from film where release_year = 2010;

-- 19
select
	f.title,
	c.name,
    fc.category_id
from film as f
inner join film_category as fc on f.film_id = fc.film_id
inner join category as c on c.category_id = fc.category_id
where c.name = 'Horror';

-- 20
select * from staff where staff_id = 2;

-- 21
select
	a.first_name,
    a.last_name,
    f.title
from film as f
inner join film_actor as fa on f.film_id = fa.film_id
inner join actor as a on a.actor_id = fa.actor_id
where first_name = 'Fred' and last_name = 'Costner';

-- 22
select count(*) from country;

-- 23
select * from language
order by name desc;

-- 24
select * from actor where last_name like '%son';

-- 25
select
    c.name,
    count(*) as count
from film as f
inner join film_category as fc on f.film_id = fc.film_id
inner join category as c on c.category_id = fc.category_id
group by name
order by count desc;
