select  movies.tb_person.person_name, movies.tb_movie_person.movie_id, count(movies.tb_movie_person.person_id) as total_roles_by_movie 
from movies.tb_movie_person
left join movies.tb_person on movies.tb_movie_person.person_id = movies.tb_person.person_id
group by movies.tb_person.person_name, movie_id
having (total_roles_by_movie) > 1
order by person_name
;
