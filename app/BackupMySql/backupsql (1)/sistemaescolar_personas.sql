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
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Activo` tinyint DEFAULT NULL,
  `Nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ApellidoPaterno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ApellidoMaterno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` (`id`, `Activo`, `Nombre`, `ApellidoPaterno`, `ApellidoMaterno`) VALUES (1,1,'Miguel','Aude','Alcaraz'),(2,1,'Roberto ','Perez','Leal'),(3,0,'Juan','Fernandez','Acosta'),(4,0,'Alejandra','Molinar','Alcaraz'),(5,1,'Liliana','Betancourt','hernandez'),(6,1,'Miguel','Rosado','Lopez'),(7,1,'Miguel','Rosado','Lopez'),(8,1,'Monica','Torrez','Lopez'),(9,1,'Ramon','Gomez','Gomez'),(10,1,'Alejandra','Leal','Salas'),(11,1,'Cristina','Gomez','Salas'),(12,1,'Monica','Peres','Chaparro'),(13,1,'Julia','Torrez','Fernandez'),(14,1,'Cristina','Varela','Ramones'),(15,1,'Felipe','Chaparro','Chaparro'),(16,1,'Juan','Peres','Betancourt'),(17,1,'Gaby','Varela','Peres'),(18,1,'Erick','Torrez','Peres'),(19,1,'Julia','Gomez','Betancourt'),(20,1,'Felipe','Peres','Aude'),(21,1,'Fernando','Torrez','Leal'),(22,1,'Monica','Torrez','Peres'),(23,1,'Denisse','Varela','Varela'),(24,1,'Julia','Lopez','Aude'),(25,1,'Fernando','Peres','Rosado'),(26,1,'Gaby','Fernandez','Gomez'),(27,1,'Erick','Chaparro','Varela'),(28,1,'Cristina','Herrera','Lopez'),(29,1,'Elisa','Ramones','Torrez'),(30,1,'Monica','Lopez','Chaparro'),(31,1,'Gaby','Herrera','Chaparro'),(32,1,'Fernando','Herrera','Fernandez'),(33,1,'Fernando','Peres','Torrez'),(34,1,'Cristina','Salas','Torrez'),(35,1,'Juan','Lopez','Ramones'),(36,1,'Gaby','Ramones','Torrez'),(37,1,'Juan','Rosado','Fernandez'),(38,1,'Alejandra','Rosado','Rosado'),(39,1,'Miguel','Leal','Gomez'),(40,1,'Gaby','Salas','Varela'),(41,1,'Julia','Herrera','Peres'),(42,1,'Ramon','Chaparro','Leal'),(43,1,'Miguel','Betancourt','Herrera'),(44,1,'Erick','Leal','Torrez'),(45,1,'Monica','Leal','Ramones'),(46,1,'Ramon','Leal','Betancourt'),(47,1,'Juan','Torrez','Aude'),(48,1,'Juan','Fernandez','Fernandez'),(49,1,'Erick','Rosado','Salas'),(50,1,'Gaby','Salas','Fernandez'),(51,1,'Juan','Varela','Rosado'),(52,1,'Denisse','Ramones','Fernandez'),(53,1,'Gaby','Lopez','Rosado'),(54,1,'Fernando','Ramones','Lopez'),(55,1,'Monica','Fernandez','Gomez'),(56,1,'Ramon','Torrez','Fernandez'),(57,1,'Miguel','Salas','Leal'),(58,1,'Gaby','Salas','Rosado'),(59,1,'Alejandra','Leal','Aude'),(60,1,'Juan','Peres','Leal'),(61,1,'Miguel','Fernandez','Ramones'),(62,1,'Ramon','Betancourt','Leal'),(63,1,'Fernando','Herrera','Salas'),(64,1,'Miguel','Varela','Varela'),(65,1,'Elisa','Varela','Rosado'),(66,1,'Monica','Chaparro','Betancourt'),(67,1,'Julia','Peres','Rosado'),(68,1,'Denisse','Herrera','Fernandez'),(69,1,'Juan','Herrera','Torrez'),(70,1,'Cecilia','Salas','Betancourt'),(71,1,'Miguel','Chaparro','Lopez'),(72,1,'Fernando','Peres','Peres'),(73,1,'Alejandra','Torrez','Lopez'),(74,1,'Julia','Varela','Rosado'),(75,1,'Fernando','Betancourt','Ramones'),(76,1,'Cristina','Peres','Salas'),(77,1,'Felipe','Salas','Torrez'),(78,1,'Ramon','Aude','Ramones'),(79,1,'Felipe','Aude','Gomez'),(80,1,'Gaby','Rosado','Peres'),(81,1,'Cecilia','Torrez','Peres'),(82,1,'Ramon','Varela','Rosado'),(83,1,'Cristina','Fernandez','Ramones'),(84,1,'Miguel','Lopez','Salas'),(85,1,'Erick','Herrera','Salas'),(86,1,'Felipe','Betancourt','Salas'),(87,1,'Fernando','Varela','Varela'),(88,1,'Elisa','Chaparro','Torrez'),(89,1,'Miguel','Fernandez','Ramones'),(90,1,'Fernando','Salas','Fernandez'),(91,1,'Fernando','Leal','Salas'),(92,1,'Elisa','Ramones','Ramones'),(93,1,'Gaby','Herrera','Gomez'),(94,1,'Felipe','Betancourt','Varela'),(95,1,'Alejandra','Fernandez','Lopez'),(96,1,'Fernando','Peres','Betancourt'),(97,1,'Denisse','Herrera','Salas'),(98,1,'Denisse','Betancourt','Rosado'),(99,1,'Juan','Salas','Varela'),(100,1,'Cristina','Gomez','Chaparro'),(101,1,'Alberto','Dominguez','Acosta'),(102,1,'Patricia','Ferra','Gomez'),(103,1,'Rodrigo','Chavez','Alarcon'),(104,1,'Francisco','Villegas','Diaz'),(105,1,'Javier','Carbajal','Baca'),(108,1,'Juan','Pérez','López'),(109,1,'Felipe','Calderón','Como se Apellida'),(113,1,'Felipe','Calderón','Como se Apellida'),(114,1,'Felipe','Calderón','Como se Apellida'),(115,1,'Felipe','Calderón','Como se Apellida'),(116,1,'Felipe','Calderón','Como se Apellida'),(117,1,'Felipe','Calderón','Como se Apellida'),(118,1,'Felipe','Calderón','Como se Apellida'),(119,1,'Felipe','Calderón','Como se Apellida'),(120,1,'Felipe','Calderón','Como se Apellida'),(121,1,'Felipe','Calderón','Como se Apellida'),(122,1,'Felipe','Calderón','Como se Apellida'),(123,1,'Felipe','Calderón','Como se Apellida'),(124,1,'Felipe','Calderón','Como se Apellida'),(125,1,'Felipe','Calderón','Como se Apellida'),(126,1,'Felipe','Calderón','Como se Apellida'),(127,1,'Felipe','Calderón','Como se Apellida'),(128,1,'Felipe','Calderón','Como se Apellida'),(129,1,'Felipe','Calderón','Como se Apellida'),(130,1,'Felipe','Calderón','Como se Apellida'),(131,1,'Felipe','Calderón','Como se Apellida'),(132,1,'Felipe','Calderón','Como se Apellida'),(133,1,'Felipe','Calderón','Como se Apellida'),(134,1,'Felipe','Calderón','Como se Apellida'),(135,1,'Felipe','Calderón','Como se Apellida'),(136,1,'Felipe','Calderón','Como se Apellida'),(137,1,'Felipe','Calderón','Como se Apellida'),(138,1,'Felipe','Calderón','Como se Apellida'),(139,1,'Felipe','Calderón','Como se Apellida'),(140,1,'Felipe','Calderón','Como se Apellida'),(141,1,'Felipe','Calderón','Como se Apellida'),(142,1,'Felipe','Calderón','Como se Apellida'),(143,1,'Felipe','Calderón','Como se Apellida'),(144,1,'Felipe','Calderón','Como se Apellida'),(145,1,'Felipe','Calderón','Como se Apellida'),(146,1,'Felipe','Calderón','Como se Apellida'),(147,1,'Felipe','Calderón','Como se Apellida'),(148,1,'Felipe','Calderón','Como se Apellida'),(149,1,'Felipe','Calderón','Como se Apellida'),(150,1,'Felipe','Calderón','Como se Apellida'),(151,1,'Felipe','Calderón','Como se Apellida'),(152,1,'Felipe','Calderón','Como se Apellida'),(153,1,'Felipe','Calderón','Como se Apellida'),(154,1,'Felipe','Calderón','Como se Apellida'),(155,1,'Felipe','Calderón','Como se Apellida'),(156,1,'Felipe','Calderón','Como se Apellida'),(157,1,'Felipe','Calderón','Como se Apellida'),(158,1,'Felipe','Calderón','Como se Apellida'),(159,1,'Felipe','Calderón','Como se Apellida'),(160,1,'Felipe','Calderón','Como se Apellida'),(161,1,'Felipe','Calderón','Como se Apellida'),(162,1,'Felipe','Calderón','Como se Apellida'),(163,1,'Felipe','Calderón','Como se Apellida'),(164,1,'Felipe','Calderón','Como se Apellida'),(165,1,'Felipe','Calderón','Como se Apellida'),(175,1,'Enrique','Pompa','Pompa'),(178,1,'Enrique','Pompa','Pompa'),(181,1,'Enrique','Pompa','Pompa'),(182,1,'Enrique','Pompa','Pompa'),(183,1,'Enrique','Pompa','Pompa'),(184,1,'Enrique','Pompa','Pompa'),(185,1,'Enrique','Pompa','Pompa'),(186,1,'Enrique','Pompa','Pompa'),(187,1,'Enrique','Pompa','Pompa'),(188,1,'Enrique','Pompa','Pompa'),(189,1,'Juan','Camaney','Pompa'),(190,1,'Sergio','Andrade','Arbisu'),(191,1,'Sergio','Andrade','Arbisu'),(194,1,'tania','torreas','heredia'),(195,1,'tania','torres','heredia'),(196,1,'tania','torres','heredia'),(197,1,'miguel','aude','otroapellidoquenomese'),(199,1,'miguel','aude','gomez'),(220,1,'Adrian','Uribe','Gomez'),(221,1,'Zacarias','Aude','Gomez'),(222,1,'Monica','Guerrero','Fuentes'),(223,1,'Jose Luis','Erives','Chacon'),(224,1,'Ricardo','Villanueva','Gonzales'),(225,1,'Ricarda','Varela','Vallez'),(226,1,'Evelin','lopez','Chabelo'),(227,1,'Karina','Manriquez','Rey'),(228,1,'Alejandra','Molinar','Smith'),(229,1,'Hector','Tarso','Swatsenegeer'),(230,1,'Paul','Aguilera','Anguiano'),(231,1,'Jesus','Aude','Alcaraz'),(232,1,'Humberto','Valdez','Madrid'),(233,1,'Remedios','Salas','Platas'),(234,1,'Jaime','Iman','Ruiz'),(235,1,'Daniela','Acosta','Acosta'),(236,1,'Patricia','Peinado','Enriquez'),(237,1,'JUAN','ENRIIQUEZ','CHAVEZ'),(238,1,'miguel','aude','alcaraz'),(243,1,'Pedro','peralta','infante'),(252,1,'juanB','molinar','perez');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
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
