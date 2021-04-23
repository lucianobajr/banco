CREATE VIEW conveniopacientes AS
	SELECT DISTINCT DESC_CONVENIO,COUNT(*) AS numero_pacientes
    FROM convenio
    JOIN paciente ON convenio.COD_CONVENIO=paciente.CONV_PAC
    GROUP BY convenio.DESC_CONVENIO;