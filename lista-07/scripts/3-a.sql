SELECT convenio.DESC_CONVENIO,paciente.NM_PAC 
	FROM paciente 
    INNER JOIN convenio ON paciente.CONV_PAC=convenio.COD_CONVENIO 
    HAVING paciente.NM_PAC="Rita de Fátima S. Costa"; 