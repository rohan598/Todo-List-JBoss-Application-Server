use project;
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema hclproject
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema hclproject
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `project` DEFAULT CHARACTER SET latin1 ;
USE `project` ;

-- -----------------------------------------------------
-- Table `project`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project`.`user` ;

CREATE TABLE IF NOT EXISTS `project`.`user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `occupation` VARCHAR(255) NULL DEFAULT NULL,
  `photo` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `project`.`todo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project`.`todo` ;

CREATE TABLE IF NOT EXISTS `project`.`todo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tuid` INT NOT NULL,
  `description` VARCHAR(150) NOT NULL,
  `active` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `psid_idx` (`tuid` ASC),
  CONSTRAINT `tuid`
    FOREIGN KEY (`tuid`)
    REFERENCES `project`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
