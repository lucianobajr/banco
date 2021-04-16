--Quais os nomes dos convênios que possuem pelo menos um paciente =>junção e sub-consultas

-- JUNÇÃO
SELECT DISTINCT DESC_CONVENIO
    FROM convenio
    JOIN paciente ON convenio.COD_CONVENIO=paciente.CONV_PAC;

--SUB-CONSULTO

SELECT DESC_CONVENIO FROM convenio 
	WHERE COD_CONVENIO IN(
		SELECT CONV_PAC
		FROM paciente );