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
-- Table structure for table `historialdocente`
--

DROP TABLE IF EXISTS `historialdocente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historialdocente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Activo` varchar(15) DEFAULT NULL,
  `materia_id` int DEFAULT NULL,
  `grupo_id` tinyint DEFAULT NULL,
  `Persona_id` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK19EBEFA397DCFC07` (`materia_id`),
  CONSTRAINT `FK19EBEFA397DCFC07` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historialdocente`
--

LOCK TABLES `historialdocente` WRITE;
/*!40000 ALTER TABLE `historialdocente` DISABLE KEYS */;
INSERT INTO `historialdocente` (`id`, `Activo`, `materia_id`, `grupo_id`, `Persona_id`) VALUES (1,'1',100,4,101),(2,'1',99,4,102),(3,'1',98,4,103),(4,'1',97,4,104),(5,'1',96,4,105),(6,'1',40,31,101),(7,'1',39,31,102),(8,'1',38,31,103),(9,'1',37,31,104),(10,'1',36,31,105),(11,'1',35,34,101),(12,'1',34,34,102),(13,'1',33,34,103),(14,'1',32,34,104),(15,'1',31,34,105),(16,'1',100,41,101),(17,'1',99,41,102),(18,'1',98,41,103),(19,'1',97,41,104),(20,'1',96,41,105),(21,'1',90,52,101),(22,'1',89,52,102),(23,'1',88,52,103),(24,'1',87,52,104),(25,'1',86,52,105);
/*!40000 ALTER TABLE `historialdocente` ENABLE KEYS */;
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
