SELECT paciente.NM_PAC,atendimento.DIA_ATEND 
	FROM paciente 
    INNER JOIN atendimento ON paciente.CD_PAC=atendimento.CD_PAC 
    HAVING atendimento.DIA_ATEND="1996-04-09";