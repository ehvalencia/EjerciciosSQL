##Mostrar todos los registros de la tabla de movies. 
select * from movies_db.movies;
#Mostrar el nombre, apellido y rating de todos los actores.
select first_name as nombre, last_name as apellido from movies_db.actors; 
#Mostrar el título de todas las series y usar alias para que tanto el nombre de la tabla como el campo estén en español.
select title as Titulo  from movies_db.series as Series;
#Mostrar el nombre y apellido de los actores cuyo rating sea mayor a 7.5.
select first_name as nombre, last_name as apellido,  rating from movies_db.actors where rating > 7.5;
#Mostrar el título de las películas, el rating y los premios de las películas con un rating mayor a 7.5 y con más de dos premios.
select title as Titulo, awards from movies_db.movies where rating > 7.5 and awards > 2;
#Mostrar el título de las películas y el rating ordenadas por rating en forma ascendente.
select title as Titulo, rating from movies_db.movies order by rating asc;
#Mostrar los títulos de las primeras tres películas en la base de datos.
select title as Titulo, rating from movies_db.movies limit 3;
#Mostrar el top 5 de las películas con mayor rating.
select title as Titulo, rating from movies_db.movies order by rating DESC LIMIT 5;
#Listar los primeros 10 actores.
select first_name as nombre, last_name as apellido from movies_db.actors limit 10; 
#Mostrar el título y rating de todas las películas cuyo título sea de Toy Story.
select title as Titulo, rating from movies_db.movies where title like '%Story%';
#Mostrar a todos los actores cuyos nombres empiezan con Sam.
select first_name as nombre, last_name as apellido from movies_db.actors where first_name like 'Sam%'; 
#Mostrar el título de las películas que salieron entre el 2004 y 2008.
select title as Titulo, release_date from movies_db.movies where release_date between '2004-01-01' and '2008-12-31'; 
#Traer el título de las películas con el rating mayor a 3, con más de 1 premio y con fecha de lanzamiento entre el año 1988 al 2009. Ordenar los resultados por rating.
select title as Titulo, release_date from movies_db.movies where rating>3 and awards >1 and release_date  between '1988-01-01' and '2009-12-31' order by rating asc; 