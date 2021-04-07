ALTER TABLE carro ADD numerodevalvulas INT NOT NULL DEFAULT 8;
UPDATE carro SET numerodevalvulas=16 WHERE modelo="Punto" AND versao="T-JET";
UPDATE carro SET numerodevalvulas=16 WHERE modelo="Fusion" AND versao="SEL2.5";
UPDATE carro SET numerodevalvulas=24 WHERE modelo="Fusion" AND versao="SELV6"; 