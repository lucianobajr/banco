-- Listar o modelo e o nome do fabricante de cada automóvel existente na base de
-- dados, assim como seu país de fabricação. Os fabricantes que não tiverem modelos
-- cadastrados também deverão ser listados
SELECT modelo,pais,nomeFabricante 
	FROM automovel 
    JOIN fabricante ON automovel.codAuto=fabricante.codFabricante
	UNION
	SELECT modelo,pais,nomeFabricante FROM fabricante
		NATURAL JOIN automovel 
		WHERE  fabricante.codFabricante NOT IN(
			SELECT fabricante.codFabricante
			FROM automovel 
			JOIN fabricante ON automovel.codAuto=fabricante.codFabricante
		);

SELECT ifNull(modelo,"),ifNull(pais,"),nomefabricante
	FROM automovel RIGHT JOIN fabricante
	ON automovel.codFabricante = fabricante.codFabricante;
