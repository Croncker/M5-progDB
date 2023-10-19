-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Gamers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Gamers` (
  `gamer_id` INT UNSIGNED NOT NULL,
  `username` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`gamer_id`),
  UNIQUE INDEX `gamer_id_UNIQUE` (`gamer_id` ASC) VISIBLE,
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Achievements`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Achievements` (
  `achievement_id` INT UNSIGNED NOT NULL,
  `achievement_name` VARCHAR(45) NOT NULL,
  `Gamers_gamer_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`achievement_id`, `Gamers_gamer_id`),
  UNIQUE INDEX `achievement_id_UNIQUE` (`achievement_id` ASC) VISIBLE,
  UNIQUE INDEX `achievement_name_UNIQUE` (`achievement_name` ASC) VISIBLE,
  INDEX `fk_Achievements_Gamers1_idx` (`Gamers_gamer_id` ASC) VISIBLE,
  CONSTRAINT `fk_Achievements_Gamers1`
    FOREIGN KEY (`Gamers_gamer_id`)
    REFERENCES `mydb`.`Gamers` (`gamer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Games`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Games` (
  `game_id` INT UNSIGNED NOT NULL,
  `game_name` VARCHAR(45) NOT NULL,
  `Achievements_achievement_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`game_id`, `Achievements_achievement_id`),
  UNIQUE INDEX `game_id_UNIQUE` (`game_id` ASC) VISIBLE,
  UNIQUE INDEX `game_name_UNIQUE` (`game_name` ASC) VISIBLE,
  INDEX `fk_Games_Achievements_idx` (`Achievements_achievement_id` ASC) VISIBLE,
  CONSTRAINT `fk_Games_Achievements`
    FOREIGN KEY (`Achievements_achievement_id`)
    REFERENCES `mydb`.`Achievements` (`achievement_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
