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
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Activo` bit(1) NOT NULL,
  `Elmento` varchar(255) DEFAULT NULL,
  `Icono` varchar(255) DEFAULT NULL,
  `Ruta` varchar(255) DEFAULT NULL,
  `Perfil_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK46CA6D4D1815B0C` (`Perfil_id`),
  CONSTRAINT `FK46CA6D4D1815B0C` FOREIGN KEY (`Perfil_id`) REFERENCES `perfiles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `Activo`, `Elmento`, `Icono`, `Ruta`, `Perfil_id`) VALUES (1,_binary '','Calificaciones','icon-stats-up','/Profesor/Calificaciones',2),(2,_binary '','Buscar Alumno','icon-search','/Escolares/Buscaralumno',1),(3,_binary '','Registro de Aspirantes','icon-home','/Escolares/Registroaspirantes',1),(4,_binary '','Inscribir Alumno','icon-clipboard-2','/Escolares/Inscribiralumno',1),(5,_binary '','Expediente','icon-diary','/Escolares/Expediente',1),(6,_binary '','Administrador','icon-locked-2','/Interno/Administrador',3),(7,_binary '','Crear Usuario',' icon-cc-by','/Interno/Crearusuario',3),(8,_binary '','Perfil de Usuario',' icon-newspaper','/Interno/Perfilusuario',3),(9,_binary '','Lista de Usuarios','icon-user','/Interno/Listausuarios',3);
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
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
