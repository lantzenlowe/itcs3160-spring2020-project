-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema delivery
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `delivery` ;

-- -----------------------------------------------------
-- Schema delivery
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `delivery` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema sakila
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `sakila` ;

-- -----------------------------------------------------
-- Schema sakila
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sakila` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `delivery` ;

-- -----------------------------------------------------
-- Table `delivery`.`Driver`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `delivery`.`Driver` ;

CREATE TABLE IF NOT EXISTS `delivery`.`Driver` (
  `idDriver` INT NOT NULL,
  `idOrder` INT NULL,
  `location` VARCHAR(45) NULL,
  `phoneNumber` INT NULL,
  PRIMARY KEY (`idDriver`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `delivery`.`Transaction`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `delivery`.`Transaction` ;

CREATE TABLE IF NOT EXISTS `delivery`.`Transaction` (
  `idTransaction` INT NOT NULL,
  `amount` DOUBLE NOT NULL,
  `Driver_idDriver` INT NOT NULL,
  `Transaction_type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTransaction`, `Driver_idDriver`),
  INDEX `fk_Transaction_Driver1_idx` (`Driver_idDriver` ASC) VISIBLE,
  CONSTRAINT `fk_Transaction_Driver1`
    FOREIGN KEY (`Driver_idDriver`)
    REFERENCES `delivery`.`Driver` (`idDriver`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `delivery`.`Order`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `delivery`.`Order` ;

CREATE TABLE IF NOT EXISTS `delivery`.`Order` (
  `idOrder` INT NOT NULL,
  `date` DATE NULL,
  `time` DATETIME NULL,
  `idRestaurant` INT NULL,
  `Transaction_idTransaction` INT NOT NULL,
  `idCustomer` INT NULL,
  PRIMARY KEY (`idOrder`, `Transaction_idTransaction`),
  INDEX `fk_Order_Transaction1_idx` (`Transaction_idTransaction` ASC) VISIBLE,
  CONSTRAINT `fk_Order_Transaction1`
    FOREIGN KEY (`Transaction_idTransaction`)
    REFERENCES `delivery`.`Transaction` (`idTransaction`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `delivery`.`Restaurant`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `delivery`.`Restaurant` ;

CREATE TABLE IF NOT EXISTS `delivery`.`Restaurant` (
  `idRestaurant` INT NOT NULL,
  `idOrder` INT NOT NULL,
  `location` VARCHAR(45) NOT NULL,
  `Order_idOrder` INT NOT NULL,
  `Order_Transaction_idTransaction` INT NOT NULL,
  `idStudent` INT NOT NULL,
  PRIMARY KEY (`idRestaurant`),
  INDEX `fk_Restaurant_Order1_idx` (`Order_idOrder` ASC, `Order_Transaction_idTransaction` ASC) VISIBLE,
  CONSTRAINT `fk_Restaurant_Order1`
    FOREIGN KEY (`Order_idOrder` , `Order_Transaction_idTransaction`)
    REFERENCES `delivery`.`Order` (`idOrder` , `Transaction_idTransaction`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `delivery`.`Staff`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `delivery`.`Staff` ;

CREATE TABLE IF NOT EXISTS `delivery`.`Staff` (
  `idStaff` INT NOT NULL,
  `Restaurant_idRestaurant` INT NOT NULL,
  `academic_department` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idStaff`),
  INDEX `fk_Staff_Restaurant1_idx` (`Restaurant_idRestaurant` ASC) VISIBLE,
  CONSTRAINT `fk_Staff_Restaurant1`
    FOREIGN KEY (`Restaurant_idRestaurant`)
    REFERENCES `delivery`.`Restaurant` (`idRestaurant`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `delivery`.`Students`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `delivery`.`Students` ;

CREATE TABLE IF NOT EXISTS `delivery`.`Students` (
  `idStudent` INT NOT NULL,
  `firstName` VARCHAR(45) NOT NULL,
  `lastName` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `phoneNumber` INT NULL,
  `Restaurant_idRestaurant` INT NOT NULL,
  `Staff_idStaff` INT NOT NULL,
  PRIMARY KEY (`idStudent`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `phoneNumber_UNIQUE` (`phoneNumber` ASC) VISIBLE,
  INDEX `fk_Students_Restaurant1_idx` (`Restaurant_idRestaurant` ASC) VISIBLE,
  INDEX `fk_Students_Staff1_idx` (`Staff_idStaff` ASC) VISIBLE,
  CONSTRAINT `fk_Students_Restaurant1`
    FOREIGN KEY (`Restaurant_idRestaurant`)
    REFERENCES `delivery`.`Restaurant` (`idRestaurant`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Students_Staff1`
    FOREIGN KEY (`Staff_idStaff`)
    REFERENCES `delivery`.`Staff` (`idStaff`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `sakila` ;

-- -----------------------------------------------------
-- Table `sakila`.`actor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sakila`.`actor` ;

CREATE TABLE IF NOT EXISTS `sakila`.`actor` (
  `actor_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`actor_id`),
  INDEX `idx_actor_last_name` (`last_name` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 201
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sakila`.`country`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sakila`.`country` ;

CREATE TABLE IF NOT EXISTS `sakila`.`country` (
  `country_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `country` VARCHAR(50) NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`country_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 110
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sakila`.`city`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sakila`.`city` ;

CREATE TABLE IF NOT EXISTS `sakila`.`city` (
  `city_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `city` VARCHAR(50) NOT NULL,
  `country_id` SMALLINT UNSIGNED NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`city_id`),
  INDEX `idx_fk_country_id` (`country_id` ASC) VISIBLE,
  CONSTRAINT `fk_city_country`
    FOREIGN KEY (`country_id`)
    REFERENCES `sakila`.`country` (`country_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 601
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sakila`.`address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sakila`.`address` ;

CREATE TABLE IF NOT EXISTS `sakila`.`address` (
  `address_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `address` VARCHAR(50) NOT NULL,
  `address2` VARCHAR(50) NULL DEFAULT NULL,
  `district` VARCHAR(20) NOT NULL,
  `city_id` SMALLINT UNSIGNED NOT NULL,
  `postal_code` VARCHAR(10) NULL DEFAULT NULL,
  `phone` VARCHAR(20) NOT NULL,
  `location` GEOMETRY NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`address_id`),
  INDEX `idx_fk_city_id` (`city_id` ASC) VISIBLE,
  SPATIAL INDEX `idx_location` (`location`) VISIBLE,
  CONSTRAINT `fk_address_city`
    FOREIGN KEY (`city_id`)
    REFERENCES `sakila`.`city` (`city_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 606
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sakila`.`category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sakila`.`category` ;

CREATE TABLE IF NOT EXISTS `sakila`.`category` (
  `category_id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(25) NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 17
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sakila`.`staff`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sakila`.`staff` ;

CREATE TABLE IF NOT EXISTS `sakila`.`staff` (
  `staff_id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `address_id` SMALLINT UNSIGNED NOT NULL,
  `picture` BLOB NULL DEFAULT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  `store_id` TINYINT UNSIGNED NOT NULL,
  `active` TINYINT(1) NOT NULL DEFAULT '1',
  `username` VARCHAR(16) NOT NULL,
  `password` VARCHAR(40) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`staff_id`),
  INDEX `idx_fk_store_id` (`store_id` ASC) VISIBLE,
  INDEX `idx_fk_address_id` (`address_id` ASC) VISIBLE,
  CONSTRAINT `fk_staff_address`
    FOREIGN KEY (`address_id`)
    REFERENCES `sakila`.`address` (`address_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_staff_store`
    FOREIGN KEY (`store_id`)
    REFERENCES `sakila`.`store` (`store_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sakila`.`store`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sakila`.`store` ;

CREATE TABLE IF NOT EXISTS `sakila`.`store` (
  `store_id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `manager_staff_id` TINYINT UNSIGNED NOT NULL,
  `address_id` SMALLINT UNSIGNED NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`store_id`),
  UNIQUE INDEX `idx_unique_manager` (`manager_staff_id` ASC) VISIBLE,
  INDEX `idx_fk_address_id` (`address_id` ASC) VISIBLE,
  CONSTRAINT `fk_store_address`
    FOREIGN KEY (`address_id`)
    REFERENCES `sakila`.`address` (`address_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_store_staff`
    FOREIGN KEY (`manager_staff_id`)
    REFERENCES `sakila`.`staff` (`staff_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sakila`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sakila`.`customer` ;

CREATE TABLE IF NOT EXISTS `sakila`.`customer` (
  `customer_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `store_id` TINYINT UNSIGNED NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  `address_id` SMALLINT UNSIGNED NOT NULL,
  `active` TINYINT(1) NOT NULL DEFAULT '1',
  `create_date` DATETIME NOT NULL,
  `last_update` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`customer_id`),
  INDEX `idx_fk_store_id` (`store_id` ASC) VISIBLE,
  INDEX `idx_fk_address_id` (`address_id` ASC) VISIBLE,
  INDEX `idx_last_name` (`last_name` ASC) VISIBLE,
  CONSTRAINT `fk_customer_address`
    FOREIGN KEY (`address_id`)
    REFERENCES `sakila`.`address` (`address_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_customer_store`
    FOREIGN KEY (`store_id`)
    REFERENCES `sakila`.`store` (`store_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 600
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sakila`.`language`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sakila`.`language` ;

CREATE TABLE IF NOT EXISTS `sakila`.`language` (
  `language_id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` CHAR(20) NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`language_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sakila`.`film`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sakila`.`film` ;

CREATE TABLE IF NOT EXISTS `sakila`.`film` (
  `film_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `release_year` YEAR NULL DEFAULT NULL,
  `language_id` TINYINT UNSIGNED NOT NULL,
  `original_language_id` TINYINT UNSIGNED NULL DEFAULT NULL,
  `rental_duration` TINYINT UNSIGNED NOT NULL DEFAULT '3',
  `rental_rate` DECIMAL(4,2) NOT NULL DEFAULT '4.99',
  `length` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `replacement_cost` DECIMAL(5,2) NOT NULL DEFAULT '19.99',
  `rating` ENUM('G', 'PG', 'PG-13', 'R', 'NC-17') NULL DEFAULT 'G',
  `special_features` SET('Trailers', 'Commentaries', 'Deleted Scenes', 'Behind the Scenes') NULL DEFAULT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`film_id`),
  INDEX `idx_title` (`title` ASC) VISIBLE,
  INDEX `idx_fk_language_id` (`language_id` ASC) VISIBLE,
  INDEX `idx_fk_original_language_id` (`original_language_id` ASC) VISIBLE,
  CONSTRAINT `fk_film_language`
    FOREIGN KEY (`language_id`)
    REFERENCES `sakila`.`language` (`language_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_film_language_original`
    FOREIGN KEY (`original_language_id`)
    REFERENCES `sakila`.`language` (`language_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 1001
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sakila`.`film_actor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sakila`.`film_actor` ;

CREATE TABLE IF NOT EXISTS `sakila`.`film_actor` (
  `actor_id` SMALLINT UNSIGNED NOT NULL,
  `film_id` SMALLINT UNSIGNED NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`actor_id`, `film_id`),
  INDEX `idx_fk_film_id` (`film_id` ASC) VISIBLE,
  CONSTRAINT `fk_film_actor_actor`
    FOREIGN KEY (`actor_id`)
    REFERENCES `sakila`.`actor` (`actor_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_film_actor_film`
    FOREIGN KEY (`film_id`)
    REFERENCES `sakila`.`film` (`film_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sakila`.`film_category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sakila`.`film_category` ;

CREATE TABLE IF NOT EXISTS `sakila`.`film_category` (
  `film_id` SMALLINT UNSIGNED NOT NULL,
  `category_id` TINYINT UNSIGNED NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`film_id`, `category_id`),
  INDEX `fk_film_category_category` (`category_id` ASC) VISIBLE,
  CONSTRAINT `fk_film_category_category`
    FOREIGN KEY (`category_id`)
    REFERENCES `sakila`.`category` (`category_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_film_category_film`
    FOREIGN KEY (`film_id`)
    REFERENCES `sakila`.`film` (`film_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sakila`.`film_text`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sakila`.`film_text` ;

CREATE TABLE IF NOT EXISTS `sakila`.`film_text` (
  `film_id` SMALLINT NOT NULL,
  `title` VARCHAR(255) NOT NULL,
  `description` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`film_id`),
  FULLTEXT INDEX `idx_title_description` (`title`, `description`) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sakila`.`inventory`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sakila`.`inventory` ;

CREATE TABLE IF NOT EXISTS `sakila`.`inventory` (
  `inventory_id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `film_id` SMALLINT UNSIGNED NOT NULL,
  `store_id` TINYINT UNSIGNED NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`inventory_id`),
  INDEX `idx_fk_film_id` (`film_id` ASC) VISIBLE,
  INDEX `idx_store_id_film_id` (`store_id` ASC, `film_id` ASC) VISIBLE,
  CONSTRAINT `fk_inventory_film`
    FOREIGN KEY (`film_id`)
    REFERENCES `sakila`.`film` (`film_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_inventory_store`
    FOREIGN KEY (`store_id`)
    REFERENCES `sakila`.`store` (`store_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 4582
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sakila`.`rental`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sakila`.`rental` ;

CREATE TABLE IF NOT EXISTS `sakila`.`rental` (
  `rental_id` INT NOT NULL AUTO_INCREMENT,
  `rental_date` DATETIME NOT NULL,
  `inventory_id` MEDIUMINT UNSIGNED NOT NULL,
  `customer_id` SMALLINT UNSIGNED NOT NULL,
  `return_date` DATETIME NULL DEFAULT NULL,
  `staff_id` TINYINT UNSIGNED NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rental_id`),
  UNIQUE INDEX `rental_date` (`rental_date` ASC, `inventory_id` ASC, `customer_id` ASC) VISIBLE,
  INDEX `idx_fk_inventory_id` (`inventory_id` ASC) VISIBLE,
  INDEX `idx_fk_customer_id` (`customer_id` ASC) VISIBLE,
  INDEX `idx_fk_staff_id` (`staff_id` ASC) VISIBLE,
  CONSTRAINT `fk_rental_customer`
    FOREIGN KEY (`customer_id`)
    REFERENCES `sakila`.`customer` (`customer_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_rental_inventory`
    FOREIGN KEY (`inventory_id`)
    REFERENCES `sakila`.`inventory` (`inventory_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_rental_staff`
    FOREIGN KEY (`staff_id`)
    REFERENCES `sakila`.`staff` (`staff_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 16050
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sakila`.`payment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sakila`.`payment` ;

CREATE TABLE IF NOT EXISTS `sakila`.`payment` (
  `payment_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` SMALLINT UNSIGNED NOT NULL,
  `staff_id` TINYINT UNSIGNED NOT NULL,
  `rental_id` INT NULL DEFAULT NULL,
  `amount` DECIMAL(5,2) NOT NULL,
  `payment_date` DATETIME NOT NULL,
  `last_update` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_id`),
  INDEX `idx_fk_staff_id` (`staff_id` ASC) VISIBLE,
  INDEX `idx_fk_customer_id` (`customer_id` ASC) VISIBLE,
  INDEX `fk_payment_rental` (`rental_id` ASC) VISIBLE,
  CONSTRAINT `fk_payment_customer`
    FOREIGN KEY (`customer_id`)
    REFERENCES `sakila`.`customer` (`customer_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_payment_rental`
    FOREIGN KEY (`rental_id`)
    REFERENCES `sakila`.`rental` (`rental_id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_payment_staff`
    FOREIGN KEY (`staff_id`)
    REFERENCES `sakila`.`staff` (`staff_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 16050
DEFAULT CHARACTER SET = utf8;

USE `sakila`;

DELIMITER $$

USE `sakila`$$
DROP TRIGGER IF EXISTS `sakila`.`customer_create_date` $$
USE `sakila`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `sakila`.`customer_create_date`
BEFORE INSERT ON `sakila`.`customer`
FOR EACH ROW
SET NEW.create_date = NOW()$$


USE `sakila`$$
DROP TRIGGER IF EXISTS `sakila`.`del_film` $$
USE `sakila`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `sakila`.`del_film`
AFTER DELETE ON `sakila`.`film`
FOR EACH ROW
BEGIN
    DELETE FROM film_text WHERE film_id = old.film_id;
  END$$


USE `sakila`$$
DROP TRIGGER IF EXISTS `sakila`.`ins_film` $$
USE `sakila`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `sakila`.`ins_film`
AFTER INSERT ON `sakila`.`film`
FOR EACH ROW
BEGIN
    INSERT INTO film_text (film_id, title, description)
        VALUES (new.film_id, new.title, new.description);
  END$$


USE `sakila`$$
DROP TRIGGER IF EXISTS `sakila`.`upd_film` $$
USE `sakila`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `sakila`.`upd_film`
AFTER UPDATE ON `sakila`.`film`
FOR EACH ROW
BEGIN
    IF (old.title != new.title) OR (old.description != new.description) OR (old.film_id != new.film_id)
    THEN
        UPDATE film_text
            SET title=new.title,
                description=new.description,
                film_id=new.film_id
        WHERE film_id=old.film_id;
    END IF;
  END$$


USE `sakila`$$
DROP TRIGGER IF EXISTS `sakila`.`rental_date` $$
USE `sakila`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `sakila`.`rental_date`
BEFORE INSERT ON `sakila`.`rental`
FOR EACH ROW
SET NEW.rental_date = NOW()$$


USE `sakila`$$
DROP TRIGGER IF EXISTS `sakila`.`payment_date` $$
USE `sakila`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `sakila`.`payment_date`
BEFORE INSERT ON `sakila`.`payment`
FOR EACH ROW
SET NEW.payment_date = NOW()$$


DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
