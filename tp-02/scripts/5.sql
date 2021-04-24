SELECT nomeplat,nomefab,COUNT(*) AS numero_jogos 
	FROM compativel_jogo_plataforma 
	NATURAL JOIN plataforma
    NATURAL JOIN fabricante
    NATURAL JOIN jogo
    GROUP BY nomeplat
    ORDER BY nomeplat;