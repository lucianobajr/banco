--Quais são os dados dos pacientes que ainda não tiveram nenhum atendimento?
SELECT * FROM paciente 
	WHERE CD_PAC NOT IN(
		SELECT paciente.CD_PAC
		FROM paciente 
		JOIN atendimento ON paciente.CD_PAC=atendimento.CD_PAC
);

SELECT * FROM paciente 
	WHERE NOT EXISTS(
		SELECT *
		FROM paciente 
		JOIN atendimento ON paciente.CD_PAC=atendimento.CD_PAC
);
