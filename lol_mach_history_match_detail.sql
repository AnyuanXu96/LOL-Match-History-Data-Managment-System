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
-- Table structure for table `match_detail`
--

DROP TABLE IF EXISTS `match_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `match_detail` (
  `md_id` int NOT NULL AUTO_INCREMENT,
  `md_creation` datetime NOT NULL,
  `md_mode` int NOT NULL,
  `mapId` int NOT NULL,
  `duration` int DEFAULT NULL,
  PRIMARY KEY (`md_id`),
  KEY `mapId_idx` (`mapId`),
  KEY `md_mode_idx` (`md_mode`),
  CONSTRAINT `mapId` FOREIGN KEY (`mapId`) REFERENCES `map` (`map_id`) ON UPDATE RESTRICT,
  CONSTRAINT `md_mode` FOREIGN KEY (`md_mode`) REFERENCES `gamemode` (`gm_id`) ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_detail`
--

LOCK TABLES `match_detail` WRITE;
/*!40000 ALTER TABLE `match_detail` DISABLE KEYS */;
INSERT INTO `match_detail` VALUES (1,'2021-08-01 00:00:00',1,2,24),(2,'2021-08-01 00:00:00',3,2,35),(3,'2021-08-01 00:00:00',4,2,41),(4,'2021-08-01 00:00:00',3,1,35),(5,'2021-08-01 00:00:00',2,2,31),(6,'2021-08-01 00:00:00',3,1,29),(7,'2021-08-01 00:00:00',3,1,27),(8,'2021-08-01 00:00:00',3,1,23),(9,'2021-08-01 00:00:00',2,2,20),(10,'2021-08-01 00:00:00',5,1,16),(11,'2021-08-01 00:00:00',2,2,19),(12,'2021-08-01 00:00:00',5,2,23),(13,'2021-08-01 00:00:00',5,1,21),(14,'2021-08-01 00:00:00',1,2,27),(15,'2021-08-01 00:00:00',3,2,31),(16,'2021-08-01 00:00:00',1,1,38),(17,'2021-08-01 00:00:00',2,1,25),(18,'2021-08-01 00:00:00',4,1,28),(19,'2021-08-01 00:00:00',5,1,29),(20,'2021-08-01 00:00:00',3,1,20),(21,'2021-08-01 00:00:00',5,1,19),(22,'2021-08-01 00:00:00',3,1,34),(23,'2021-08-01 00:00:00',3,2,25),(24,'2021-08-01 00:00:00',3,2,27),(25,'2021-08-01 00:00:00',4,1,35),(26,'2021-08-01 00:00:00',3,2,26),(27,'2021-08-01 00:00:00',3,1,24),(28,'2021-08-01 00:00:00',5,1,38),(29,'2021-08-01 00:00:00',2,2,30),(30,'2021-08-01 00:00:00',4,1,23),(31,'2021-08-01 00:00:00',2,2,18),(32,'2021-08-01 00:00:00',5,1,23),(33,'2021-08-01 00:00:00',3,2,29),(34,'2021-08-01 00:00:00',5,1,26),(35,'2021-08-01 00:00:00',1,1,24),(36,'2021-08-01 00:00:00',2,2,22),(37,'2021-08-01 00:00:00',4,2,25),(38,'2021-08-01 00:00:00',1,2,24),(39,'2021-08-01 00:00:00',1,2,20),(40,'2021-08-01 00:00:00',1,1,19),(41,'2021-08-01 00:00:00',2,2,36),(42,'2021-08-01 00:00:00',2,1,38),(43,'2021-08-01 00:00:00',2,1,26),(44,'2021-08-01 00:00:00',5,1,23),(45,'2021-08-01 00:00:00',2,1,24),(46,'2021-08-01 00:00:00',2,1,27),(47,'2021-08-01 00:00:00',3,2,36),(48,'2021-08-01 00:00:00',4,2,50),(49,'2021-08-01 00:00:00',4,2,32),(50,'2021-08-01 00:00:00',5,1,21),(51,'2021-08-01 00:00:00',1,1,24),(52,'2021-08-02 00:00:00',3,1,25),(53,'2021-08-01 00:00:00',3,2,23),(54,'2021-08-01 00:00:00',5,1,26),(55,'2021-08-01 00:00:00',4,2,27),(56,'2021-08-01 00:00:00',4,2,24),(57,'2021-08-01 00:00:00',2,1,21),(58,'2021-08-01 00:00:00',4,1,29),(59,'2021-08-01 00:00:00',4,2,25),(60,'2021-08-01 00:00:00',3,2,27),(61,'2021-08-01 00:00:00',3,1,18),(62,'2021-08-01 00:00:00',4,2,14),(63,'2021-08-01 00:00:00',3,2,26),(64,'2021-08-01 00:00:00',2,1,24),(65,'2021-08-01 00:00:00',2,2,27),(66,'2021-08-01 00:00:00',4,2,22),(67,'2021-08-01 00:00:00',5,1,24),(68,'2021-08-01 00:00:00',3,2,27),(69,'2021-08-01 00:00:00',5,2,37),(70,'2021-08-01 00:00:00',3,1,33),(71,'2021-08-01 00:00:00',3,2,24),(72,'2021-08-01 00:00:00',4,2,36),(73,'2021-08-01 00:00:00',3,1,21),(74,'2021-08-01 00:00:00',5,2,19),(75,'2021-08-01 00:00:00',3,2,26),(76,'2021-08-01 00:00:00',3,1,26),(77,'2021-08-01 00:00:00',4,2,24),(78,'2021-08-01 00:00:00',2,2,34),(79,'2021-08-01 00:00:00',4,1,31),(80,'2021-08-01 00:00:00',5,2,27),(81,'2021-08-01 00:00:00',3,2,22),(82,'2021-08-01 00:00:00',2,1,29),(83,'2021-08-01 00:00:00',4,2,28),(84,'2021-08-01 00:00:00',2,1,21),(85,'2021-08-01 00:00:00',1,2,17),(86,'2021-08-01 00:00:00',1,1,12),(87,'2021-08-01 00:00:00',3,2,25),(88,'2021-08-01 00:00:00',1,1,29),(89,'2021-08-01 00:00:00',1,2,21),(90,'2021-08-01 00:00:00',4,2,23),(91,'2021-08-01 00:00:00',5,1,26),(92,'2021-08-01 00:00:00',5,2,28),(93,'2021-08-01 00:00:00',2,2,24),(94,'2021-08-01 00:00:00',3,1,22),(95,'2021-08-01 00:00:00',3,2,30),(96,'2021-08-01 00:00:00',4,2,31),(97,'2021-08-01 00:00:00',1,1,19),(98,'2021-08-01 00:00:00',1,2,23),(99,'2021-08-01 00:00:00',1,2,26),(100,'2021-08-01 00:00:00',1,1,27);
/*!40000 ALTER TABLE `match_detail` ENABLE KEYS */;
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
