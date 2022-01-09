-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: lol_mach_history
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `champions`
--

DROP TABLE IF EXISTS `champions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `champions` (
  `cha_id` int NOT NULL AUTO_INCREMENT,
  `cha_name` text NOT NULL,
  PRIMARY KEY (`cha_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `champions`
--

LOCK TABLES `champions` WRITE;
/*!40000 ALTER TABLE `champions` DISABLE KEYS */;
INSERT INTO `champions` VALUES (1,'Aatrox'),(2,'Ahri'),(3,'Akali'),(4,'Akshan'),(5,'Alistar'),(6,'Amumu'),(7,'Anivia'),(8,'Annie'),(9,'Aphelios'),(10,'Ashe'),(11,'Aurelion Sol'),(12,'Azir'),(13,'Bard'),(14,'Blitzcrank'),(15,'Brand'),(16,'Braum'),(17,'Caitlyn'),(18,'Camille'),(19,'Cassiopeia'),(20,'Cho’Gath'),(21,'Corki'),(22,'Darius'),(23,'Diana'),(24,'Dr. Mundo'),(25,'Draven'),(26,'Ekko'),(27,'Elise'),(28,'Evelynn'),(29,'Ezreal'),(30,'Fiddlesticks'),(31,'Fiora'),(32,'Fizz'),(33,'Galio'),(34,'Gangplank'),(35,'Garen'),(36,'Gnar'),(37,'Gragas'),(38,'Graves'),(39,'Gwen'),(40,'Hecarim'),(41,'Heimerdinger'),(42,'Illaoi'),(43,'Irelia'),(44,'Ivern'),(45,'Janna'),(46,'Jarvan IV'),(47,'Jax'),(48,'Jayce'),(49,'Jhin'),(50,'Jinx'),(51,'Kai’Sa'),(52,'Kalista'),(53,'Karma'),(54,'Karthus'),(55,'Kassadin'),(56,'Katarina'),(57,'Kayle'),(58,'Kayn'),(59,'Kennen'),(60,'Kha’Zix'),(61,'Kindred'),(62,'Kled'),(63,'Kog’Maw'),(64,'LeBlanc'),(65,'Lee Sin'),(66,'Leona'),(67,'Lillia'),(68,'Lissandra'),(69,'Lucian'),(70,'Lulu'),(71,'Lux'),(72,'Malphite'),(73,'Malzahar'),(74,'Maokai'),(75,'Master Yi'),(76,'Miss Fortune'),(77,'Mordekaiser'),(78,'Morgana'),(79,'Nami'),(80,'Nasus'),(81,'Nautilus'),(82,'Neeko'),(83,'Nidalee'),(84,'Nocturne'),(85,'Nunu and Willump'),(86,'Olaf'),(87,'Orianna'),(88,'Ornn'),(89,'Pantheon'),(90,'Poppy'),(91,'Pyke'),(92,'Qiyana'),(93,'Quinn'),(94,'Rakan'),(95,'Rammus'),(96,'Rek’Sai'),(97,'Rell'),(98,'Renekton'),(99,'Rengar'),(100,'Riven'),(101,'Rumble'),(102,'Ryze'),(103,'Samira'),(104,'Sejuani'),(105,'Senna'),(106,'Seraphine'),(107,'Sett'),(108,'Shaco'),(109,'Shen'),(110,'Shyvana'),(111,'Singed'),(112,'Sion'),(113,'Sivir'),(114,'Skarner'),(115,'Sona'),(116,'Soraka'),(117,'Swain'),(118,'Sylas'),(119,'Syndra'),(120,'Tahm Kench'),(121,'Taliyah'),(122,'Talon'),(123,'Taric'),(124,'Teemo'),(125,'Thresh'),(126,'Tristana'),(127,'Trundle'),(128,'Tryndamere'),(129,'Twisted Fate'),(130,'Twitch'),(131,'Udyr'),(132,'Urgot'),(133,'Varus'),(134,'Vayne'),(135,'Veigar'),(136,'Vel’Koz'),(137,'Vi'),(138,'Viego'),(139,'Viktor'),(140,'Vladimir'),(141,'Volibear'),(142,'Warwick'),(143,'Wukong'),(144,'Xayah'),(145,'Xerath'),(146,'Xin Zhao'),(147,'Yasuo'),(148,'Yone'),(149,'Yorick'),(150,'Yuumi'),(151,'Zac'),(152,'Zed'),(153,'Ziggs'),(154,'Zilean'),(155,'Zoe'),(156,'Zyra');
/*!40000 ALTER TABLE `champions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-09  1:44:41
