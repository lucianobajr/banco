SELECT DISTINCT paciente.NM_PAC,paciente.DT_NASC,COUNT(*) AS quantidade_atendimentos
    FROM  paciente 
    JOIN atendimento ON paciente.CD_PAC=atendimento.CD_PAC
    GROUP BY paciente.NM_PAC,paciente.DT_NASC
    HAVING COUNT(*)>2;