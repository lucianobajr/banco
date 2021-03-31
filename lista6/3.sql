CREATE TABLE IF NOT EXISTS carro(
    idcarro INT UNSIGNED NOT NULL AUTO_INCREMENT,
    modelo VARCHAR (45) NOT NULL,
    versao VARCHAR (45) NOT NULL,
    cilindrada VARCHAR (45) NOT NULL,
    combustivel VARCHAR (45) NOT NULL,
	idmontadora INT UNSIGNED,
    PRIMARY KEY(idcarro),
    FOREIGN KEY (idmontadora) REFERENCES lista6.montadora(idmontadora)
);