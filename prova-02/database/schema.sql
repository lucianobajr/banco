create schema prova;

use prova;

CREATE TABLE aluno (
  `idaluno` INT NOT NULL,
  `nome` VARCHAR(30),
  `nota` INT NOT NULL,
  PRIMARY KEY(`idaluno`)
);

CREATE TABLE cargo (
    `idcargo` INT NOT NULL,
    `nomec` VARCHAR(30),
    `salario` INT NOT NULL,
    PRIMARY KEY(`idcargo`)
);

CREATE TABLE depto (
    `iddepto` INT NOT NULL,
    `nomed` VARCHAR(30),
    `ramal` INT NOT NULL,
    PRIMARY KEY(`iddepto`)
);

CREATE TABLE funcionario (
    `idfunc` INT NOT NULL,
    `nomef` VARCHAR(30),
    `dataadmissao` VARCHAR(30),
    `sexo` VARCHAR(2),
    `idcargo` INT NOT NULL,
    `iddepto` INT NOT NULL,
    PRIMARY KEY(`idfunc`)
    FOREIGN KEY(`idcargo`) REFERENCES `prova`.`cargo` (`idcargo`)
    FOREIGN KEY(`iddepto`)REFERENCES `prova`.`depto` (`iddepto`)  
);