SELECT nome,salario FROM funcionario ORDER BY salario DESC LIMIT 1;
SELECT nome,salario FROM funcionario WHERE salario=(SELECT MAX(salario) FROM funcionario);
