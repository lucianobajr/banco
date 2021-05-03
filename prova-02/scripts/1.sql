
ALTER TABLE `aluno` ADD idcurso INT DEFAULT 1;  
UPDATE aluno SET idcurso=2 WHERE nota<80;


SELECT idaluno,nome,nota AS novanota,idcurso
FROM aluno
WHERE idcurso IN(
	SELECT idcurso FROM aluno
    GROUP BY idcurso
    HAVING COUNT(*)>2
)
union
SELECT idaluno,nome,nota AS novanota,idcurso
FROM aluno
WHERE idcurso IN(
	SELECT idcurso FROM aluno
    GROUP BY idcurso
    HAVING COUNT(*)<=2
)
ORDER by nome DESC;