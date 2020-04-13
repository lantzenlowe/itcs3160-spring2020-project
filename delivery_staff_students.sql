-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: delivery
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Staff`
--

DROP TABLE IF EXISTS `Staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Staff` (
  `idStaff` int NOT NULL,
  `Restaurant_idRestaurant` int DEFAULT NULL,
  `academic_department` varchar(45) NOT NULL,
  PRIMARY KEY (`idStaff`),
  KEY `fk_Staff_Restaurant1_idx` (`Restaurant_idRestaurant`),
  CONSTRAINT `fk_Staff_Restaurant1` FOREIGN KEY (`Restaurant_idRestaurant`) REFERENCES `Restaurant` (`idRestaurant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Staff`
--

LOCK TABLES `Staff` WRITE;
/*!40000 ALTER TABLE `Staff` DISABLE KEYS */;
INSERT INTO `Staff` VALUES (1,NULL,'Business'),(2,NULL,'Liberal Arts & Sciences'),(3,NULL,'Honors College'),(4,NULL,'Business'),(5,NULL,'Graduate School'),(6,NULL,'Liberal Arts & Sciences'),(7,NULL,'Education'),(8,NULL,'Engineering'),(9,NULL,'Honors College'),(10,NULL,'Health and Human Services'),(11,NULL,'Engineering'),(12,NULL,'Health and Human Services'),(13,NULL,'Business'),(14,NULL,'Computing and Informatics'),(15,NULL,'Arts + Architecture'),(16,NULL,'Computing and Informatics'),(17,NULL,'Education'),(18,NULL,'Computing and Informatics'),(19,NULL,'University College'),(20,NULL,'Engineering'),(21,NULL,'Arts + Architecture'),(22,NULL,'Arts + Architecture'),(23,NULL,'Liberal Arts & Sciences'),(24,NULL,'Computing and Informatics'),(25,NULL,'Health and Human Services'),(26,NULL,'Honors College'),(27,NULL,'Arts + Architecture'),(28,NULL,'Liberal Arts & Sciences'),(29,NULL,'Business'),(30,NULL,'Engineering'),(31,NULL,'Business'),(32,NULL,'Business'),(33,NULL,'Health and Human Services'),(34,NULL,'Engineering'),(35,NULL,'Health and Human Services'),(36,NULL,'Liberal Arts & Sciences'),(37,NULL,'Arts + Architecture'),(38,NULL,'Health and Human Services'),(39,NULL,'Arts + Architecture'),(40,NULL,'Education'),(41,NULL,'Computing and Informatics'),(42,NULL,'University College'),(43,NULL,'Honors College'),(44,NULL,'Health and Human Services'),(45,NULL,'Honors College'),(46,NULL,'University College'),(47,NULL,'Business'),(48,NULL,'Computing and Informatics'),(49,NULL,'Health and Human Services'),(50,NULL,'Computing and Informatics'),(51,NULL,'Liberal Arts & Sciences'),(52,NULL,'Computing and Informatics'),(53,NULL,'Education'),(54,NULL,'Engineering'),(55,NULL,'Honors College'),(56,NULL,'Education'),(57,NULL,'Business'),(58,NULL,'Engineering'),(59,NULL,'Computing and Informatics'),(60,NULL,'Arts + Architecture'),(61,NULL,'Education'),(62,NULL,'Computing and Informatics'),(63,NULL,'Engineering'),(64,NULL,'University College'),(65,NULL,'Liberal Arts & Sciences'),(66,NULL,'Computing and Informatics'),(67,NULL,'Honors College'),(68,NULL,'Business'),(69,NULL,'Health and Human Services'),(70,NULL,'Health and Human Services'),(71,NULL,'Health and Human Services'),(72,NULL,'Liberal Arts & Sciences'),(73,NULL,'University College'),(74,NULL,'Computing and Informatics'),(75,NULL,'Computing and Informatics'),(76,NULL,'Education'),(77,NULL,'Business'),(78,NULL,'Graduate School'),(79,NULL,'Health and Human Services'),(80,NULL,'Computing and Informatics'),(81,NULL,'Education'),(82,NULL,'Liberal Arts & Sciences'),(83,NULL,'Computing and Informatics'),(84,NULL,'Engineering'),(85,NULL,'Education'),(86,NULL,'Education'),(87,NULL,'Arts + Architecture'),(88,NULL,'Computing and Informatics'),(89,NULL,'Honors College'),(90,NULL,'Arts + Architecture'),(91,NULL,'Arts + Architecture'),(92,NULL,'Health and Human Services'),(93,NULL,'University College'),(94,NULL,'Engineering'),(95,NULL,'Liberal Arts & Sciences'),(96,NULL,'University College'),(97,NULL,'Computing and Informatics'),(98,NULL,'Graduate School'),(99,NULL,'Honors College'),(100,NULL,'Health and Human Services');
/*!40000 ALTER TABLE `Staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Students`
--

DROP TABLE IF EXISTS `Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Students` (
  `idStudent` int NOT NULL,
  `firstName` varchar(64) NOT NULL,
  `lastName` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phoneNumber` char(10) DEFAULT NULL,
  `Restaurant_idRestaurant` int DEFAULT NULL,
  `Staff_idStaff` int DEFAULT NULL,
  PRIMARY KEY (`idStudent`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phoneNumber_UNIQUE` (`phoneNumber`),
  KEY `fk_Students_Restaurant1_idx` (`Restaurant_idRestaurant`),
  KEY `fk_Students_Staff1_idx` (`Staff_idStaff`),
  CONSTRAINT `fk_Students_Restaurant1` FOREIGN KEY (`Restaurant_idRestaurant`) REFERENCES `Restaurant` (`idRestaurant`),
  CONSTRAINT `fk_Students_Staff1` FOREIGN KEY (`Staff_idStaff`) REFERENCES `Staff` (`idStaff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
INSERT INTO `Students` VALUES (1000000,'Mason','Garcia','eu.augue.porttitor@Class.net','7044386372',NULL,NULL),(1000001,'David','Welch','feugiat.nec.diam@Nullamfeugiatplacerat.ca','7046647174',NULL,NULL),(1000002,'Erasmus','Harrison','luctus.lobortis@Morbiquisurna.ca','7041984698',NULL,NULL),(1000003,'Aspen','Watts','porttitor.tellus@eu.net','7040103576',NULL,NULL),(1000004,'Debra','Pacheco','neque.venenatis@nonsollicitudin.ca','7042328978',NULL,NULL),(1000005,'Breanna','Spears','felis.adipiscing@Nunc.org','7049086051',NULL,NULL),(1000006,'Clinton','Meyer','Duis.elementum@ante.ca','7041117471',NULL,NULL),(1000007,'Brennan','Mccullough','pede.et@sitamet.org','7048400799',NULL,NULL),(1000008,'Sacha','Barrera','sit.amet@lectusasollicitudin.org','7040876702',NULL,NULL),(1000009,'Nora','Gay','id.ante@Phasellusdolorelit.edu','7049509373',NULL,NULL),(1000010,'Carson','Sampson','scelerisque.lorem@nunc.org','7040495022',NULL,NULL),(1000011,'Hollee','Hawkins','dui.Fusce@tempuseu.ca','7042125112',NULL,NULL),(1000012,'Shelby','Emerson','consectetuer.cursus.et@MorbivehiculaPellentesque.com','7044391690',NULL,NULL),(1000013,'Ronan','Serrano','Quisque@eu.edu','7042184088',NULL,NULL),(1000014,'Lars','Jefferson','sed.dolor@sed.net','7042139684',NULL,NULL),(1000015,'Cherokee','Keller','eros.Nam@diam.com','7044536457',NULL,NULL),(1000016,'Jin','Armstrong','amet@necluctus.edu','7048876457',NULL,NULL),(1000017,'Colin','Mcfadden','Nunc.sed@elementum.com','7046773233',NULL,NULL),(1000018,'Nehru','Richard','dolor.dapibus.gravida@enim.org','7046980778',NULL,NULL),(1000019,'Charissa','Mcpherson','arcu@Integersem.edu','7047880648',NULL,NULL),(1000020,'Ila','Lewis','erat.nonummy.ultricies@euodio.edu','7049272913',NULL,NULL),(1000021,'Ignatius','Rollins','lorem.ut@auctor.net','7040421745',NULL,NULL),(1000022,'Louis','Cantu','eu.ligula@tempus.ca','7048144035',NULL,NULL),(1000023,'Camden','Bryan','lorem@cursus.co.uk','7041441896',NULL,NULL),(1000024,'Lana','Mcclure','urna.Nullam@velvenenatis.ca','7045754597',NULL,NULL),(1000025,'Vance','Moon','lectus@parturient.edu','7042776075',NULL,NULL),(1000026,'Sasha','Best','turpis.non@Donec.com','7045072832',NULL,NULL),(1000027,'Quinlan','Ayala','tellus.non.magna@Proinsed.co.uk','7042495248',NULL,NULL),(1000028,'Lucy','Dominguez','sociis.natoque@mauris.edu','7049725354',NULL,NULL),(1000029,'Mia','Morse','vulputate.lacus.Cras@utdolor.com','7047069735',NULL,NULL),(1000030,'Mufutau','Ortega','tempus@sem.net','7043106075',NULL,NULL),(1000031,'Ariana','Walker','a@Integermollis.org','7041562353',NULL,NULL),(1000032,'Malik','Smith','enim.Etiam.gravida@nec.edu','7042124381',NULL,NULL),(1000033,'Castor','Lopez','luctus@sitamet.ca','7043713261',NULL,NULL),(1000034,'Amaya','Simon','nisi.sem@massa.co.uk','7048471963',NULL,NULL),(1000035,'Kieran','Avery','nec.orci@tellusfaucibus.ca','7045569503',NULL,NULL),(1000036,'Mari','Moore','Suspendisse.eleifend.Cras@porttitortellus.edu','7045693449',NULL,NULL),(1000037,'Damon','Butler','In.mi.pede@egetdictum.co.uk','7046208636',NULL,NULL),(1000038,'Susan','Buchanan','libero@euismodin.org','7040775708',NULL,NULL),(1000039,'Armando','Burks','Nullam@Duisrisus.ca','7045477034',NULL,NULL),(1000040,'Tamekah','Rosario','nisl@sit.co.uk','7040656444',NULL,NULL),(1000041,'Veronica','Fleming','Suspendisse.ac.metus@adipiscinglobortis.org','7046282368',NULL,NULL),(1000042,'Marny','Myers','tempus.eu.ligula@sollicitudinorcisem.edu','7045720887',NULL,NULL),(1000043,'Hamilton','Cline','dui@Donec.ca','7049731340',NULL,NULL),(1000044,'Rama','Porter','auctor.odio@eu.ca','7047210655',NULL,NULL),(1000045,'Ferdinand','Byers','nunc@elitdictum.org','7044521338',NULL,NULL),(1000046,'Candace','Blackwell','amet.lorem@Vestibulum.com','7041744230',NULL,NULL),(1000047,'Margaret','Shields','cursus@augueSedmolestie.ca','7049992426',NULL,NULL),(1000048,'Rhea','Brewer','adipiscing.elit@in.com','7044256396',NULL,NULL),(1000049,'Mercedes','Harding','dignissim.tempor.arcu@Etiam.co.uk','7045868948',NULL,NULL),(1000050,'Hilel','Duffy','cursus@eunibh.com','7046718920',NULL,NULL),(1000051,'Hector','Burns','dui.Cum@ipsumacmi.ca','7040642626',NULL,NULL),(1000052,'Justine','Gregory','at.pede@Nuncuterat.edu','7045606971',NULL,NULL),(1000053,'Zephania','Mcleod','parturient.montes@ullamcorper.net','7040100401',NULL,NULL),(1000054,'George','Ray','sed@interdum.com','7041250920',NULL,NULL),(1000055,'Raja','Odonnell','eleifend@magnis.org','7049723525',NULL,NULL),(1000056,'Alana','Patterson','quis@eratEtiam.ca','7042148690',NULL,NULL),(1000057,'Hamish','Walls','lobortis@senectuset.ca','7046496444',NULL,NULL),(1000058,'Deirdre','Carr','risus.odio.auctor@massalobortisultrices.ca','7042859520',NULL,NULL),(1000059,'Daryl','Daugherty','a.scelerisque.sed@laciniamattisInteger.com','7045001309',NULL,NULL),(1000060,'Joshua','Cleveland','turpis@dolor.net','7047346245',NULL,NULL),(1000061,'Uta','Houston','eu@lacusQuisque.edu','7042739044',NULL,NULL),(1000062,'Aurora','Dixon','viverra@rutrumFusce.net','7044169530',NULL,NULL),(1000063,'Kibo','Kelly','faucibus@tempusmauriserat.co.uk','7045150394',NULL,NULL),(1000064,'Hector','Trevino','dis.parturient.montes@diamnunc.org','7041831240',NULL,NULL),(1000065,'Omar','Medina','Duis.a@elementumpurus.net','7043125681',NULL,NULL),(1000066,'Risa','Farmer','pede.sagittis.augue@ultrices.org','7045136502',NULL,NULL),(1000067,'Amela','Wilder','lacus.varius.et@Inornaresagittis.net','7048346901',NULL,NULL),(1000068,'Rogan','Curtis','Curabitur@vitaeodio.ca','7044041218',NULL,NULL),(1000069,'Leigh','Daugherty','ligula.consectetuer@vulputateullamcorpermagna.ca','7047286243',NULL,NULL),(1000070,'Stewart','Joyce','eu.eleifend.nec@est.org','7041064093',NULL,NULL),(1000071,'Bradley','Cherry','Nam.tempor@diamnunc.net','7044765800',NULL,NULL),(1000072,'Lucius','Castillo','in.faucibus@hendreritidante.edu','7046489582',NULL,NULL),(1000073,'Leah','Valenzuela','Integer.aliquam.adipiscing@odio.ca','7046266989',NULL,NULL),(1000074,'Colton','Patterson','elit.pede.malesuada@vestibulumnec.com','7044988192',NULL,NULL),(1000075,'Blossom','Davidson','orci.consectetuer.euismod@eu.edu','7048777206',NULL,NULL),(1000076,'Judith','Alvarado','purus.Nullam@lacusMaurisnon.ca','7045596092',NULL,NULL),(1000077,'Hayes','Summers','non@ante.ca','7044386967',NULL,NULL),(1000078,'Willa','Hogan','Cum.sociis.natoque@Donectempor.edu','7047370743',NULL,NULL),(1000079,'Perry','Simpson','non.nisi.Aenean@montesnascetur.edu','7042617241',NULL,NULL),(1000080,'Alana','Finley','lacus.pede.sagittis@fermentumconvallisligula.net','7041027456',NULL,NULL),(1000081,'Kirby','Richardson','diam@pharetra.ca','7047617957',NULL,NULL),(1000082,'Kasper','Hopkins','id.erat.Etiam@rutrum.co.uk','7044984913',NULL,NULL),(1000083,'Chadwick','Baker','amet@convallis.net','7043567476',NULL,NULL),(1000084,'Karina','Mccarthy','Aliquam@miDuis.org','7048869927',NULL,NULL),(1000085,'Alfonso','Meadows','tempor.augue.ac@dolorvitaedolor.ca','7044344342',NULL,NULL),(1000086,'Fletcher','Olson','Mauris.eu.turpis@mipedenonummy.org','7040411015',NULL,NULL),(1000087,'Jennifer','Sellers','elementum.lorem@erat.ca','7042200498',NULL,NULL),(1000088,'Camille','Terry','aliquet@mi.co.uk','7046968327',NULL,NULL),(1000089,'Lacota','Zamora','Mauris@vitaeodio.com','7046923656',NULL,NULL),(1000090,'Maisie','Larson','erat.nonummy.ultricies@magnaDuisdignissim.org','7044536416',NULL,NULL),(1000091,'Karen','Burgess','dictum.eu@eleifend.edu','7047863045',NULL,NULL),(1000092,'Quintessa','Mccarthy','aliquet.diam@sagittis.co.uk','7049470240',NULL,NULL),(1000093,'Nichole','Wilkins','lobortis.Class.aptent@malesuada.org','7043167014',NULL,NULL),(1000094,'Macaulay','Page','orci@tellus.co.uk','7045436607',NULL,NULL),(1000095,'Hilel','Allen','aliquet.magna.a@Quisque.edu','7048897178',NULL,NULL),(1000096,'Hiram','Moran','Fusce.aliquam@accumsanconvallisante.com','7045846227',NULL,NULL),(1000097,'Anne','Roach','mollis.lectus@conguea.ca','7043517987',NULL,NULL),(1000098,'Marsden','Pena','massa@enimCurabitur.net','7041884778',NULL,NULL),(1000099,'Kylynn','Mathews','Suspendisse.aliquet.sem@Utsemper.org','7049749365',NULL,NULL);
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'delivery'
--

--
-- Dumping routines for database 'delivery'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-13 16:25:13
