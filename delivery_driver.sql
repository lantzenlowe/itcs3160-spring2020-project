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
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `idDriver` int NOT NULL,
  `idOrder` int DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `phoneNumber` bigint DEFAULT NULL,
  PRIMARY KEY (`idDriver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,1,'Erat Industries',1946048768),(2,2,'Sem Nulla Interdum Associates',4614749747),(3,3,'Nec Mollis Vitae LLP',5066774352),(4,4,'Augue Sed Molestie Inc.',3259264278),(5,5,'Libero Et PC',2357448191),(6,6,'Ut Ipsum Ac Ltd',1898892072),(7,7,'Mus Corporation',9295369279),(8,8,'Non Magna Institute',8680003383),(9,9,'Urna Convallis Erat Corporation',1062173123),(10,10,'Morbi Quis Urna Company',8463889366),(11,11,'In Company',8814267072),(12,12,'Adipiscing Ligula Aenean Institute',4087310116),(13,13,'Non Luctus Corporation',1293555635),(14,14,'In Condimentum Corp.',3298361318),(15,15,'Gravida Consulting',2812659822),(16,16,'Nunc Ullamcorper Velit Corporation',1935262944),(17,17,'Quis Company',4466406305),(18,18,'Vulputate Consulting',6355616092),(19,19,'Primis Foundation',1570677221),(20,20,'Tincidunt Aliquam Arcu Limited',4984316390),(21,21,'Semper Et Consulting',7529756986),(22,22,'Nisi Nibh Lacinia Institute',1377359734),(23,23,'Non Hendrerit Associates',8707174810),(24,24,'Aliquam Adipiscing Consulting',9269948500),(25,25,'Pretium Corp.',5570338270),(26,26,'Mus Donec Dignissim Industries',3435136116),(27,27,'Feugiat Tellus Corp.',2421990920),(28,28,'Parturient Montes Foundation',2053883243),(29,29,'Sit Amet Foundation',7135223343),(30,30,'Rutrum Urna Institute',1858839739),(31,31,'Tellus Industries',8614649701),(32,32,'Sit Incorporated',5400859465),(33,33,'Aliquet Vel Limited',6772954714),(34,34,'Sem Institute',1044689172),(35,35,'A Neque Nullam Inc.',4601927673),(36,36,'Mauris Associates',6630526285),(37,37,'Lacinia Vitae Company',6185044509),(38,38,'Libero Proin Institute',1107161638),(39,39,'Ligula Aenean Gravida Industries',3891075648),(40,40,'Aenean Massa Integer Limited',4155134226),(41,41,'A Malesuada Id PC',3685269499),(42,42,'Sit Amet Ante Corporation',1445193366),(43,43,'Quam Dignissim Consulting',1718272980),(44,44,'Nunc Inc.',8275139661),(45,45,'Neque Morbi Quis PC',9267647672),(46,46,'Nunc Company',3570363593),(47,47,'Pede Nunc Sed Associates',6714359457),(48,48,'At LLC',8869700332),(49,49,'Cras Convallis Convallis Inc.',3806669506),(50,50,'Nec Imperdiet Nec Industries',4165778547),(51,51,'Vitae Sodales Nisi LLP',3867185216),(52,52,'Feugiat Non Associates',9207526548),(53,53,'Vehicula Inc.',3175597617),(54,54,'Lectus A Sollicitudin Corporation',7107719189),(55,55,'Ut Sagittis Industries',8695091425),(56,56,'Eros Nec Tellus Institute',9350893050),(57,57,'Ac Foundation',5145598423),(58,58,'Elementum Purus Accumsan Limited',4413259461),(59,59,'Sapien Cursus LLP',1745908434),(60,60,'Vitae Sodales Institute',6565996933),(61,61,'Sem Limited',3879266003),(62,62,'Odio Inc.',2295966542),(63,63,'Metus Eu Incorporated',2694500020),(64,64,'Mi PC',2918677042),(65,65,'Convallis Erat Eget Ltd',1623224784),(66,66,'Penatibus Et LLP',8682821538),(67,67,'Libero Dui Inc.',1721837548),(68,68,'Tortor At Risus Foundation',9772110012),(69,69,'Vel Mauris Corporation',1592529882),(70,70,'Nascetur Institute',2714274300),(71,71,'Suspendisse Sagittis Nullam Company',4330793234),(72,72,'A Facilisis Non Institute',5065816049),(73,73,'Parturient Industries',3612168465),(74,74,'Ut Incorporated',4587198930),(75,75,'Id Nunc Industries',2152385475),(76,76,'Sem Vitae Company',4873539658),(77,77,'Ante Dictum Cursus Limited',3756705740),(78,78,'Volutpat Nulla Corporation',3362612960),(79,79,'Neque Sed Sem Institute',1115457987),(80,80,'Nulla Associates',7739658273),(81,81,'Fringilla Mi Associates',8981370152),(82,82,'Pretium Institute',9335314575),(83,83,'Luctus Vulputate Nisi Limited',3184857721),(84,84,'Pretium Aliquet Metus Institute',2425770543),(85,85,'Sapien Molestie Orci Limited',5071086975),(86,86,'Nunc Sit Foundation',2814549812),(87,87,'Nullam Nisl Corp.',9474770857),(88,88,'Non Lobortis Quis Corporation',1631664418),(89,89,'Donec Industries',5947511084),(90,90,'Lorem Vitae Consulting',2245002664),(91,91,'Dignissim Maecenas Inc.',7513269095),(92,92,'Magnis Dis Parturient Corp.',3186994692),(93,93,'Eget Limited',6416431846),(94,94,'Nec Urna Suscipit Foundation',4832954772),(95,95,'Fusce Diam Nunc Consulting',4111314722),(96,96,'Lectus Cum LLP',6402624655),(97,97,'Molestie Sodales Mauris Industries',8912575074),(98,98,'Accumsan Interdum Institute',8713380038),(99,99,'Dapibus Gravida Aliquam Corp.',5599219395),(100,100,'Ipsum Donec Sollicitudin Institute',5826396238);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-13 15:47:25
