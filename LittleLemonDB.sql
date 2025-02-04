-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customers` (
  `Customer_ID` INT NOT NULL,
  `Full_Name` VARCHAR(45) NULL,
  `Contact_Number` INT NULL,
  `Email` VARCHAR(45) NULL,
  PRIMARY KEY (`Customer_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`staff` (
  `Staff_ID` INT NOT NULL,
  `Full_Name` VARCHAR(45) NULL,
  `Role` VARCHAR(45) NULL,
  `Salary` INT NULL,
  PRIMARY KEY (`Staff_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Bookings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Bookings` (
  `Booking_ID` INT NOT NULL,
  `Booking_Date` DATE NULL,
  `Table_No` INT NULL,
  `Customer_ID` INT NULL,
  `Staff_ID` INT NULL,
  PRIMARY KEY (`Booking_ID`),
  INDEX `customers_idx` (`Customer_ID` ASC) VISIBLE,
  INDEX `staff_idx` (`Staff_ID` ASC) VISIBLE,
  CONSTRAINT `customers`
    FOREIGN KEY (`Customer_ID`)
    REFERENCES `mydb`.`Customers` (`Customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `staff`
    FOREIGN KEY (`Staff_ID`)
    REFERENCES `mydb`.`staff` (`Staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Menu` (
  `Menu_ID` INT NOT NULL,
  ` Cuisine_Name` VARCHAR(45) NULL,
  `Starter_Name` VARCHAR(45) NULL,
  `Course_Name` VARCHAR(45) NULL,
  `Drink` VARCHAR(45) NULL,
  `Dessert` VARCHAR(45) NULL,
  PRIMARY KEY (`Menu_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Orders` (
  `Order_ID` INT NOT NULL,
  `Order_Date` DATE NULL,
  `Quantity` INT NULL,
  `Total_Cost` INT NULL,
  `Customer_ID` INT NULL,
  `Booking_ID` INT NULL,
  `Menu_ID` INT NULL,
  PRIMARY KEY (`Order_ID`),
  INDEX `booking_idx` (`Customer_ID` ASC) VISIBLE,
  INDEX `Menu_idx` (`Menu_ID` ASC) VISIBLE,
  CONSTRAINT `booking`
    FOREIGN KEY (`Customer_ID`)
    REFERENCES `mydb`.`Bookings` (`Customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Menu`
    FOREIGN KEY (`Menu_ID`)
    REFERENCES `mydb`.`Menu` (`Menu_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Order_Delivery_Status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Order_Delivery_Status` (
  `Delivery_ID` INT NOT NULL,
  `Order_ID` INT NULL,
  `Delivery_Date` DATE NULL,
  `Status` VARCHAR(45) NULL,
  PRIMARY KEY (`Delivery_ID`),
  INDEX `orders_idx` (`Order_ID` ASC) VISIBLE,
  CONSTRAINT `orders`
    FOREIGN KEY (`Order_ID`)
    REFERENCES `mydb`.`Orders` (`Order_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
