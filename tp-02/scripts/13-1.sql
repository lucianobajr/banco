/* Recupere o nome jogo juntamente com as horas jogadas, levando em 
conta todas as plataformas em que o jogo é disponível. A coluna que 
irá apresentar a quantidade de horas jogadas deverá ser exibida com 
o nome “horas_jogadas”.*/

SELECT nomejogo,SUM(horas) AS "horas_jogadas"
	FROM compativel_jogo_plataforma
    NATURAL JOIN jogo
    NATURAL JOIN horas_jogadas
    GROUP BY nomejogo;
