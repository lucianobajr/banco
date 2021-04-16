-- Recuperar modelo, ano e preço dos automóveis, porém os automóveis brasileiros
-- deverão ser exibidos com um valor 50% maior que o valor armazenado no banco de
-- dados. A coluna relativa ao preço deverá ser exibida com o nome “valor”
SELECT modelo,ano,preco_tabela as "valor" 
	FROM automovel 
    WHERE codAuto NOT IN (SELECT codAuto FROM automovel WHERE pais="Brasil")
    UNION 
    SELECT modelo,ano,preco_tabela*1.5 as "valor" 
		FROM automovel 
		WHERE codAuto IN (
			SELECT codAuto FROM automovel WHERE pais="Brasil"
);