SELECT DISTINCT CONCAT(UCASE(montadora),"-",modelo) FROM carros;

SELECT DISTINCT CONCAT_WS("-",UCASE(montadora),LOWER(modelo)) FROM carros;
