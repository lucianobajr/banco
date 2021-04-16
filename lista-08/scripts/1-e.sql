--Quais os id’s e nomes dos convênios que não possuem pacientes?
SELECT COD_CONVENIO,DESC_CONVENIO FROM convenio 
	WHERE COD_CONVENIO NOT IN(
		SELECT CONV_PAC
		FROM paciente);