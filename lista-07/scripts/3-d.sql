SELECT DISTINCT convenio.DESC_CONVENIO,COUNT(*) AS numero_pacientes
    FROM  convenio 
    JOIN paciente ON convenio.COD_CONVENIO=paciente.CONV_PAC 
    WHERE convenio.DESC_CONVENIO="Unimed - código 11347" 
    GROUP BY convenio.DESC_CONVENIO;