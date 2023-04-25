#Mostrar el título y el nombre del género de todas las series.
select title as titulo, genre_id as genero, name as nombre from movies_db.series as ser join movies_db.genres as gen 
where ser.genre_id = gen.id;
#Mostrar el título de los episodios, el nombre y apellido de los actores que trabajan en cada uno de ellos.
select * from movies_db.actors ;
select * from movies_db.seasons;
select * from movies_db.series;
select * from movies_db.movies;
select * from movies_db.actor_episode;
select * from movies_db.episodes;

select ep.title as Titulo,  sea.number from movies_db.episodes as ep join  movies_db.seasons as sea 
where ep.season_id = sea.id ;

select ep.title as Titulo,  acp.actor_id, act.first_name as nombre, act.last_name as apellido
from movies_db.episodes as ep join movies_db.actor_episode as acp join movies_db.actors as act
where ep.id = acp.episode_id and act.id = acp.actor_id;

#Mostrar el título de todas las series y el total de temporadas que tiene cada una de ellas.
select ser.title as nombre, count(sea.serie_id)  from movies_db.series as ser join movies_db.seasons as sea 
on ser.id = sea.serie_id group  by ser.title having count(sea.serie_id);
#Mostrar el nombre de todos los géneros y la cantidad total de películas por cada uno, siempre que sea mayor o igual a 3.
select gen.name as nombre, count(mov.genre_id) as cantidad from movies_db.genres as gen join movies_db.movies as mov 
on gen.id = mov.genre_id
group by gen.name 
having count(mov.genre_id)>=3;
select * from movies_db.movies;
select * from movies_db.genres;

#Mostrar sólo el nombre y apellido de los actores que trabajan en todas las películas de la guerra de las galaxias y que 
#estos no se repitan.
select * from movies_db.actor_movie;
select * from  movies_db.actors;

select first_name as nombre, last_name as apellido, "Gerra de galacias" 
from movies_db.movies as mov join movies_db.actor_movie as actm join  movies_db.actors as act 
where mov.id = actm.movie_id and actm.actor_id = act.id and  title like '%Guerra%'  
group by first_name, last_name;


