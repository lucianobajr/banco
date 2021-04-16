--Apresente os dados de todos os automóveis juntamente com todos os dados de seus respectivos fabricantes
SELECT * FROM automovel JOIN fabricante ON automovel.codAuto=fabricante.codFabricante;