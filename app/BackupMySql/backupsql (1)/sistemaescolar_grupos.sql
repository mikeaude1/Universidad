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
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) DEFAULT NULL,
  `Periodo_id` int DEFAULT NULL,
  `grado_id` int DEFAULT NULL,
  `Turno_id` int DEFAULT NULL,
  `carrera_id` int DEFAULT NULL,
  `Plan_id` int DEFAULT NULL,
  `Activo` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7FA56D4A7737F` (`Plan_id`),
  KEY `FK7FA56D4AC48DC02D` (`Turno_id`),
  KEY `FK7FA56D4AAB7B530F` (`grado_id`),
  KEY `FK7FA56D4AFBC5DF56` (`Periodo_id`),
  KEY `FK7FA56D4AC5B90565` (`carrera_id`),
  CONSTRAINT `FK7FA56D4AAB7B530F` FOREIGN KEY (`grado_id`) REFERENCES `grados` (`id`),
  CONSTRAINT `FK7FA56D4AC48DC02D` FOREIGN KEY (`Turno_id`) REFERENCES `turnos` (`id`),
  CONSTRAINT `FK7FA56D4AC5B90565` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`),
  CONSTRAINT `FK7FA56D4AFBC5DF56` FOREIGN KEY (`Periodo_id`) REFERENCES `periodo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
INSERT INTO `grupos` (`id`, `nombre`, `Periodo_id`, `grado_id`, `Turno_id`, `carrera_id`, `Plan_id`, `Activo`) VALUES (1,'C522',1,5,2,4,8,1),(2,'C521',1,5,2,4,8,1),(3,'C512',1,5,1,4,8,1),(4,'C511',1,5,1,4,8,1),(5,'C422',1,4,2,4,8,1),(6,'C421',1,4,2,4,8,1),(7,'C412',1,4,1,4,8,1),(8,'C411',1,4,1,4,8,1),(9,'C322',1,3,2,4,8,1),(10,'C321',1,3,2,4,8,1),(11,'C312',1,3,1,4,8,1),(12,'C311',1,3,1,4,8,1),(13,'C222',1,2,2,4,8,1),(16,'C211',1,2,1,4,8,1),(17,'C122',1,1,2,4,8,1),(18,'C121',1,1,2,4,8,1),(19,'C112',1,1,1,4,8,1),(20,'C111',1,1,1,4,8,1),(21,'A522',1,5,2,3,6,1),(22,'A521',1,5,2,3,6,1),(23,'A512',1,5,1,3,6,1),(24,'A511',1,5,1,3,6,1),(25,'A422',1,4,2,3,6,1),(26,'A421',1,4,2,3,6,1),(27,'A412',1,4,1,3,6,1),(28,'A411',1,4,1,3,6,1),(29,'A322',1,3,2,3,6,1),(30,'A321',1,3,2,3,6,1),(31,'A312',1,3,1,3,6,1),(32,'A311',1,3,1,3,6,1),(33,'A222',1,2,2,3,6,1),(34,'A221',1,2,2,3,6,1),(35,'A212',1,2,1,3,6,1),(36,'A211',1,2,1,3,6,1),(37,'A122',1,1,2,3,6,1),(38,'A121',1,1,2,3,6,1),(39,'A112',1,1,1,3,6,1),(40,'A111',1,1,1,3,6,1),(41,'T522',1,5,2,2,4,1),(42,'T521',1,5,2,2,4,1),(43,'T512',1,5,1,2,4,1),(44,'T511',1,5,1,2,4,1),(45,'T422',1,4,2,2,4,1),(46,'T421',1,4,2,2,4,1),(47,'T412',1,4,1,2,4,1),(48,'T411',1,4,1,2,4,1),(49,'T322',1,3,2,2,4,1),(50,'T321',1,3,2,2,4,1),(51,'T312',1,3,1,2,4,1),(52,'T311',1,3,1,2,4,1),(53,'T222',1,2,2,2,4,1),(54,'T221',1,2,2,2,4,1),(55,'T212',1,2,1,2,4,1),(56,'T211',1,2,1,2,4,1),(57,'T122',1,1,2,2,4,1),(58,'T121',1,1,2,2,4,1),(59,'T112',1,1,1,2,4,1),(60,'T111',1,1,1,2,4,1),(61,'S522',1,5,2,1,2,1),(62,'S521',1,5,2,1,2,1),(63,'S512',1,5,1,1,2,1),(64,'S511',1,5,1,1,2,1),(65,'S422',1,4,2,1,2,1),(66,'S421',1,4,2,1,2,1),(67,'S412',1,4,1,1,2,1),(68,'S411',1,4,1,1,2,1),(69,'S322',1,3,2,1,2,1),(70,'S321',1,3,2,1,2,1),(71,'S312',1,3,1,1,2,1),(72,'S311',1,3,1,1,2,1),(73,'S222',1,2,2,1,2,1),(74,'S221',1,2,2,1,2,1),(75,'S212',1,2,1,1,2,1),(76,'S211',1,2,1,1,2,1),(77,'S122',1,1,2,1,2,1),(78,'S121',1,1,2,1,2,1),(79,'S112',1,1,1,1,2,1),(80,'S111',1,1,1,1,2,1),(83,'C212',2,2,1,4,8,1),(84,'C221',2,2,1,4,8,1);
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-11 15:49:02
