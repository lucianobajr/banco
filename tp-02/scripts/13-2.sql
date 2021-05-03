/*Crie uma função chama jogos_desejados_plataforma que recupera o 
nome do jogo na lista de desejos que possui maior prioridade, de uma 
plataforma passada por parâmetro. Como resposta a esta questão você 
deverá escrever o código da declaração da função somente*/

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