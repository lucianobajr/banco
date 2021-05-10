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
  `rating` DECIMAL NOT NULL,
  PRIMARY KEY (`movie_id`),
  UNIQUE INDEX `movie_id_UNIQUE` (`movie_id` ASC) VISIBLE);


-- -----------------------------------------------------
-- Table `portifolio`.`movie_genre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portifolio`.`movie_genre` (
  `movie_genre_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`movie_genre_id`),
  UNIQUE INDEX `movie_genre_id_UNIQUE` (`movie_genre_id` ASC) VISIBLE)
;


-- -----------------------------------------------------
-- Table `portifolio`.`movie_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portifolio`.`movie_info` (
  `movie_id` INT UNSIGNED NOT NULL,
  `movie_genre_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`movie_id`, `movie_genre_id`),
  FOREIGN KEY (`movie_id`) 
  REFERENCES `portifolio`.`movie` (`movie_id`),
  FOREIGN KEY (`movie_genre_id`)
  REFERENCES `portifolio`.`movie_genre` (`movie_genre_id`))
;


-- -----------------------------------------------------
-- Table `portifolio`.`person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portifolio`.`person` (
  `person_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `person_name` VARCHAR(45) NOT NULL,
  `gender` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE INDEX `person_id_UNIQUE` (`person_id` ASC) VISIBLE)
;


-- -----------------------------------------------------
-- Table `portifolio`.`role_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portifolio`.`role_type` (
  `role_type_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_name` VARCHAR(45) NULL,
  PRIMARY KEY (`role_type_id`),
  UNIQUE INDEX `role_type_id_UNIQUE` (`role_type_id` ASC) VISIBLE)
;


-- -----------------------------------------------------
-- Table `portifolio`.`role`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `portifolio`.`role` (
  `person_id` INT UNSIGNED NOT NULL,
  `movie_id` INT UNSIGNED NOT NULL,
  `role_type_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`person_id`, `movie_id`, `role_type_id`),
    FOREIGN KEY (`person_id`)
    REFERENCES `portifolio`.`person` (`person_id`),
    FOREIGN KEY (`movie_id`)
    REFERENCES `portifolio`.`movie` (`movie_id`),
    FOREIGN KEY (`role_type_id`)
    REFERENCES `portifolio`.`role_type` (`role_type_id`))
;
