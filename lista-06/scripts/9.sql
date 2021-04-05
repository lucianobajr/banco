INSERT INTO carro (modelo,versao,cilindrada,combustivel,idmontadora)
VALUES ("Polo","Confortline","1600","flex",(SELECT idmontadora FROM montadora WHERE nome="Volkswagem"));

INSERT INTO carro (modelo,versao,cilindrada,combustivel,idmontadora)
VALUES ("Polo","GT","2000","flex",(SELECT idmontadora FROM montadora WHERE nome="Volkswagem"));