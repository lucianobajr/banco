SELECT departamento.nomedepto,AVG(salario) AS media_salario 
	FROM funcionario 
    INNER JOIN departamento ON funcionario.did=departamento.did 
    GROUP BY departamento.did 
    ORDER BY departamento.nomedepto; 