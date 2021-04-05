CREATE TABLE IF NOT EXISTS montadora (
    idmontadora INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    PRIMARY KEY (idmontadora),
    UNIQUE KEY (nome)
);