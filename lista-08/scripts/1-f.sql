--Qual consulta pode ter gerado o seguinte resultado (inclusive considerando a ordem das tuplas)
SELECT CD_PAC,NM_PAC,DT_NASC,DESC_CONVENIO 
	FROM paciente JOIN convenio ON paciente.CONV_PAC=convenio.COD_CONVENIO 
    union
	SELECT CD_PAC,NM_PAC,DT_NASC,DESC_CONVENIO FROM convenio 
	LEFT JOIN paciente
    ON convenio.COD_CONVENIO=paciente.CONV_PAC
    WHERE COD_CONVENIO NOT IN(
		SELECT COD_CONVENIO
		FROM paciente JOIN convenio ON paciente.CONV_PAC=convenio.COD_CONVENIO 
	)
    ORDER BY NM_PAC IS NULL,NM_PAC,DESC_CONVENIO;