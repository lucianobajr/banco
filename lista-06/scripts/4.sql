INSERT INTO montadora(nome)
VALUES ("Fiat");

INSERT INTO carro (modelo,versao,cilindrada,combustivel,idmontadora)
VALUES ("Palio","Fire","1000","flex",(SELECT idmontadora FROM montadora WHERE nome="Fiat"));

INSERT INTO carro (modelo,versao,cilindrada,combustivel,idmontadora)
VALUES ("Palio","1.8R","1800","flex",(SELECT idmontadora FROM montadora WHERE nome="Fiat"));