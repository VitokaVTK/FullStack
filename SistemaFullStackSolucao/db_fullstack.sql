-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema fullstackdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema fullstackdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fullstackdb` DEFAULT CHARACTER SET utf8mb4 ;
USE `fullstackdb` ;

-- -----------------------------------------------------
-- Table `fullstackdb`.`movimentacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fullstackdb`.`movimentacoes` (
  `id_movimentacao` INT(11) NOT NULL AUTO_INCREMENT,
  `data` VARCHAR(45) NOT NULL,
  `tipo` ENUM('entrada', 'saida') NOT NULL,
  `qtd` INT(11) NOT NULL,
  PRIMARY KEY (`id_movimentacao`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `fullstackdb`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fullstackdb`.`produtos` (
  `id_produto` INT NOT NULL,
  `nome` VARCHAR(100) NOT NULL,
  `preco` DECIMAL(10,2) NOT NULL,
  `estoque` INT NOT NULL,
  `produto` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_produto`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
