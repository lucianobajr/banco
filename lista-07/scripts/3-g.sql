SELECT DISTINCT paciente.NM_PAC,paciente.DT_NASC,convenio.DESC_CONVENIO
    FROM  paciente 
    JOIN atendimento ON paciente.CD_PAC=atendimento.CD_PAC
    JOIN convenio ON paciente.CONV_PAC=convenio.COD_CONVENIO
    GROUP BY paciente.NM_PAC,paciente.DT_NASC,convenio.DESC_CONVENIO
    ORDER BY  paciente.DT_NASC
    LIMIT 1;