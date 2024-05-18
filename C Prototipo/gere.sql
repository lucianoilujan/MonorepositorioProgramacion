-- MySQL Script generated by MySQL Workbench
-- Wed May 15 17:55:56 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
SHOW WARNINGS;
-- -----------------------------------------------------
-- Schema gerente
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `gerente` ;

-- -----------------------------------------------------
-- Schema gerente
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gerente` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
SHOW WARNINGS;
USE `gerente` ;

-- -----------------------------------------------------
-- Table `compra`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `compra` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `compra` (
  `id_Compra` INT NOT NULL,
  `fecha_compra` DATETIME(6) NULL DEFAULT NULL,
  `estado` VARCHAR(45) NULL DEFAULT NULL,
  `id_Proveedor` INT NULL DEFAULT NULL,
  `id_Usuario` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_Compra`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `detallecompra`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `detallecompra` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `detallecompra` (
  `id_DetalleCompra` INT NOT NULL,
  `id_Compra` INT NULL DEFAULT NULL,
  `id_Producto` INT NULL DEFAULT NULL,
  `cantidad` INT NULL DEFAULT NULL,
  `precio_compra` DECIMAL(45,0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_DetalleCompra`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `detalleventa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `detalleventa` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `detalleventa` (
  `id_DetalleVenta` INT NOT NULL,
  `id_Venta` INT NULL DEFAULT NULL,
  `id_Producto` INT NULL DEFAULT NULL,
  `cantidad` INT NULL DEFAULT NULL,
  `precio_venta` DECIMAL(45,0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_DetalleVenta`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `producto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `producto` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `producto` (
  `id_Producto` INT NOT NULL,
  `descripcion` VARCHAR(100) NULL DEFAULT NULL,
  `precio_costo` DECIMAL(45,0) NULL DEFAULT NULL,
  `precio_venta` DECIMAL(45,0) NULL DEFAULT NULL,
  `categoria` VARCHAR(45) NULL DEFAULT NULL,
  `id_Proveedor` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_Producto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `proveedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proveedor` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `proveedor` (
  `id_Proveedor` INT NOT NULL,
  `nombre` VARCHAR(100) NULL DEFAULT NULL,
  `direccion` VARCHAR(100) NULL DEFAULT NULL,
  `telefono` VARCHAR(45) NULL DEFAULT NULL,
  `correo_electronico` VARCHAR(45) NULL DEFAULT NULL,
  `cuit` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_Proveedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `usuario` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_Usuario` INT NOT NULL,
  `nombre` VARCHAR(100) NULL DEFAULT NULL,
  `apellido` VARCHAR(100) NULL DEFAULT NULL,
  `correo_electronico` VARCHAR(100) NULL DEFAULT NULL,
  `contrasena` VARCHAR(45) NULL DEFAULT NULL,
  `cargo` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_Usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `venta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `venta` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `venta` (
  `id_Venta` INT NOT NULL,
  `fecha_venta` DATETIME(6) NULL DEFAULT NULL,
  `estado` VARCHAR(45) NULL DEFAULT NULL,
  `id_Usuario` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_Venta`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;