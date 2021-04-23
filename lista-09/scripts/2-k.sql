SELECT montadora,modelo,versao,preco_estimado(cilindrada) AS preco 
    FROM carros ORDER BY preco;