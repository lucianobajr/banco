INSERT INTO carro (modelo,versao,cilindrada,combustivel,idmontadora)
VALUES ("Punto","Sporting","1800","flex",(SELECT idmontadora FROM montadora WHERE nome="Fiat"));

INSERT INTO carro (modelo,versao,cilindrada,combustivel,idmontadora)
VALUES ("Punto","T-JET","1400","gasolina",(SELECT idmontadora FROM montadora WHERE nome="Fiat"));