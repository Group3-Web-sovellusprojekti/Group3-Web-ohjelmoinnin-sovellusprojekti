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

-- Table `ilmastoteht`.`co2emissbycountry`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`co2emissbycountry` (
        `year` INT(11) NOT NULL,
        `AFGHANISTAN` INT(11) NULL DEFAULT NULL,
        `ALBANIA` INT(11) NULL DEFAULT NULL,
        `ALGERIA` INT(11) NULL DEFAULT NULL,
        `ANDORRA` INT(11) NULL DEFAULT NULL,
        `ANGOLA` INT(11) NULL DEFAULT NULL,
        `ANGUILLA` INT(11) NULL DEFAULT NULL,
        `ANTIGUA&BARBUDA` INT(11) NULL DEFAULT NULL,
        `ARGENTINA` INT(11) NULL DEFAULT NULL,
        `ARMENIA` INT(11) NULL DEFAULT NULL,
        `ARUBA` INT(11) NULL DEFAULT NULL,
        `AUSTRALIA` INT(11) NULL DEFAULT NULL,
        `AUSTRIA` INT(11) NULL DEFAULT NULL,
        `AZERBAIJAN` INT(11) NULL DEFAULT NULL,
        `BAHAMAS` INT(11) NULL DEFAULT NULL,
        `BAHRAIN` INT(11) NULL DEFAULT NULL,
        `BANGLADESH` INT(11) NULL DEFAULT NULL,
        `BARBADOS` INT(11) NULL DEFAULT NULL,
        `BELARUS` INT(11) NULL DEFAULT NULL,
        `BELGIUM` INT(11) NULL DEFAULT NULL,
        `BELIZEl` INT(11) NULL DEFAULT NULL,
        `BENIN` INT(11) NULL DEFAULT NULL,
        `BERMUDA` INT(11) NULL DEFAULT NULL,
        `BHUTAN` INT(11) NULL DEFAULT NULL,
        `BONAIRE,SAINT_EUSTATIUS,SABA` INT(11) NULL DEFAULT NULL,
        `BOSNIA&HERZEGOVINA` INT(11) NULL DEFAULT NULL,
        `BOTSWANA` INT(11) NULL DEFAULT NULL,
        `BRAZIL` INT(11) NULL DEFAULT NULL,
        `BRITISH_VIRGIN_ISLANDS` INT(11) NULL DEFAULT NULL,
        `BRUNEI` INT(11) NULL DEFAULT NULL,
        `BULGARIA` INT(11) NULL DEFAULT NULL,
        `BURKINA_FASO` INT(11) NULL DEFAULT NULL,
        `BURUNDI` INT(11) NULL DEFAULT NULL,
        `CAMBODIA` INT(11) NULL DEFAULT NULL,
        `CANADA` INT(11) NULL DEFAULT NULL,
        `CAPE_VERDE` INT(11) NULL DEFAULT NULL,
        `CENTRAL_AFRICAN_REPUBLIC` INT(11) NULL DEFAULT NULL,
        `CHAD` INT(11) NULL DEFAULT NULL,
        `CHILE` INT(11) NULL DEFAULT NULL,
        `CHINA_MAINLAND` INT(11) NULL DEFAULT NULL,
        `COLOMBIA` INT(11) NULL DEFAULT NULL,
        `COMOROS` INT(11) NULL DEFAULT NULL,
        `CONGO` INT(11) NULL DEFAULT NULL,
        `COOK_ISLANDS` INT(11) NULL DEFAULT NULL,
        `COSTA_RICA` INT(11) NULL DEFAULT NULL,
        `COTE_D_IVOIRE` INT(11) NULL DEFAULT NULL,
        `CROATIA` INT(11) NULL DEFAULT NULL,
        `CUBA` INT(11) NULL DEFAULT NULL,
        `CURACAO` INT(11) NULL DEFAULT NULL,
        `CYPRUS` INT(11) NULL DEFAULT NULL,
        `CZECHIA` INT(11) NULL DEFAULT NULL,
        `DEMOCRATIC_PEOPLE_S_REPUBLIC_OF_KOREA` INT(11) NULL DEFAULT NULL,
        `DEMOCRATIC_REPUBLIC_OF_THE_CONGO` INT(11) NULL DEFAULT NULL,
        `DENMARK` INT(11) NULL DEFAULT NULL,
        `DJIBOUTI` INT(11) NULL DEFAULT NULL,
        `DOMINICA` INT(11) NULL DEFAULT NULL,
        `DOMINICAN REPUBLIC` INT(11) NULL DEFAULT NULL,
        `ECUADOR` INT(11) NULL DEFAULT NULL,
        `EGYPT` INT(11) NULL DEFAULT NULL,
        `EL_SALVADOR` INT(11) NULL DEFAULT NULL,
        `EQUATORIAL_GUINEA` INT(11) NULL DEFAULT NULL,
        `ERITREA` INT(11) NULL DEFAULT NULL,
        `ESTONIA` INT(11) NULL DEFAULT NULL,
        `ETHIOPIA` INT(11) NULL DEFAULT NULL,
        `FAEROE_ISLANDS` INT(11) NULL DEFAULT NULL,
        `FEDERATED_STATES_OF_MICRONESIA` INT(11) NULL DEFAULT NULL,
        `FIJI` INT(11) NULL DEFAULT NULL,
        `FINLAND` INT(11) NULL DEFAULT NULL,
        `FRANCE` INT(11) NULL DEFAULT NULL,
        `FRENCH_GUIANA` INT(11) NULL DEFAULT NULL,
        `FRENCH_POLYNESIA` INT(11) NULL DEFAULT NULL,
        `GABON` INT(11) NULL DEFAULT NULL,
        `GAMBIA` INT(11) NULL DEFAULT NULL,
        `GEORGIA` INT(11) NULL DEFAULT NULL,
        `GERMANY` INT(11) NULL DEFAULT NULL,
        `GHANA` INT(11) NULL DEFAULT NULL,
        `GREECE` INT(11) NULL DEFAULT NULL,
        `GREENLAND` INT(11) NULL DEFAULT NULL,
        `GRENADA` INT(11) NULL DEFAULT NULL,
        `GUADELOUPE` INT(11) NULL DEFAULT NULL,
        `GUATEMALA` INT(11) NULL DEFAULT NULL,
        `GUINEA` INT(11) NULL DEFAULT NULL,
        `GUINEA_BISSAU` INT(11) NULL DEFAULT NULL,
        `GUYANA` INT(11) NULL DEFAULT NULL,
        `HAITI` INT(11) NULL DEFAULT NULL,
        `HONDURAS` INT(11) NULL DEFAULT NULL,
        `HONG_KONG` INT(11) NULL DEFAULT NULL,
        `HUNGARY` INT(11) NULL DEFAULT NULL,
        `ICELAND` INT(11) NULL DEFAULT NULL,
        `INDIA` INT(11) NULL DEFAULT NULL,
        `INDONESIA` INT(11) NULL DEFAULT NULL,
        `IRAQ` INT(11) NULL DEFAULT NULL,
        `IRELAND` INT(11) NULL DEFAULT NULL,
        `IRAN` INT(11) NULL DEFAULT NULL,
        `ISRAEL` INT(11) NULL DEFAULT NULL,
        `ITALY` INT(11) NULL DEFAULT NULL,
        `JAMAICA` INT(11) NULL DEFAULT NULL,
        `JAPAN` INT(11) NULL DEFAULT NULL,
        `JORDAN` INT(11) NULL DEFAULT NULL,
        `KAZAKHSTAN` INT(11) NULL DEFAULT NULL,
        `KENYA` INT(11) NULL DEFAULT NULL,
        `KIRIBATI` INT(11) NULL DEFAULT NULL,
        `KOSOVO` INT(11) NULL DEFAULT NULL,
        `KUWAIT` INT(11) NULL DEFAULT NULL,
        `KYRGYZSTAN` INT(11) NULL DEFAULT NULL,
        `LAO` INT(11) NULL DEFAULT NULL,
        `LATVIA` INT(11) NULL DEFAULT NULL,
        `LEBANON` INT(11) NULL DEFAULT NULL,
        `LESOTHO` INT(11) NULL DEFAULT NULL,
        `LIBERIA` INT(11) NULL DEFAULT NULL,
        `LIBYAN_ARAB_JAMAHIRIYAH` INT(11) NULL DEFAULT NULL,
        `LIECHTENSTEIN` INT(11) NULL DEFAULT NULL,
        `LITHUANIAl` INT(11) NULL DEFAULT NULL,
        `LUXEMBOURG` INT(11) NULL DEFAULT NULL,
        `MACAU` INT(11) NULL DEFAULT NULL,
        `MACEDONIA` INT(11) NULL DEFAULT NULL,
        `MADAGASCAR` INT(11) NULL DEFAULT NULL,
        `MALAWI` INT(11) NULL DEFAULT NULL,
        `MALAYSIA` INT(11) NULL DEFAULT NULL,
        `MALDIVES` INT(11) NULL DEFAULT NULL,
        `MALI` INT(11) NULL DEFAULT NULL,
        `MALTA` INT(11) NULL DEFAULT NULL,
        `MARSHALL_ISLANDS` INT(11) NULL DEFAULT NULL,
        `MARTINIQUE` INT(11) NULL DEFAULT NULL,
        `MAURITANIA` INT(11) NULL DEFAULT NULL,
        `MAURITIUS` INT(11) NULL DEFAULT NULL,
        `MAYOTTE` INT(11) NULL DEFAULT NULL,
        `MEXICO` INT(11) NULL DEFAULT NULL,
        `MONGOLIA` INT(11) NULL DEFAULT NULL,
        `MONTENEGRO` INT(11) NULL DEFAULT NULL,
        `MONTSERRAT` INT(11) NULL DEFAULT NULL,
        `MOROCCO` INT(11) NULL DEFAULT NULL,
        `MOZAMBIQUE` INT(11) NULL DEFAULT NULL,
        `MYANMAR` INT(11) NULL DEFAULT NULL,
        `NAMIBIA` INT(11) NULL DEFAULT NULL,
        `NAURU` INT(11) NULL DEFAULT NULL,
        `NEPAL` INT(11) NULL DEFAULT NULL,
        `NETHERLANDS` INT(11) NULL DEFAULT NULL,
        `NEW_CALEDONIA` INT(11) NULL DEFAULT NULL,
        `NEW_ZEALAND` INT(11) NULL DEFAULT NULL,
        `NICARAGUA` INT(11) NULL DEFAULT NULL,
        `NIGER` INT(11) NULL DEFAULT NULL,
        `NIGERIA` INT(11) NULL DEFAULT NULL,
        `NIUE` INT(11) NULL DEFAULT NULL,
        `NORWAY` INT(11) NULL DEFAULT NULL,
        `OCCUPIED_PALESTINIAN_TERRITORY` INT(11) NULL DEFAULT NULL,
        `OMAN` INT(11) NULL DEFAULT NULL,
        `PAKISTAN` INT(11) NULL DEFAULT NULL,
        `PALAU` INT(11) NULL DEFAULT NULL,
        `PANAMA` INT(11) NULL DEFAULT NULL,
        `Co2EmissByCountrycol` VARCHAR(45) NULL DEFAULT NULL,
        `PAPUA_NEW_GUINEA` INT(11) NULL DEFAULT NULL,
        `PARAGUAY` INT(11) NULL DEFAULT NULL,
        `PERU` INT(11) NULL DEFAULT NULL,
        `PHILIPPINES` INT(11) NULL DEFAULT NULL,
        `PLURINATIONAL_STATE_OF_BOLIVIA` INT(11) NULL DEFAULT NULL,
        `POLAND` INT(11) NULL DEFAULT NULL,
        `PORTUGAL` INT(11) NULL DEFAULT NULL,
        `QATAR` INT(11) NULL DEFAULT NULL,
        `CAMEROON` INT(11) NULL DEFAULT NULL,
        `SHOUT KOREA` INT(11) NULL DEFAULT NULL,
        `SHOUT SUDAN` INT(11) NULL DEFAULT NULL,
        `SUDAN` INT(11) NULL DEFAULT NULL,
        `REUNION` INT(11) NULL DEFAULT NULL,
        `ROMANIA` INT(11) NULL DEFAULT NULL,
        `RUSSIAN_FEDERATION` INT(11) NULL DEFAULT NULL,
        `RWANDA` INT(11) NULL DEFAULT NULL,
        `SAINT_HELENA` INT(11) NULL DEFAULT NULL,
        `SAINT_LUCIA` INT(11) NULL DEFAULT NULL,
        `SAINT_MARTIN(DUTCH_PORTION)` INT(11) NULL DEFAULT NULL,
        `SAMOA` INT(11) NULL DEFAULT NULL,
        `SAO_TOME&PRINCIPE` INT(11) NULL DEFAULT NULL,
        `SAUDI_ARABIA` INT(11) NULL DEFAULT NULL,
        `SENEGAL` INT(11) NULL DEFAULT NULL,
        `SERBIA` INT(11) NULL DEFAULT NULL,
        `SEYCHELLES` INT(11) NULL DEFAULT NULL,
        `SIERRA_LEONE` INT(11) NULL DEFAULT NULL,
        `SINGAPORE` INT(11) NULL DEFAULT NULL,
        `SLOVAKIA` INT(11) NULL DEFAULT NULL,
        `SLOVENIA` INT(11) NULL DEFAULT NULL,
        `SOLOMON_ISLANDS` INT(11) NULL DEFAULT NULL,
        `SOMALIA` INT(11) NULL DEFAULT NULL,
        `SOUTH_AFRICA` INT(11) NULL DEFAULT NULL,
        `SPAIN` INT(11) NULL DEFAULT NULL,
        `SRI_LANKA` INT(11) NULL DEFAULT NULL,
        `ST.KITTS-NEVIS` INT(11) NULL DEFAULT NULL,
        `ST.PIERRE&MIQUELON` INT(11) NULL DEFAULT NULL,
        `ST.VINCENT&THE_GRENADINES` INT(11) NULL DEFAULT NULL,
        `SURINAME` INT(11) NULL DEFAULT NULL,
        `SWAZILAND` INT(11) NULL DEFAULT NULL,
        `SWEDEN` INT(11) NULL DEFAULT NULL,
        `SWITZERLAND` INT(11) NULL DEFAULT NULL,
        `SYRIAN_ARAB_REPUBLIC` INT(11) NULL DEFAULT NULL,
        `TAIWAN` INT(11) NULL DEFAULT NULL,
        `TAJIKISTAN` INT(11) NULL DEFAULT NULL,
        `THAILAND` INT(11) NULL DEFAULT NULL,
        `TIMOR-LESTE` INT(11) NULL DEFAULT NULL,
        `TOGO` INT(11) NULL DEFAULT NULL,
        `TONGA` INT(11) NULL DEFAULT NULL,
        `TRINIDAD_AND_TOBAGO` INT(11) NULL DEFAULT NULL,
        `TUNISIA` INT(11) NULL DEFAULT NULL,
        `TURKEY` INT(11) NULL DEFAULT NULL,
        `TURKMENISTAN` INT(11) NULL DEFAULT NULL,
        `TURKS_AND_CAICOS_ISLANDS` INT(11) NULL DEFAULT NULL,
        `TUVALU` INT(11) NULL DEFAULT NULL,
        `UGANDA` INT(11) NULL DEFAULT NULL,
        `Co2EmissByCountrycol1` VARCHAR(45) NULL DEFAULT NULL,
        `UKRAINE` INT(11) NULL DEFAULT NULL,
        `UNITED_ARAB_EMIRATES` INT(11) NULL DEFAULT NULL,
        `UNITED_KINGDOM` INT(11) NULL DEFAULT NULL,
        `UNITED_REPUBLIC_OF_TANZANIA` INT(11) NULL DEFAULT NULL,
        `U.S.A` INT(11) NULL DEFAULT NULL,
        `URUGUAY` INT(11) NULL DEFAULT NULL,
        `UZBEKISTAN` INT(11) NULL DEFAULT NULL,
        `VANUATU` INT(11) NULL DEFAULT NULL,
        `VENEZUELA` INT(11) NULL DEFAULT NULL,
        `VIETNAM` INT(11) NULL DEFAULT NULL,
        `WALLIS_AND_FUTUNA_ISLANDS` INT(11) NULL DEFAULT NULL,
        `YEMEN` INT(11) NULL DEFAULT NULL,
        `ZAMBIA` INT(11) NULL DEFAULT NULL,
        `ZIMBABWE` INT(11) NULL DEFAULT NULL,
        `KP_Annex_B` INT(11) NULL DEFAULT NULL,
        `Non_KP_Annex _B` INT(11) NULL DEFAULT NULL,
        `OECD` INT(11) NULL DEFAULT NULL,
        `Non-OECD` INT(11) NULL DEFAULT NULL,
        `EU27` INT(11) NULL DEFAULT NULL,
        `Africa` INT(11) NULL DEFAULT NULL,
        `Asia` INT(11) NULL DEFAULT NULL,
        `Central_America` INT(11) NULL DEFAULT NULL,
        `Europe` INT(11) NULL DEFAULT NULL,
        `Middle_East` INT(11) NULL DEFAULT NULL,
        `North_America` INT(11) NULL DEFAULT NULL,
        `Oceania` INT(11) NULL DEFAULT NULL,
        `South_America` INT(11) NULL DEFAULT NULL,
        `Bunkers` INT(11) NULL DEFAULT NULL,
        `Statistical_Difference` INT(11) NULL DEFAULT NULL,
        `World` INT(11) NULL DEFAULT NULL,
        PRIMARY KEY (`year`)
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

-- Table `ilmastoteht`.`user`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `ilmastoteht`.`user` (
        `idUser` INT(11) NOT NULL AUTO_INCREMENT,
        `user` VARCHAR(45) NULL DEFAULT NULL,
        `password` VARCHAR(255) NULL DEFAULT NULL,
        `status` INT NOT NULL,
        PRIMARY KEY (`idUser`)
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

SET SQL_MODE=@OLD_SQL_MODE;

SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;