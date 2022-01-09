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
-- Table structure for table `matchlist`
--

DROP TABLE IF EXISTS `matchlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matchlist` (
  `ml_id` int NOT NULL AUTO_INCREMENT,
  `summ_id` int NOT NULL,
  `match_id` int NOT NULL,
  PRIMARY KEY (`ml_id`),
  KEY `summ_id_idx` (`summ_id`),
  KEY `match_id_idx` (`match_id`),
  CONSTRAINT `match_id` FOREIGN KEY (`match_id`) REFERENCES `match_detail` (`md_id`) ON UPDATE RESTRICT,
  CONSTRAINT `summ_id` FOREIGN KEY (`summ_id`) REFERENCES `summonor` (`summ_id`) ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchlist`
--

LOCK TABLES `matchlist` WRITE;
/*!40000 ALTER TABLE `matchlist` DISABLE KEYS */;
INSERT INTO `matchlist` VALUES (1,5,34),(2,5,52),(3,5,42),(4,5,16),(5,5,53),(6,5,29),(7,5,66),(8,5,21),(9,5,37),(10,5,3),(11,3,18),(12,3,84),(13,3,28),(14,3,88),(15,3,17),(16,3,86),(17,3,32),(18,3,7),(19,3,3),(20,3,12),(21,10,24),(22,10,22),(23,10,70),(24,10,3),(25,10,40),(26,10,94),(27,10,39),(28,10,1),(29,10,55),(30,10,36),(31,8,31),(32,8,50),(33,8,68),(34,8,91),(35,8,34),(36,8,77),(37,8,21),(38,8,39),(39,8,3),(40,8,61),(41,2,38),(42,2,90),(43,2,74),(44,2,22),(45,2,20),(46,2,10),(47,2,58),(48,2,97),(49,2,15),(50,2,82),(51,6,82),(52,6,19),(53,6,90),(54,6,18),(55,6,62),(56,6,76),(57,6,17),(58,6,9),(59,6,2),(60,6,50),(61,4,25),(62,4,76),(63,4,69),(64,4,44),(65,4,11),(66,4,22),(67,4,70),(68,4,1),(69,4,7),(70,4,24),(71,1,46),(72,1,76),(73,1,12),(74,1,17),(75,1,10),(76,1,87),(77,1,4),(78,1,96),(79,1,13),(80,1,34),(81,7,21),(82,7,69),(83,7,2),(84,7,19),(85,7,67),(86,7,45),(87,7,99),(88,7,100),(89,7,73),(90,7,83),(91,9,64),(92,9,51),(93,9,36),(94,9,39),(95,9,22),(96,9,35),(97,9,57),(98,9,47),(99,9,87),(100,9,98);
/*!40000 ALTER TABLE `matchlist` ENABLE KEYS */;
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
