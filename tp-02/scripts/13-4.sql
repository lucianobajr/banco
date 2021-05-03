/* Utilize a função criada na questão 13-1 para recupar o 
nome do jogo na lista de desejos com maior prioridade 
de todas as plataformas,juntamente  com seu nome. A 
coluna que irá apresentar o nome do jogo  deverá ser 
exibida com o nome “prioridade_lista_desejos”.
*/

SELECT nomeplat,
    jogos_desejados_plataforma(nomeplat) AS prioridade_lista_desejos
	from plataforma;