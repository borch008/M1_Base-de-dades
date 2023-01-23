select movies.tb_genre.genre_name, count(movies.tb_movie.movie_genre_id) as total_movies_by_genre from movies.tb_movie
left join movies.tb_genre on movies.tb_movie.movie_genre_id = movies.tb_genre.genre_id
group by genre_name
order by total_movies_by_genre desc;