INSERT INTO montadora(nome)
VALUES ("Volkswagem");

INSERT INTO carro (modelo,versao,cilindrada,combustivel,idmontadora)
VALUES ("Gol","Trend","1000","flex",(SELECT idmontadora FROM montadora WHERE nome="Volkswagem"));

INSERT INTO carro (modelo,versao,cilindrada,combustivel,idmontadora)
VALUES ("Gol","Power","1600","flex",(SELECT idmontadora FROM montadora WHERE nome="Volkswagem"));