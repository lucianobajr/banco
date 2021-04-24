SELECT ano_lancamento_jogo,count(*) AS jogos_lancados
	FROM compativel_jogo_plataforma 
    NATURAL JOIN jogo
    GROUP BY ano_lancamento_jogo
    ORDER BY ano_lancamento_jogo;