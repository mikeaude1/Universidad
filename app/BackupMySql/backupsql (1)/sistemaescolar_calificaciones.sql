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
-- Table structure for table `calificaciones`
--

DROP TABLE IF EXISTS `calificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificaciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Activo` varchar(15) DEFAULT NULL,
  `HistorialMateria_id` int DEFAULT NULL,
  `Calificacion` int DEFAULT NULL,
  `Unidad` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKD901408F4C26091E` (`HistorialMateria_id`),
  CONSTRAINT `FKD901408F4C26091E` FOREIGN KEY (`HistorialMateria_id`) REFERENCES `historialmateria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificaciones`
--

LOCK TABLES `calificaciones` WRITE;
/*!40000 ALTER TABLE `calificaciones` DISABLE KEYS */;
INSERT INTO `calificaciones` (`id`, `Activo`, `HistorialMateria_id`, `Calificacion`, `Unidad`) VALUES (1,'1',4,60,2),(2,'1',4,60,3),(7,'1',4,100,5),(8,'1',14,100,2),(9,'1',14,100,5),(10,'1',14,100,4),(11,'1',24,100,3),(12,'1',24,100,1),(13,'1',2,75,3),(14,'1',2,80,1),(15,'1',2,23,4),(16,'1',12,40,1),(17,'1',12,90,2),(18,'1',12,90,3),(19,'1',22,90,1),(20,'1',22,90,2),(21,'1',22,90,3),(22,'1',32,90,1),(23,'1',32,90,2),(24,'1',24,85,1),(25,'1',34,60,1),(26,'1',42,70,1),(27,'1',42,55,2),(28,'1',42,60,3),(29,'1',42,80,4),(30,'1',42,79,5),(45,'1',193,100,2),(47,'1',193,70,1),(48,'1',193,50,2),(49,'1',193,90,1),(50,'1',193,50,1),(51,'1',193,41,1),(52,'1',193,50,1),(53,'1',193,48,1),(54,'1',193,100,1),(55,'1',193,50,1),(56,'1',193,50,3),(57,'1',193,90,1),(58,'1',193,100,4),(59,'1',193,90,5),(60,'1',16,45,1),(61,'1',17,75,3),(62,'1',17,74,1),(63,'1',18,30,2),(64,'1',17,10,1),(65,'1',18,60,2),(66,'1',13,80,1),(67,'1',14,90,1),(68,'1',15,100,1),(69,'1',18,45,1),(70,'1',19,99,1),(71,'1',20,80,1),(72,'1',21,100,1),(73,'1',3,100,1),(74,'1',3,50,2),(75,'1',4,50,1),(76,'1',9,50,1),(77,'1',9,70,3),(78,'1',9,80,2),(79,'1',10,20,2);
/*!40000 ALTER TABLE `calificaciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-11 15:49:03
