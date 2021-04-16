-- Quais os consumidores (identidade e nome) que compram apenas carros Argentinos?
SELECT DISTINCT identidade,nome FROM negocio
    JOIN consumidor ON negocio.codComprador=consumidor.identidade
    WHERE codAuto IN(
        select codAuto FROM automovel WHERE pais="Argentina"
    );