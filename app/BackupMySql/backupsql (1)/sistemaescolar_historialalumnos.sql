CREATE DATABASE  IF NOT EXISTS `sistemaescolar` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sistemaescolar`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: sistemaescolar
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `historialalumnos`
--

DROP TABLE IF EXISTS `historialalumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historialalumnos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Activo` varchar(15) DEFAULT NULL,
  `grupo_id` int DEFAULT NULL,
  `alumno_id` int DEFAULT NULL,
  `Periodo_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `alumno_idx` (`alumno_id`),
  KEY `periodos_idx` (`Periodo_id`),
  CONSTRAINT `alumno` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`),
  CONSTRAINT `periodos` FOREIGN KEY (`Periodo_id`) REFERENCES `periodo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historialalumnos`
--

LOCK TABLES `historialalumnos` WRITE;
/*!40000 ALTER TABLE `historialalumnos` DISABLE KEYS */;
INSERT INTO `historialalumnos` (`id`, `Activo`, `grupo_id`, `alumno_id`, `Periodo_id`) VALUES (1,'1',4,16,1),(2,'1',4,86,1),(3,'1',4,57,1),(4,'1',4,51,1),(5,'1',4,96,1),(6,'1',4,38,1),(7,'1',4,82,1),(8,'1',4,17,1),(9,'1',4,92,1),(10,'1',4,75,1),(11,'1',41,34,1),(12,'1',41,93,1),(13,'1',41,30,1),(14,'1',41,74,1),(15,'1',41,46,1),(16,'1',41,95,1),(17,'1',41,58,1),(18,'1',41,21,1),(19,'1',41,98,1),(20,'1',41,15,1),(21,'1',52,90,1),(22,'1',52,1,1),(23,'1',52,2,1),(24,'1',52,42,1),(25,'1',52,18,1),(26,'1',52,14,1),(27,'1',52,41,1),(28,'1',52,6,1),(29,'1',52,3,1),(30,'1',52,91,1),(31,'1',34,13,1),(32,'1',34,11,1),(33,'1',34,33,1),(34,'1',34,99,1),(35,'1',34,34,1),(36,'1',34,80,1),(37,'1',34,43,1),(38,'1',34,32,1),(39,'0',69,34,1),(40,'1',34,52,1),(41,'1',31,76,1),(42,'1',31,31,1),(43,'1',31,24,1),(44,'1',31,66,1),(45,'1',31,97,1),(46,'1',31,60,1),(47,'1',31,88,1),(48,'1',31,48,1),(49,'1',31,22,1),(50,'1',31,61,1),(51,'1',69,30,2),(52,'1',69,46,2),(53,'1',69,52,NULL),(54,'1',69,57,2),(55,'1',69,2,2),(62,'1',10,4,1),(76,'1',4,111,2),(77,'1',4,112,2),(78,'1',4,113,2),(79,'1',4,114,2),(80,'1',4,115,2),(81,'1',4,116,2),(82,'1',4,117,2),(83,'1',4,118,2),(84,'1',4,119,2),(85,'1',4,120,2),(86,'1',4,121,2),(87,'1',4,122,2),(88,'1',4,123,2),(89,'1',4,124,2),(90,'1',4,125,2),(91,'1',4,126,2),(92,'1',4,127,2),(93,'1',4,128,2),(94,'1',4,129,2),(95,'1',4,130,2),(96,'1',4,131,2),(97,'1',4,132,2),(98,'1',4,133,2),(99,'1',4,134,2),(100,'1',4,135,2),(101,'1',4,136,2),(102,'1',4,137,2),(103,'1',4,138,2),(104,'1',4,139,2),(105,'1',4,140,2),(106,'1',4,141,2),(107,'1',4,142,2),(108,'1',4,143,2),(109,'1',4,144,2),(110,'1',4,145,2),(111,'1',4,146,2),(112,'1',4,147,2),(113,'1',4,148,2),(114,'1',4,149,2),(115,'1',4,150,2),(116,'1',4,151,2),(117,'1',4,152,2),(118,'1',4,153,2),(119,'1',4,154,2),(120,'1',4,155,2),(121,'1',4,156,2),(122,'1',4,157,2),(123,'1',4,158,2),(124,'1',4,159,2),(125,'1',4,160,2),(126,'1',4,161,2),(127,'1',4,162,2),(128,'1',4,163,2),(138,'1',4,173,2),(141,'1',4,176,2),(144,'1',4,179,2),(145,'1',4,180,2),(146,'1',4,181,2),(147,'1',4,182,2),(148,'1',4,183,2),(149,'1',4,184,2),(150,'1',4,185,2),(151,'1',4,186,2),(152,'1',4,187,2),(153,'1',4,188,2),(154,'1',4,189,2),(156,'1',15,192,2),(157,'1',1,193,1),(158,'1',1,194,1),(159,'1',10,195,2),(161,'1',17,197,1),(177,'1',66,406,1),(178,'1',29,407,1),(181,'1',27,410,1),(183,'1',27,412,1),(184,'1',27,413,1),(185,'1',27,414,1),(186,'1',54,415,1),(187,'1',68,416,1),(188,'1',69,417,1),(189,'1',39,418,1),(190,'11',10,4,1),(195,'0',54,34,1),(196,'0',51,34,1),(197,'1',35,28,1),(198,'0',74,34,1),(199,'1',55,34,1),(200,'0',53,34,1),(201,'0',60,34,1),(202,'0',28,34,1),(203,'0',52,34,1),(204,'1',76,50,1),(205,'1',12,78,1),(206,'0',72,33,1),(207,'1',53,419,1),(208,'1',75,14,1);
/*!40000 ALTER TABLE `historialalumnos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-11 15:49:04
