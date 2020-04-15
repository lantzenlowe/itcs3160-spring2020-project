DROP TABLE IF EXISTS `ORDER`;
	/*!40101 SET @saved_cs_client     = @@character_set_client */;
	 SET character_set_client = utf8mb4 ;
	CREATE TABLE `ORDER` (
	  `idOrder` INT NOT NULL,
	   `date` mediumint DEFAULT NULL,
	  `time` mediumint DEFAULT NULL,
	`Transaction_idTransaction` mediumint DEFAULT NULL,
	  `idRestaurant` mediumint DEFAULT NULL
	 PRIMARY KEY (`idOrder`, `Transaction_idTransaction`),
KEY `fk_Order_Transaction1_idx` (`Transaction_idTransaction`),
  CONSTRAINT `fk_Order_Transaction1`  FOREIGN KEY (`Transaction_idTransaction`) REFERENCES `delivery`.`Transaction` (`idTransaction`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8;
	/*!40101 SET character_set_client = @saved_cs_client */;
	
--
-- Dumping data for table `ORDER`
--

LOCK TABLES `ORDER` WRITE;
/*!40000 ALTER TABLE `ORDER` DISABLE KEYS */;
INSERT INTO `ORDER` (`idOrder`,`date`,`time`,`idRestaurant`,`Transaction_idTransaction`,`idCustomer`) VALUES (205,"16/May/2020",2232,515,24,779),(846,"24/May/2020",1724,160,923,644),(748,"16/October/2019",1470,400,929,220),(213,"28/July/2020",1890,530,380,150),(535,"21/December/2019",1558,630,134,819),(247,"01/February/2021",248,757,664,72),(144,"20/October/2019",1292,400,990,129),(29,"10/January/2021",519,425,675,37),(857,"24/March/2021",276,140,28,322),(300,"23/August/2020",2291,504,986,499),(158,"05/September/2020",456,561,19,854),(259,"04/July/2019",874,429,977,205),(624,"28/June/2019",2083,192,804,614),(917,"29/August/2019",418,782,332,289),(227,"08/August/2020",1858,57,918,884),(185,"06/May/2019",424,716,699,857),(52,"06/September/2019",886,810,273,725),(857,"19/January/2020",1363,49,867,352),(130,"10/January/2020",335,603,275,793),(230,"22/February/2020",1444,914,113,25),(346,"03/September/2020",2157,318,903,462),(69,"09/May/2019",2372,284,460,496),(783,"13/September/2020",543,995,342,89),(589,"25/March/2021",1759,942,660,224),(574,"29/October/2019",921,722,406,416),(947,"24/January/2020",1153,197,382,270),(620,"23/April/2019",908,198,198,762),(631,"14/March/2021",1606,993,796,61),(477,"10/January/2021",554,256,466,329),(52,"12/August/2019",1770,803,259,125),(768,"10/March/2020",1312,364,293,510),(253,"15/August/2019",863,985,287,426),(154,"19/June/2020",1445,632,264,554),(457,"13/April/2020",215,58,111,799),(198,"01/December/2020",680,714,277,733),(682,"23/July/2020",1794,945,778,414),(430,"26/May/2020",730,785,449,308),(791,"07/August/2019",985,621,177,125),(244,"25/May/2020",675,680,872,615),(19,"28/December/2020",2018,982,201,576),(831,"11/October/2020",1937,300,811,203),(414,"15/May/2020",2322,143,257,282),(661,"08/September/2020",1657,653,980,948),(372,"11/May/2020",653,128,291,630),(807,"11/April/2021",1473,605,61,496),(448,"23/May/2019",742,249,323,408),(618,"13/December/2019",244,742,843,73),(409,"17/August/2020",1354,468,914,852),(745,"15/September/2020",750,695,725,326),(243,"29/September/2019",1582,673,864,65),(6,"13/October/2019",400,410,545,703),(147,"23/April/2020",1788,848,279,211),(935,"14/January/2020",581,626,395,124),(707,"29/August/2020",1945,288,241,97),(709,"28/May/2020",691,155,959,818),(683,"09/December/2020",1200,855,358,230),(262,"13/July/2019",294,180,385,15),(842,"14/May/2019",1945,371,846,51),(215,"15/October/2020",1449,137,9,240),(307,"20/October/2019",1024,877,447,473),(26,"06/September/2019",567,657,160,206),(739,"27/October/2019",2267,47,530,438),(129,"11/July/2020",271,523,178,323),(927,"06/December/2020",1093,56,902,902),(438,"11/February/2021",174,939,599,382),(58,"18/March/2021",2044,815,820,84),(490,"28/July/2019",1583,36,6,996),(853,"12/February/2021",2296,66,529,949),(124,"24/December/2019",906,544,468,584),(683,"18/December/2019",1380,416,674,962),(655,"27/July/2019",2049,799,526,269),(977,"29/November/2020",860,644,181,925),(540,"19/August/2019",669,968,914,56),(720,"17/January/2021",1311,109,503,348),(895,"24/August/2019",1918,457,447,880),(454,"11/August/2019",1627,138,422,911),(291,"28/April/2020",1126,928,998,799),(60,"17/November/2019",468,594,762,402),(352,"12/June/2019",858,190,689,267),(252,"15/July/2020",618,573,315,164),(628,"25/December/2020",1665,678,714,870),(930,"05/February/2021",42,603,520,206),(73,"04/December/2019",1112,341,746,454),(764,"11/January/2020",2337,833,167,964),(273,"29/February/2020",702,413,776,84),(645,"14/August/2019",390,777,696,787),(996,"31/March/2021",459,413,539,258),(998,"16/September/2020",1049,598,670,806),(478,"30/November/2019",525,109,147,998),(194,"06/March/2021",1712,680,248,693),(729,"05/June/2020",1186,94,66,318),(374,"16/October/2020",1744,86,39,170),(924,"07/November/2019",1361,736,8,710),(333,"08/August/2019",396,155,170,349),(3,"05/January/2021",1446,258,739,852),(784,"30/December/2019",358,631,140,904),(543,"05/January/2020",149,179,382,460),(419,"11/January/2020",2359,973,833,695),(244,"29/November/2019",1410,854,974,448),(844,"06/March/2021",893,784,386,836);
UNLOCK TABLES;
