-- 2 (configuracao inicial)

CREATE SCHEMA IF NOT EXISTS lista7ex2;

USE lista7ex2;

CREATE TABLE IF NOT EXISTS departamento
(
    did VARCHAR(2) NOT NULL,
    nomedepto VARCHAR(50) NOT NULL,
    PRIMARY KEY(did)
);

CREATE TABLE IF NOT EXISTS funcionario
(
    fid VARCHAR(2) NOT NULL,
    nome VARCHAR(100),
    did VARCHAR(2) NOT NULL,
    salario DECIMAL(11, 2) NOT NULL,
    PRIMARY KEY(fid),
    FOREIGN KEY(did) REFERENCES departamento(did)
);

INSERT INTO departamento (did, nomedepto)
VALUES 	('D1', 'Contabilidade'),
	('D2', 'Administração'),
	('D3', 'Informática'),
	('D4', 'RH');

INSERT INTO funcionario (fid, nome, did, salario)
VALUES 	('E1', 'José', 'D1', 1000.00),
	('E2', 'Maria', 'D1', 2000.00),
	('E3', 'João', 'D2', 1500.00),
	('E4', null, 'D3', 1500.00),
	('E5', 'João', 'D1', 1500.00);


-- fim da configuracao inicial do exercicio 2