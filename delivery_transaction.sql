CREATE DATABASE  IF NOT EXISTS `delivery` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `delivery`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: delivery
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
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `idTransaction` int NOT NULL,
  `amount` double NOT NULL,
  `Driver_idDriver` int NOT NULL,
  `Transaction_type` varchar(45) NOT NULL,
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
INSERT INTO `transaction` VALUES (1000,34,1,'Credit'),(1001,7,2,'Credit'),(1002,45,3,'Credit'),(1003,33,4,'Credit'),(1004,33,5,'Cash'),(1005,97,6,'Cash'),(1006,22,7,'Cash'),(1007,99,8,'Cash'),(1008,80,9,'Cash'),(1009,53,10,'Credit'),(1010,54,11,'Cash'),(1011,4,12,'Cash'),(1012,48,13,'Credit'),(1013,91,14,'Cash'),(1014,39,15,'Cash'),(1015,7,16,'Credit'),(1016,85,17,'Credit'),(1017,35,18,'Credit'),(1018,61,19,'Cash'),(1019,51,20,'Credit'),(1020,13,21,'Credit'),(1021,57,22,'Credit'),(1022,42,23,'Credit'),(1023,10,24,'Credit'),(1024,67,25,'Cash'),(1025,73,26,'Credit'),(1026,71,27,'Cash'),(1027,72,28,'Cash'),(1028,12,29,'Credit'),(1029,33,30,'Cash'),(1030,96,31,'Cash'),(1031,3,32,'Credit'),(1032,27,33,'Credit'),(1033,41,34,'Credit'),(1034,9,35,'Credit'),(1035,12,36,'Cash'),(1036,1,37,'Cash'),(1037,51,38,'Credit'),(1038,76,39,'Credit'),(1039,14,40,'Cash'),(1040,79,41,'Credit'),(1041,64,42,'Credit'),(1042,43,43,'Credit'),(1043,64,44,'Credit'),(1044,92,45,'Cash'),(1045,15,46,'Credit'),(1046,43,47,'Cash'),(1047,52,48,'Cash'),(1048,71,49,'Credit'),(1049,89,50,'Credit'),(1050,12,51,'Credit'),(1051,86,52,'Credit'),(1052,90,53,'Cash'),(1053,85,54,'Cash'),(1054,90,55,'Cash'),(1055,97,56,'Cash'),(1056,23,57,'Cash'),(1057,76,58,'Credit'),(1058,10,59,'Cash'),(1059,1,60,'Cash'),(1060,13,61,'Credit'),(1061,72,62,'Credit'),(1062,11,63,'Credit'),(1063,25,64,'Credit'),(1064,41,65,'Cash'),(1065,100,66,'Cash'),(1066,88,67,'Cash'),(1067,35,68,'Credit'),(1068,15,69,'Cash'),(1069,46,70,'Credit'),(1070,79,71,'Credit'),(1071,76,72,'Cash'),(1072,93,73,'Credit'),(1073,42,74,'Cash'),(1074,85,75,'Credit'),(1075,94,76,'Credit'),(1076,19,77,'Cash'),(1077,10,78,'Credit'),(1078,50,79,'Credit'),(1079,56,80,'Credit'),(1080,2,81,'Cash'),(1081,30,82,'Cash'),(1082,5,83,'Cash'),(1083,51,84,'Cash'),(1084,73,85,'Credit'),(1085,80,86,'Cash'),(1086,62,87,'Credit'),(1087,28,88,'Cash'),(1088,80,89,'Cash'),(1089,14,90,'Cash'),(1090,81,91,'Cash'),(1091,92,92,'Cash'),(1092,29,93,'Credit'),(1093,64,94,'Credit'),(1094,3,95,'Credit'),(1095,3,96,'Cash'),(1096,13,97,'Cash'),(1097,74,98,'Cash'),(1098,12,99,'Credit'),(1099,84,100,'Cash');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-13 15:47:24
