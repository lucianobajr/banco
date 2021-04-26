SELECT modelo,versao,LEFT(montadora,4) FROM carros;

SELECT modelo,versao,UPPER(LEFT(montadora,4)) FROM carros;
                                
SELECT modelo,versao,UPPER(SUBSTR(montadora,1,4)) FROM carros;
