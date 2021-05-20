SELECT person_name,movie_name FROM movie
    NATURAL JOIN  movie_info
    NATURAL JOIN movie_genre
    NATURAL JOIN role
    NATURAL JOIN person
    WHERE genre_name="thriller";