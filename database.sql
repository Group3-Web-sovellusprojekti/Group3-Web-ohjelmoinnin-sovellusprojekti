-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;

SET
    @OLD_FOREIGN_KEY_CHECKS = @ @FOREIGN_KEY_CHECKS,
    FOREIGN_KEY_CHECKS = 0;

SET
    @OLD_SQL_MODE = @ @SQL_MODE,
    SQL_MODE = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------

-- Schema mydb

-- -----------------------------------------------------

-- -----------------------------------------------------

-- Schema ilmastoteht

-- -----------------------------------------------------

-- -----------------------------------------------------

-- Schema ilmastoteht

-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS `ilmastoteht` DEFAULT CHARACTER SET utf8;

USE `ilmastoteht` ;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`annglobal`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`annglobal` (
        `timeA` INT(11) NOT NULL,
        `global` DOUBLE NULL DEFAULT NULL,
        PRIMARY KEY (`timeA`)
    ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`annnorth`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`annnorth` (
        `timeA` INT(11) NOT NULL,
        `north` DOUBLE NULL DEFAULT NULL,
        PRIMARY KEY (`timeA`)
    ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`annsouth`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`annsouth` (
        `timeA` INT(11) NOT NULL,
        `south` DOUBLE NULL DEFAULT NULL,
        PRIMARY KEY (`timeA`)
    ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`antarticice`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`antarticice` (
        `airAge` INT(11) NOT NULL,
        `co2_pmm` DOUBLE NULL DEFAULT NULL,
        PRIMARY KEY (`airAge`)
    ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`coemisscountry`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`coemisscountry` (
        `countryID` INT(11) NOT NULL,
        `code` VARCHAR(45) NULL DEFAULT NULL,
        `country` VARCHAR(45) NULL DEFAULT NULL,
        PRIMARY KEY (`countryID`)
    ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`coemissmtc`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`coemissmtc` (
        `year` INT(11) NOT NULL,
        `country` VARCHAR(45) NULL DEFAULT NULL,
        `mtc` DOUBLE NULL DEFAULT NULL,
        PRIMARY KEY (`year`)
    ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`emisssector`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`emisssector` (
        `sector` VARCHAR(45) NOT NULL,
        `share` DOUBLE NULL DEFAULT NULL,
        PRIMARY KEY (`sector`)
    ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`evolutionco`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`evolutionco` (
        `time` INT(11) NOT NULL,
        `co2_pmm` DOUBLE NULL DEFAULT NULL,
        PRIMARY KEY (`time`)
    ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`evolutiontemp`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`evolutiontemp` (
        `time` INT(11) NOT NULL,
        `temp` DOUBLE NULL DEFAULT NULL,
        PRIMARY KEY (`time`)
    ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`humanevo`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`humanevo` (
        `yearsAgo` DOUBLE NOT NULL,
        `event` VARCHAR(255) NULL DEFAULT NULL,
        PRIMARY KEY (`yearsAgo`)
    ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`lawdome1`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`lawdome1` (
        `airAge` INT(11) NOT NULL,
        `mixRat` DOUBLE NULL DEFAULT NULL,
        PRIMARY KEY (`airAge`)
    ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`lawdome2`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`lawdome2` (
        `airAge` INT(11) NOT NULL,
        `mixRat` DOUBLE NULL DEFAULT NULL,
        PRIMARY KEY (`airAge`)
    ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`lawdome3`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`lawdome3` (
        `airAge` INT(11) NOT NULL,
        `mixRat` DOUBLE NULL DEFAULT NULL,
        PRIMARY KEY (`airAge`)
    ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`maunaloa`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`maunaloa` (
        `YearC` INT(11) NOT NULL,
        `mean` DOUBLE NULL DEFAULT NULL,
        PRIMARY KEY (`YearC`)
    ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`monglobal`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`monglobal` (
        `timeB` INT(11) NOT NULL,
        `global` DOUBLE NULL DEFAULT NULL,
        PRIMARY KEY (`timeB`)
    ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`monnorth`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`monnorth` (
        `timeB` INT(11) NOT NULL,
        `north` DOUBLE NULL DEFAULT NULL,
        PRIMARY KEY (`timeB`)
    ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`monsouth`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`monsouth` (
        `timeB` INT(11) NOT NULL,
        `south` DOUBLE NULL DEFAULT NULL,
        PRIMARY KEY (`timeB`)
    ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`norhernreconstruction`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`norhernreconstruction` (
        `timeA` INT(11) NOT NULL,
        `norhernReconst` DOUBLE NULL DEFAULT NULL,
        PRIMARY KEY (`timeA`)
    ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`vostok`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`vostok` (
        `airAge` INT(11) NOT NULL,
        `coConse` DOUBLE NULL DEFAULT NULL,
        PRIMARY KEY (`airAge`)
    ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------

-- Table `ilmastoteht`.`User`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`User` (
        `idUser` INT NOT NULL AUTO_INCREMENT,
        `user` VARCHAR(45) NULL,
        `password` VARCHAR(255) NULL,
        PRIMARY KEY (`idUser`)
    ) ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;

SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;