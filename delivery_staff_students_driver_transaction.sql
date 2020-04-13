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
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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

-- Dump completed on 2020-04-13 16:34:38
