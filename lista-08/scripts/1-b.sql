--Qual é o nome do paciente mais velho dentre aqueles do convenio “Unimed – código 11347”?
SELECT NM_PAC
    FROM paciente 
    JOIN convenio ON paciente.CONV_PAC=convenio.COD_CONVENIO
    WHERE DESC_CONVENIO="Unimed - código 11347"
    ORDER BY DT_NASC
    LIMIT 1;

SELECT NM_PAC
    FROM paciente 
    JOIN convenio ON paciente.CONV_PAC=convenio.COD_CONVENIO
    IN(DESC_CONVENIO="Unimed - código 11347")
    ORDER BY DT_NASC
    LIMIT 1;