# itcs3160-spring2020-project

## Group 3:
<p><b>Lantzen Lowe</b> - Computer Science Undergraduate Student at the University of North Carolina at Charlotte
<p><b>Marissa Oxford</b> - Computer Science Undergraduate Student at the University of North Carolina at Charlotte
<p><b>Adam Zeid</b> - Computer Science Undergraduate Student at the University of North Carolina at Charlotte
<p><b>Carson Groulx</b> - Computer Science Undergraduate Student at the University of North Carolina at Charlotte
<p><b>Jesse Espinoza</b> - Computer Science Undergraduate Student at the University of North Carolina at Charlotte

# Table of Contents:

## Introduction
<p>An introduction to the project, a prototype database for a campus controlled food delivery service. The dataset includes [TODO: write some table names here] and more.
  
<i>Note: This project is only a prototype and not a working model.</i>

## Use Case
<p>A visual representation of the campus controlled food delivery service's operation.

![](Use%20Case%20Diagram.png)

## Business Rules
<p>A list of requirements and restraints adhered to in the creation of this project. Can be found in Project Introduction file.

## EERD
<p>An Enhanced Entity Relationship Diagram illustrating the relationships of the objects used in the database. Also included in this section is a Data Dictionary. The Data Dictionary is under Data Dictionary file. 
  
![](EERD%20Diagram.png)

## Advanced Views
<p> DROP VIEW IF EXISTS `delivery`.`view2`;
CREATE VIEW `delivery`.`view2` AS 
(SELECT delivery.Staff.academic_department, 
COUNT(delivery.Staff.academic_department) AS numStaffPerDepartment
FROM delivery.Staff
GROUP BY delivery.Staff.academic_department
ORDER BY delivery.Staff.academic_department);  
CREATE VIEW `view1` AS SELECT idCustomer, firstName FROM Customer ORDER BY firstName ASC;

## MySQL dump
<p>-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `idCustomer` int NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `Restaurant_idRestaurant` int NOT NULL,
  PRIMARY KEY (`idCustomer`,`Restaurant_idRestaurant`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_Customer_Restaurant_idx` (`Restaurant_idRestaurant`),
  CONSTRAINT `fk_Customer_Restaurant` FOREIGN KEY (`Restaurant_idRestaurant`) REFERENCES `restaurant` (`idRestaurant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `idDriver` int NOT NULL,
  `idOrder` int DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDriver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `idOrder` int NOT NULL,
  `date` date DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `idRestaurant` int DEFAULT NULL,
  `Transaction_idTransaction` int NOT NULL,
  PRIMARY KEY (`idOrder`,`Transaction_idTransaction`),
  KEY `fk_Order_Transaction1_idx` (`Transaction_idTransaction`),
  CONSTRAINT `fk_Order_Transaction1` FOREIGN KEY (`Transaction_idTransaction`) REFERENCES `transaction` (`idTransaction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `idRestaurant` int NOT NULL,
  `idOrder` int NOT NULL,
  `location` varchar(45) NOT NULL,
  `Order_idOrder` int NOT NULL,
  `Order_Transaction_idTransaction` int NOT NULL,
  PRIMARY KEY (`idRestaurant`),
  KEY `fk_Restaurant_Order1_idx` (`Order_idOrder`,`Order_Transaction_idTransaction`),
  CONSTRAINT `fk_Restaurant_Order1` FOREIGN KEY (`Order_idOrder`, `Order_Transaction_idTransaction`) REFERENCES `order` (`idOrder`, `Transaction_idTransaction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `idTransaction` int NOT NULL,
  `amount` double NOT NULL,
  `Driver_idDriver` int NOT NULL,
  PRIMARY KEY (`idTransaction`,`Driver_idDriver`),
  KEY `fk_Transaction_Driver1_idx` (`Driver_idDriver`),
  CONSTRAINT `fk_Transaction_Driver1` FOREIGN KEY (`Driver_idDriver`) REFERENCES `driver` (`idDriver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view1`
--

DROP TABLE IF EXISTS `view1`;
/*!50001 DROP VIEW IF EXISTS `view1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view1` AS SELECT 
 1 AS `idCustomer`,
 1 AS `firstName`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view1`
--

/*!50001 DROP VIEW IF EXISTS `view1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view1` AS select `customer`.`idCustomer` AS `idCustomer`,`customer`.`firstName` AS `firstName` from `customer` order by `customer`.`firstName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-10  8:58:07


