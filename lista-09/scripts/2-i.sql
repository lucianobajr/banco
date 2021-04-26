SELECT montadora,modelo,
	ROUND(RAND(1) * (10.00 - 0.00),2) + 0 AS NOTA 
	FROM carros ORDER BY NOTA;
	
SELECT montadora,modelo,
	ROUND(RAND(1) * 10.00,2) + 0 AS NOTA 
	FROM carros ORDER BY NOTA;
