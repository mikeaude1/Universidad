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
-- Table structure for table `planestudiocarreras`
--

DROP TABLE IF EXISTS `planestudiocarreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planestudiocarreras` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Activo` tinyint DEFAULT NULL,
  `Carrera_id` int DEFAULT NULL,
  `PlanEstudio_id` int DEFAULT NULL,
  `Vigente` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `planestudio_idx` (`PlanEstudio_id`),
  KEY `FKD70722CFC5B90565` (`Carrera_id`),
  CONSTRAINT `FKD70722CFC5B90565` FOREIGN KEY (`Carrera_id`) REFERENCES `carreras` (`id`),
  CONSTRAINT `planestudio` FOREIGN KEY (`PlanEstudio_id`) REFERENCES `planestudio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planestudiocarreras`
--

LOCK TABLES `planestudiocarreras` WRITE;
/*!40000 ALTER TABLE `planestudiocarreras` DISABLE KEYS */;
INSERT INTO `planestudiocarreras` (`id`, `Activo`, `Carrera_id`, `PlanEstudio_id`, `Vigente`) VALUES (1,1,1,1,1),(2,1,1,2,1),(3,1,2,3,1),(4,1,2,4,1),(5,1,3,5,1),(6,1,3,6,1),(7,1,4,7,1),(8,1,4,8,1);
/*!40000 ALTER TABLE `planestudiocarreras` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-11 15:49:05
