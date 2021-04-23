SELECT montadora,modelo,
	FLOOR(ROUND(RAND() * (10.00 - 0.00),2) + 0) AS nota 
	FROM carros ORDER BY nota;