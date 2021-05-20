SELECT genre_name,AVG(rating) AS media_votos 
	FROM movie
	NATURAL JOIN  movie_info
	NATURAL JOIN movie_genre
	group by genre_name
	ORDER BY AVG(rating) DESC;