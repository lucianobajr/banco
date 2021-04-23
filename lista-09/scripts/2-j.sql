CREATE FUNCTION preco_estimado (cilindrada INT)
RETURNS INT 
READS SQL DATA
DETERMINISTIC 
RETURN cilindrada*25 + ROUND(RAND() * POW(cilindrada,3) - cilindrada);