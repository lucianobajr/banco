INSERT INTO montadora(nome)
VALUES ("Ford");

INSERT INTO carro (modelo,versao,cilindrada,combustivel,idmontadora)
VALUES ("Fusion","SEL2.5","2500","gasolina",(SELECT idmontadora FROM montadora WHERE nome="Ford"));

INSERT INTO carro (modelo,versao,cilindrada,combustivel,idmontadora)
VALUES ("Fusion","SELV6","3000","gasolina",(SELECT idmontadora FROM montadora WHERE nome="Ford"));