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
-- Table structure for table `historialmateria`
--

DROP TABLE IF EXISTS `historialmateria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historialmateria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Activo` varchar(15) DEFAULT NULL,
  `HistorialAlumno_id` int DEFAULT NULL,
  `Materia_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKDF0FC976F30DFBEB` (`HistorialAlumno_id`),
  KEY `FKDF0FC97697DCFC07` (`Materia_id`),
  CONSTRAINT `FKDF0FC97697DCFC07` FOREIGN KEY (`Materia_id`) REFERENCES `materias` (`id`),
  CONSTRAINT `FKDF0FC976F30DFBEB` FOREIGN KEY (`HistorialAlumno_id`) REFERENCES `historialalumnos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historialmateria`
--

LOCK TABLES `historialmateria` WRITE;
/*!40000 ALTER TABLE `historialmateria` DISABLE KEYS */;
INSERT INTO `historialmateria` (`id`, `Activo`, `HistorialAlumno_id`, `Materia_id`) VALUES (2,'1',11,100),(3,'1',12,100),(4,'1',13,100),(5,'1',14,100),(6,'1',15,100),(7,'1',16,100),(8,'1',17,100),(9,'1',18,100),(10,'1',19,100),(11,'1',20,100),(12,'1',11,99),(13,'1',12,99),(14,'1',13,99),(15,'1',14,99),(16,'1',15,99),(17,'1',16,99),(18,'1',17,99),(19,'1',18,99),(20,'1',19,99),(21,'1',20,99),(22,'1',11,98),(23,'1',12,98),(24,'1',13,98),(25,'1',14,98),(26,'1',15,98),(27,'1',16,98),(28,'1',17,98),(29,'1',18,98),(30,'1',19,98),(31,'1',20,98),(32,'1',11,97),(33,'1',12,97),(34,'1',13,97),(35,'1',14,97),(36,'1',15,97),(37,'1',16,97),(38,'1',17,97),(39,'1',18,97),(40,'1',19,97),(41,'1',20,97),(42,'1',11,96),(43,'1',12,96),(44,'1',13,96),(45,'1',14,96),(46,'1',15,96),(47,'1',16,96),(48,'1',17,96),(49,'1',18,96),(50,'1',19,96),(51,'1',20,96),(52,'1',62,90),(53,'1',62,89),(54,'1',62,88),(55,'1',62,87),(56,'1',62,86),(57,'1',62,86),(58,'1',62,90),(59,'1',62,89),(60,'1',62,88),(61,'1',62,87),(62,'1',62,86),(63,'1',177,45),(64,'1',177,44),(65,'1',177,43),(66,'1',177,42),(67,'1',177,41),(68,'1',177,45),(69,'1',177,44),(70,'1',177,43),(71,'1',177,42),(72,'1',177,41),(73,'1',178,40),(74,'1',178,39),(75,'1',178,38),(76,'1',178,37),(77,'1',178,36),(78,'1',178,40),(79,'1',178,39),(80,'1',178,38),(81,'1',178,37),(82,'1',178,36),(103,'1',181,45),(104,'1',181,44),(105,'1',181,43),(106,'1',181,42),(107,'1',181,41),(108,'1',181,45),(109,'1',181,44),(110,'1',181,43),(111,'1',181,42),(112,'1',181,41),(123,'1',183,45),(124,'1',183,44),(125,'1',183,43),(126,'1',183,42),(127,'1',183,41),(128,'1',183,45),(129,'1',183,44),(130,'1',183,43),(131,'1',183,42),(132,'1',183,41),(133,'1',184,45),(134,'1',184,44),(135,'1',184,43),(136,'1',184,42),(137,'1',184,41),(138,'1',184,45),(139,'1',184,44),(140,'1',184,43),(141,'1',184,42),(142,'1',184,41),(143,'1',185,45),(144,'1',185,44),(145,'1',185,43),(146,'1',185,42),(147,'1',185,41),(148,'1',185,45),(149,'1',185,44),(150,'1',185,43),(151,'1',185,42),(152,'1',185,41),(153,'1',186,85),(154,'1',186,84),(155,'1',186,83),(156,'1',186,82),(157,'1',186,81),(158,'1',186,85),(159,'1',186,84),(160,'1',186,83),(161,'1',186,82),(162,'1',186,81),(163,'1',187,45),(164,'1',187,44),(165,'1',187,43),(166,'1',187,42),(167,'1',187,41),(168,'1',187,45),(169,'1',187,44),(170,'1',187,43),(171,'1',187,42),(172,'1',187,41),(173,'1',188,40),(174,'1',188,39),(175,'1',188,38),(176,'1',188,37),(177,'1',188,36),(178,'1',188,40),(179,'1',188,39),(180,'1',188,38),(181,'1',188,37),(182,'1',188,36),(183,'1',189,30),(184,'1',189,29),(185,'1',189,28),(186,'1',189,27),(187,'1',189,26),(188,'1',189,30),(189,'1',189,29),(190,'1',189,28),(191,'1',189,27),(192,'1',189,26),(193,'1',96,100),(194,'1',207,85),(195,'1',207,84),(196,'1',207,83),(197,'1',207,82),(198,'1',207,81),(199,'1',207,85),(200,'1',207,84),(201,'1',207,83),(202,'1',207,82),(203,'1',207,81);
/*!40000 ALTER TABLE `historialmateria` ENABLE KEYS */;
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
