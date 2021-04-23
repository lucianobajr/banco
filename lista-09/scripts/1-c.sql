CREATE VIEW pacientesatendidos AS 
    SELECT paciente.NM_PAC,paciente.DT_NASC FROM atendimento
	JOIN paciente ON atendimento.CD_PAC=paciente.CD_PAC
    GROUP BY paciente.CD_PAC
    HAVING COUNT(*)>2;