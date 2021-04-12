SELECT paciente.*,convenio.DESC_CONVENIO 
	FROM paciente 
	INNER JOIN convenio ON paciente.CONV_PAC=convenio.COD_CONVENIO 
    HAVING convenio.DESC_CONVENIO="Unimed - código 11347";
    
SELECT paciente.*,convenio.DESC_CONVENIO 
	FROM paciente 
	JOIN convenio ON paciente.CONV_PAC=convenio.COD_CONVENIO 
    WHERE convenio.DESC_CONVENIO="Unimed - código 11347";
