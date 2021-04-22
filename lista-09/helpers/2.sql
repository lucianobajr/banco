-- 2 (configuracao inicial)

CREATE SCHEMA IF NOT EXISTS lista9ex2;

USE lista9ex2;

CREATE TABLE IF NOT EXISTS carros
(
    idcarros INT,
    montadora VARCHAR(20),
    modelo VARCHAR(20),
    versao VARCHAR(20),
    cilindrada INT,
    combustivel VARCHAR(20),
    PRIMARY KEY (idcarros)
);

INSERT INTO carros 
VALUES 	(1, 'fiat', 'Palio', 'Fire', 1000, 'flex'),
	(2, 'fiat', 'Palio', '1.8R', 1800, 'flex'),
	(3, 'volkswagen', 'Gol', 'Trend', 1000, 'flex'),
	(4, 'volkswagen', 'Gol', 'Power', 1600, 'flex'),
	(5, 'chevrolet', 'Vectra', 'Elegance', 2000, 'flex'),
	(6, 'chevrolet', 'Vectra', 'Elite', 2000, 'flex'),
	(7, 'ford', 'Fusion', 'SEL2.5', 2500, 'gasolina'),
	(8, 'ford', 'Fusion', 'SELV6', 3000, 'gasolina'),
	(9, 'fiat', 'Punto', 'Sporting', 1800, 'flex'),
	(10, 'fiat', 'Punto', 'T-JET', 1400, 'gasolina'),
	(11, 'volkswagen', 'Polo', 'Confortline', 1600, 'flex'),
	(12, 'volkswagen', 'Polo', 'GT', 2000, 'flex');

-- fim da configuracao inicial do exercicio 2