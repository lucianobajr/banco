SELECT departamento.nomedepto,AVG(salario) AS media_salario 
	FROM funcionario 
    INNER JOIN departamento ON funcionario.did=departamento.did 
    GROUP BY departamento.did 
    HAVING COUNT(funcionario.did=departamento.did)>2 
    ORDER BY departamento.nomedepto; 
    
SELECT departamento.nomedepto,AVG(salario) AS media_salario 
	FROM funcionario 
    NATURAL JOIN departamento 
    GROUP BY departamento.nomedepto 
    HAVING COUNT(*)>2 
    ORDER BY departamento.nomedepto; 
