-- Qual é o modelo do carro que foi vendido pelo maior preço?
SELECT modelo FROM automovel
	JOIN negocio ON automovel.codAuto=negocio.codAuto
    WHERE preco=(SELECT MAX(preco) FROM negocio);

SELECT modelo FROM automovel 
    JOIN negocio ON automovel.codAuto=negocio.codAuto
    WHERE preco IN(
		SELECT MAX(preco)
		FROM negocio);