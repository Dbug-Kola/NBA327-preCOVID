-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema nationalbasketball
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema nationalbasketball
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `nationalbasketball` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `nationalbasketball` ;

-- -----------------------------------------------------
-- Table `nationalbasketball`.`Arenas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `nationalbasketball`.`Arenas` ;

CREATE TABLE IF NOT EXISTS `nationalbasketball`.`Arenas` (
  `id` INT NOT NULL,
  `nickname` VARCHAR(25) NULL DEFAULT NULL,
  `city` VARCHAR(25) NULL DEFAULT NULL,
  `state` VARCHAR(20) NULL DEFAULT NULL,
  `country` VARCHAR(3) NULL DEFAULT NULL,
  `Zip_Code` VARCHAR(8) NULL DEFAULT NULL,
  `capacity` INT NULL DEFAULT NULL,
  `sponsor` VARCHAR(35) NULL DEFAULT NULL,
  `Year_Opened` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
