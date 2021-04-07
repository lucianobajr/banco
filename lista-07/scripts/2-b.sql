SELECT nome FROM funcionario 
    WHERE did=(SELECT did FROM departamento WHERE nomedepto="Contabilidade");