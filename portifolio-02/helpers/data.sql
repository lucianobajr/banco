-- insert data in movie

INSERT INTO `movie` (
    `movie_id`, 
    `movie_name`, 
    `production_year`,
    `votes`,
    `ranking`,
    `rating`
) 
VALUES (1, 'o jogo da imitação', 2014,20,1,10),
    (2, 'parasita', 2019,18,2,9),
    (3, 'rocketman', 2019,10,3,8),
    (4, 'pantera negra', 2018,14,4,8),
    (5, 'judas e o messias negro', 2021,12,5,7),
    (6, 'doutor estranho', 2016,9,6,6),
    (7, 'truque de mestre', 2013,8,7,6),
    (8, 'kingsman: serviço secreto', 2014,5,8,5),
    (9, 'a rede social', 2010,10,9,5),
    (10, 'clube da luta', 1999,11,10,5);

-- insert data in movie_genre

INSERT INTO `movie_genre` (
    `movie_genre_id`, 
    `genre_name`
) 
VALUES (1, 'drama'),
    (2, 'thriller'),
    (3, 'musical'),
    (4, 'ação');

	INSERT INTO `movie_info` (
    `movie_id`, 
    `movie_genre_id`
) 

-- insert data in movie_info

VALUES (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 1),
    (6, 4),
    (7, 2),
    (8, 4),
    (9, 1),
    (10,1);

-- insert data in person

INSERT INTO `person` (
  `person_id`,
  `person_name`,
  `gender`
)
VALUES (1,"morten tyldum","M"),
(2,"bong joon-ho","M"),
(3,"dexter fletcher","M"),
(4,"ryan coogler","M"),
(5,"shaka king","M"),
(6,"scott derrickson","M"),
(7,"louis leterrier","M"),
(8,"matthew vaughn","M"),
(9,"david fincher","M");

-- insert data in role_type

INSERT INTO `role_type` (
  `role_type_id`,
  `type_name`)
VALUES (1,"diretor");

-- insert data in role

INSERT INTO `role` (
  `person_id`,
  `movie_id`,
  `role_type_id`)
VALUES (1,1,1),
    (2,2,1),
    (3,3,1),
    (4,4,1),
    (5,5,1),
    (6,6,1),
    (7,7,1),
    (8,8,1),
    (9,9,1),
    (9,10,1);