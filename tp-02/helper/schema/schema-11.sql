ALTER TABLE `plataforma` 
    CHANGE `memoria` `memoria` BIGINT;

-- -----------------------------------------------------
-- Table `trabalhobd`.`horas_jogadas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalhobd`.`horas_jogadas` (
  `idjogo` INT NOT NULL,
  `idplataforma` INT NOT NULL,
  `horas` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idjogo`, `idplataforma`),
  INDEX `fk_horas_jogadas_plataforma1_idx` (`idplataforma` ASC) VISIBLE,
  CONSTRAINT `fk_horas_jogadas_jogo1`
    FOREIGN KEY (`idjogo`)
    REFERENCES `trabalhobd`.`jogo` (`idjogo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_horas_jogadas_plataforma1`
    FOREIGN KEY (`idplataforma`)
    REFERENCES `trabalhobd`.`plataforma` (`idplataforma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalhobd`.`lista_desejos`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `trabalhobd`.`lista_desejos` (
  `iddesejo` INT NOT NULL AUTO_INCREMENT,
  `idplataforma` INT NOT NULL,
  `nomejogo` VARCHAR(45) NOT NULL,
  `prioridade` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`iddesejo`, `idplataforma`),
  CONSTRAINT `fk_lista_desejos_plataforma1`
    FOREIGN KEY (`idplataforma`)
    REFERENCES `trabalhobd`.`plataforma` (`idplataforma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;