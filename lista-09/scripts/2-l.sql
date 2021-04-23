DELIMITER |

CREATE FUNCTION max_cilindrada (montadora_param CHAR(20))
RETURNS CHAR(255)
READS SQL DATA
DETERMINISTIC
BEGIN
	DECLARE res CHAR(255);
    SET res=(SELECT CONCAT(
                    UCASE(montadora),", ",
                    modelo," ",versao,", ",
                    cilindrada," cilindradas" 
	            )
	        FROM carros WHERE montadora=montadora_param
                and cilindrada=(
		    SELECT MAX(cilindrada) FROM carros WHERE montadora=montadora_param)
	        ORDER BY modelo,versao
            LIMIT 1);
    RETURN res;
END;
|
DELIMITER ;