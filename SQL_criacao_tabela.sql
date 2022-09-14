-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema banco
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema banco
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `banco` DEFAULT CHARACTER SET utf8 ;
USE `banco` ;

-- -----------------------------------------------------
-- Table `banco`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banco`.`produto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  `preco` DOUBLE NOT NULL,
  `estoque` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `banco`.`venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banco`.`venda` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cliente` VARCHAR(45) NOT NULL,
  `data_venda` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `banco`.`venda_item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banco`.`venda_item` (
  `id_venda` INT NOT NULL,
  `id_produto` INT NOT NULL,
  `preco_unitario` DOUBLE NOT NULL,
  `quantidade` INT NOT NULL,
  `total_item` DOUBLE NOT NULL,
  INDEX `id_venda_idx` (`id_venda` ASC) VISIBLE,
  INDEX `id_produto_idx` (`id_produto` ASC) VISIBLE,
  CONSTRAINT `id_venda`
    FOREIGN KEY (`id_venda`)
    REFERENCES `banco`.`venda` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_produto`
    FOREIGN KEY (`id_produto`)
    REFERENCES `banco`.`produto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `banco`.`venda_item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banco`.`venda_item` (
  `id_venda` INT NOT NULL,
  `id_produto` INT NOT NULL,
  `preco_unitario` DOUBLE NOT NULL,
  `quantidade` INT NOT NULL,
  `total_item` DOUBLE NOT NULL,
  INDEX `id_venda_idx` (`id_venda` ASC) VISIBLE,
  INDEX `id_produto_idx` (`id_produto` ASC) VISIBLE,
  CONSTRAINT `id_venda`
    FOREIGN KEY (`id_venda`)
    REFERENCES `banco`.`venda` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_produto`
    FOREIGN KEY (`id_produto`)
    REFERENCES `banco`.`produto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
