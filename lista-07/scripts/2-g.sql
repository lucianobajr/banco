SELECT departamento.nomedepto,AVG(salario) AS media_salario 
	FROM funcionario 
    INNER JOIN departamento ON funcionario.did=departamento.did 
    GROUP BY departamento.did 
    ORDER BY departamento.nomedepto; 

SELECT departamento.nomedepto,AVG(salario) AS media_salario 
	FROM funcionario 
	NATURAL JOIN departamento
	GROUP BY departamento.nomedepto 
	ORDER BY departamento.nomedepto; 
