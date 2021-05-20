SELECT genre_name,COUNT(*) AS quantidade_filmes 
	FROM movie
    NATURAL JOIN  movie_info
    NATURAL JOIN movie_genre
    group by genre_name
    ORDER BY COUNT(*);