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
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Activo` tinyint DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` (`id`, `Activo`, `Nombre`) VALUES (1,1,'Matemáticas'),(2,1,'Física'),(3,1,'Química'),(4,1,'Biología'),(5,1,'Historia'),(6,1,'Geografía'),(7,1,'Lengua y Literatura'),(8,1,'Inglés'),(9,1,'Programación'),(10,1,'Economía'),(11,1,'Filosofía'),(12,1,'Arte'),(13,1,'Música'),(14,1,'Educación Física'),(15,1,'Psicología'),(16,1,'Sociología'),(17,1,'Dibujo Técnico'),(18,1,'Ciencias Sociales'),(19,1,'Ciencias Naturales'),(20,1,'Cálculo'),(21,1,'Estadística'),(22,1,'Álgebra'),(23,1,'Informática'),(24,1,'Administración de Empresas'),(25,1,'Contabilidad'),(26,1,'Derecho'),(27,1,'Medicina'),(28,1,'Enfermería'),(29,1,'Odontología'),(30,1,'Farmacia'),(31,1,'Nutrición'),(32,1,'Ingeniería Civil'),(33,1,'Ingeniería Informática'),(34,1,'Ingeniería Mecánica'),(35,1,'Ingeniería Eléctrica'),(36,1,'Ingeniería Química'),(37,1,'Arquitectura'),(38,1,'Periodismo'),(39,1,'Publicidad'),(40,1,'Relaciones Públicas'),(41,1,'Turismo'),(42,1,'Marketing'),(43,1,'Finanzas'),(44,1,'Recursos Humanos'),(45,1,'Gastronomía'),(46,1,'Veterinaria'),(47,1,'Agronomía'),(48,1,'Ciencias Políticas'),(49,1,'Antropología'),(50,1,'Arqueología'),(51,1,'Bellas Artes'),(52,1,'Ciencias de la Comunicación'),(53,1,'Geología'),(54,1,'Meteorología'),(55,1,'Oceanografía'),(56,1,'Biotecnología'),(57,1,'Fisioterapia'),(58,1,'Terapia Ocupacional'),(59,1,'Psicopedagogía'),(60,1,'Pedagogía'),(61,1,'Trabajo Social'),(62,1,'Bibliotecología'),(63,1,'Religión'),(64,1,'Astronomía'),(65,1,'Genética'),(66,1,'Microbiología'),(67,1,'Bioquímica'),(68,1,'Zoología'),(69,1,'Botánica'),(70,1,'Ecología'),(71,1,'Idiomas'),(72,1,'Traducción e Interpretación'),(73,1,'Deportes'),(74,1,'Danza'),(75,1,'Moda'),(76,1,'Literatura Comparada'),(77,1,'Estudios de Género'),(78,1,'Historia del Arte'),(79,1,'Neurociencia'),(80,1,'Criminología'),(81,1,'Inteligencia Artificial'),(82,1,'Robótica'),(83,1,'Ingeniería de Software'),(84,1,'Diseño de Software'),(85,1,'Bases de Datos'),(86,1,'Estructuras de Datos'),(87,1,'Diseño de Algoritmos'),(88,1,'Lenguajes de Programación'),(89,1,'Desarrollo Web'),(90,1,'Desarrollo de Aplicaciones Móviles'),(91,1,'Arquitectura de Software'),(92,1,'Ciberseguridad'),(93,1,'Inteligencia Artificial'),(94,1,'Computación en la Nube'),(95,1,'Filología'),(96,1,'Geodesia'),(97,1,'Ingeniería Biomédica'),(98,1,'Óptica'),(99,1,'Geopolítica'),(100,1,'Astrofísica');
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
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
