-- Recupere o nome jogo juntamente com as horas jogadas, levando em conta todas as plataformas em que o jogo é disponível. 
-- A coluna que irá apresentar a quantidade de horas jogadas deverá ser exibida com o nome “horas_jogadas”.

SELECT nomejogo,SUM(horas) AS "horas_jogadas"
	FROM compativel_jogo_plataforma
    NATURAL JOIN jogo
    NATURAL JOIN horas_jogadas
    GROUP BY nomejogo;


--Crie uma função chama jogos_desejados_plataforma que recupera o nome dos jogos na lista de desejos, de uma plataforma passada por parâmetro.
-- Como resposta a esta questão você deverá escrever o código da declaração da função somente

CREATE FUNCTION jogos_desejados_plataforma (nome_plataforma VARCHAR(30))
RETURNS VARCHAR(30) 
READS SQL DATA
DETERMINISTIC 
RETURN (SELECT nomejogo
	FROM lista_desejos
    NATURAL JOIN plataforma
        WHERE nomeplat=nome_plataforma AND prioridade=(
			SELECT MAX(prioridade)
			FROM lista_desejos 
            NATURAL JOIN plataforma
			WHERE nomeplat=nome_plataforma
	)
    LIMIT 1
);

-- Utilize a função criada na questão anterior para recupar o nome dos jogos na lista de desejos da plataforma "SNES"
SELECT jogos_desejados_plataforma("SNES");

-- Utilize a função criada na questão 13-1 recupar o nome dos jogos na lista de desejos de todas as plataformas,juntamente com seu nome.
-- A coluna que irá apresentar o nome do jogo deverá ser exibida com o nome “prioridade_lista_desejos”.
SELECT nomeplat,jogos_desejados_plataforma(nomeplat) AS prioridade_lista_desejos
	from plataforma;