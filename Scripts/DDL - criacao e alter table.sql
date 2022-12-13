-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema unikey
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema unikey
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `unikey` DEFAULT CHARACTER SET utf8 ;
USE `unikey` ;

-- -----------------------------------------------------
-- Table `unikey`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `unikey`.`usuario` (
  `email` VARCHAR(35) NOT NULL,
  `telefone` INT NOT NULL,
  `matricula` VARCHAR(35) NULL,
  `nome` VARCHAR(35) NOT NULL,
  `tipo_user` VARCHAR(35) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE INDEX `telefone_UNIQUE` (`telefone` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `unikey`.`armario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `unikey`.`armario` (
  `id_armario` INT NOT NULL AUTO_INCREMENT,
  `num_armario` VARCHAR(45) NOT NULL,
  `status` CHAR(2) NOT NULL,
  PRIMARY KEY (`id_armario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `unikey`.`funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `unikey`.`funcionario` (
  `email` VARCHAR(35) NOT NULL,
  `senha` VARCHAR(35) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `unikey`.`alugar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `unikey`.`alugar` (
  `inicio_aluguel` DATETIME(4) NOT NULL,
  `fim_aluguel` DATETIME(4) NULL,
  `usuario_email` VARCHAR(35) NOT NULL,
  `armario_id_armario` INT NOT NULL,
  `funcionario_email` VARCHAR(35) NOT NULL,
  PRIMARY KEY (`usuario_email`, `armario_id_armario`),
  INDEX `fk_alugar_usuario_idx` (`usuario_email` ASC) VISIBLE,
  INDEX `fk_alugar_armario1_idx` (`armario_id_armario` ASC) VISIBLE,
  INDEX `fk_alugar_funcionario1_idx` (`funcionario_email` ASC) VISIBLE,
  CONSTRAINT `fk_alugar_usuario`
    FOREIGN KEY (`usuario_email`)
    REFERENCES `unikey`.`usuario` (`email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_alugar_armario1`
    FOREIGN KEY (`armario_id_armario`)
    REFERENCES `unikey`.`armario` (`id_armario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_alugar_funcionario1`
    FOREIGN KEY (`funcionario_email`)
    REFERENCES `unikey`.`funcionario` (`email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


DROP DATABASE unikey;

-- alter table

ALTER TABLE alugar MODIFY inicio_aluguel datetime(3);

ALTER TABLE alugar MODIFY fim_aluguel datetime(3);

ALTER TABLE usuario CHANGE COLUMN tipo_user tipo_usuario varchar(35);

ALTER TABLE usuario MODIFY tipo_usuario varchar(30);

ALTER TABLE usuario MODIFY nome varchar(40);

