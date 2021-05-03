-- MySQL Script generated by MySQL Workbench
-- seg 03 mai 2021 16:26:42
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema portifolio
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema portifolio
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `portifolio` ;
USE `portifolio` ;

-- -----------------------------------------------------
-- Table `portifolio`.`movie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portifolio`.`movie` (
  `movie_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `movie_name` VARCHAR(45) NOT NULL,
  `production_year` INT UNSIGNED NOT NULL,
  `votes` INT UNSIGNED NOT NULL,
  `ranking` INT UNSIGNED NOT NULL,
  `rating` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`movie_id`),
  UNIQUE INDEX `movie_id_UNIQUE` (`movie_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portifolio`.`movie_genre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portifolio`.`movie_genre` (
  `movie_genre_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`movie_genre_id`),
  UNIQUE INDEX `movie_genre_id_UNIQUE` (`movie_genre_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portifolio`.`movie_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portifolio`.`movie_info` (
  `movie_id` INT UNSIGNED NOT NULL,
  `movie_genre_id` INT UNSIGNED NOT NULL,
  `note` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`movie_id`, `movie_genre_id`),
  INDEX `fk_movie_info_movie_genre1_idx` (`movie_genre_id` ASC) VISIBLE,
  CONSTRAINT `fk_movie_info_movie`
    FOREIGN KEY (`movie_id`)
    REFERENCES `portifolio`.`movie` (`movie_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movie_info_movie_genre1`
    FOREIGN KEY (`movie_genre_id`)
    REFERENCES `portifolio`.`movie_genre` (`movie_genre_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portifolio`.`person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portifolio`.`person` (
  `person_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `person_name` VARCHAR(45) NOT NULL,
  `gender` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE INDEX `person_id_UNIQUE` (`person_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portifolio`.`role_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portifolio`.`role_type` (
  `role_type_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_name` VARCHAR(45) NULL,
  PRIMARY KEY (`role_type_id`),
  UNIQUE INDEX `role_type_id_UNIQUE` (`role_type_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portifolio`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portifolio`.`role` (
  `person_id` INT UNSIGNED NOT NULL,
  `movie_id` INT UNSIGNED NOT NULL,
  `role_name` INT NOT NULL,
  `role_type_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`person_id`, `movie_id`, `role_name`, `role_type_id`),
  UNIQUE INDEX `role_name_UNIQUE` (`role_name` ASC) VISIBLE,
  INDEX `fk_role_person1_idx` (`person_id` ASC) VISIBLE,
  INDEX `fk_role_movie1_idx` (`movie_id` ASC) VISIBLE,
  INDEX `fk_role_role_type1_idx` (`role_type_id` ASC) VISIBLE,
  CONSTRAINT `fk_role_person1`
    FOREIGN KEY (`person_id`)
    REFERENCES `portifolio`.`person` (`person_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_role_movie1`
    FOREIGN KEY (`movie_id`)
    REFERENCES `portifolio`.`movie` (`movie_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_role_role_type1`
    FOREIGN KEY (`role_type_id`)
    REFERENCES `portifolio`.`role_type` (`role_type_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;