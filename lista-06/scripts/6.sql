INSERT INTO montadora(nome)
VALUES ("Chevrolet");

INSERT INTO carro (modelo,versao,cilindrada,combustivel,idmontadora)
VALUES ("Vectra","Elegance","2000","flex",(SELECT idmontadora FROM montadora WHERE nome="Chevrolet"));

INSERT INTO carro (modelo,versao,cilindrada,combustivel,idmontadora)
VALUES ("Vectra","Elite","2000","flex",(SELECT idmontadora FROM montadora WHERE nome="Chevrolet"));