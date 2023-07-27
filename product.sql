-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: prod-chiholee-smartdba-cluster.cluster-cgkgybnzurln.ap-northeast-2.rds.amazonaws.com    Database: ecommerce
--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `price` int NOT NULL,
  `last_update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'새우튀김','img/06.jpg','분식',2,'2023-04-07 03:06:17.020331'),(2,'김치','img/01.jpg','반찬',8000,'2023-04-07 03:11:08.706238'),(3,'떡볶이','img/02.jpg','분식',4000,'2023-04-07 03:22:06.514964'),(4,'삼겹살','img/04.jpg','육류',11000,'2023-04-07 14:51:54.891245'),(5,'삼계탕','img/05.jpg','육류',15000,'2023-04-07 14:52:18.753837'),(6,'발효빵','img/03.jpg','빵',7000,'2023-04-07 14:53:03.838920'),(7,'고추전','img/07.jpg','분식',11000,'2023-04-07 14:53:30.601177'),(8,'족발','img/08.jpg','안주',18000,'2023-04-07 14:53:59.291312'),(9,'치킨','img/09.jpg','육류',18000,'2023-04-07 14:54:28.374265'),(10,'핫도그','img/10.jpg','분식',1600,'2023-04-07 14:54:41.590185'),(11,'쌀','img/11.jpeg','농산물',35000,'2023-04-10 14:23:58.172584'),(12,'두부','img/12.jpeg','반찬',3500,'2023-04-10 14:24:08.273385'),(13,'비빔밥','img/13.jpeg','분식',9000,'2023-04-10 14:24:14.862454'),(14,'깍뚜기','img/14.jpeg','반찬',10000,'2023-04-10 14:24:38.219251'),(15,'고추장','img/15.jpeg','반찬',12000,'2023-04-10 14:24:21.173251'),(16,'게장','img/16.jpeg','반찬',20000,'2023-04-10 14:24:26.850835'),(17,'된장국','img/17.jpeg','된장국',8000,'2023-04-10 14:24:30.672705'),(18,'호박','img/18.jpeg','채소',12000,'2023-04-10 14:24:35.053926'),(19,'계란찜','img/19.jpeg','반찬',7000,'2023-04-10 14:24:51.925492'),(20,'짜장면','img/20.jpeg','분식',8500,'2023-04-10 14:25:33.222271');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-15 12:24:51
