-- Quais os nomes dos pacientes que tiveram dignósticos com a palavra “Melhora”?
SELECT DISTINCT NM_PAC 
    FROM paciente 
    JOIN atendimento ON paciente.CD_PAC=atendimento.CD_PAC
    WHERE DIAG LIKE "%Melhora%";