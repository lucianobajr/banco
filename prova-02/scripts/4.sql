SELECT nomef,salario*1.30 AS salario_com_aumento
    FROM funcionario
    NATURAL JOIN cargo
    WHERE nomec LIKE "%C%"
UNION    
SELECT nomef,salario*1.15 AS salario_com_aumento
    FROM funcionario
    NATURAL JOIN cargo
    WHERE nomec NOT LIKE "%C%"
ORDER BY nomef;