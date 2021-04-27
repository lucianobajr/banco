SELECT AVG(memoria) AS media_memoria_jogos
	FROM compativel_jogo_plataforma 
    NATURAL JOIN plataforma;