-- Quais os dados dos consumidores que não concretizaram nenhum negócio?
SELECT * FROM consumidor
    WHERE  identidade NOT IN(
		SELECT identidade FROM consumidor 
		JOIN negocio ON consumidor.identidade=negocio.codComprador
);

SELECT * FROM consumidor LEFT JOIN negocio
ON consumidor.identidade = negocio.codComprador
WHERE codRevenda IS NULL;

