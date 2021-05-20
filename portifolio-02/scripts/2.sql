SELECT genre_name,COUNT(*) AS quantidade_filmes 
	FROM movie
    NATURAL JOIN  movie_info
    NATURAL JOIN movie_genre
    GROUP BY genre_name
    ORDER BY COUNT(*);
