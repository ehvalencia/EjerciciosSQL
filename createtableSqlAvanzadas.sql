-- MySQL Script generated by MySQL Workbench
-- Tue Apr 25 19:46:16 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema SqlAvanzadas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `SqlAvanzadas`.`LIBRO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SqlAvanzadas`.`LIBRO` (
  `idLibro` INT NOT NULL,
  `Titulo` VARCHAR(45) NULL,
  `Editorial` VARCHAR(45) NULL,
  `Area` VARCHAR(45) NULL,
  PRIMARY KEY (`idLibro`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SqlAvanzadas`.`AUTOR`
-- -----------------------------------------------------
ALTER TABLE `SqlAvanzadas`.`AUTOR` ADD INDEX `IdAutor_idx` (`IdAutor` ASC);
CREATE TABLE IF NOT EXISTS `SqlAvanzadas`.`AUTOR` (
  `IdAutor` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Nacionalidad` VARCHAR(45) NULL),
   INDEX `idAutor_xx` (`IdAutor` ASC) VISIBLE
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SqlAvanzadas`.`LIBROAUTOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SqlAvanzadas`.`LIBROAUTOR` (
  `IdAutor` INT NOT NULL,
  `idLibro` INT NOT NULL,
  INDEX `idAutor_idx` (`IdAutor` ASC) VISIBLE,
  INDEX `idLibro_idx` (`idLibro` ASC) VISIBLE,
  CONSTRAINT `idAutor`
    FOREIGN KEY (`IdAutor`)
    REFERENCES `SqlAvanzadas`.`AUTOR` (`IdAutor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idLibro`
    FOREIGN KEY (`idLibro`)
    REFERENCES `SqlAvanzadas`.`LIBRO` (`idLibro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SqlAvanzadas`.`LECTOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SqlAvanzadas`.`LECTOR` (
  `idLector` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `Direccion` VARCHAR(45) NOT NULL,
  `Carrera` VARCHAR(45) NOT NULL,
  `Edad` VARCHAR(3) NOT NULL,
  `idEstudiante` INT NOT NULL,
  PRIMARY KEY (`idEstudiante`),
  INDEX `idLector` (`idLector` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SqlAvanzadas`.`PRESTAMO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SqlAvanzadas`.`PRESTAMO` (
  `idLector` INT NOT NULL,
  `idLibro` INT NOT NULL,
  `FechaPrestamo` DATE NOT NULL,
  `FechaDevolucion` DATE NOT NULL,
  `Devuelto` VARCHAR(45) NOT NULL,
  INDEX `idLector` (`idLector` ASC) VISIBLE,
  INDEX `idLibro` (`idLibro` ASC) VISIBLE,
  CONSTRAINT `idLibro`
    FOREIGN KEY (`idLibro`)
    REFERENCES `SqlAvanzadas`.`LIBRO` (`idLibro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idLector`
    FOREIGN KEY (`idLector`)
    REFERENCES `SqlAvanzadas`.`ESTUDIANTE` (`idLector`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
