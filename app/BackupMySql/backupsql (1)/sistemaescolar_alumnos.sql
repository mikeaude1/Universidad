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
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Matricula` varchar(5) DEFAULT NULL,
  `Persona_id` int DEFAULT NULL,
  `Activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `personas_idx` (`Persona_id`)
) ENGINE=InnoDB AUTO_INCREMENT=420 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` (`id`, `Matricula`, `Persona_id`, `Activo`) VALUES (1,'00124',1,1),(2,'00278',2,1),(3,'00327',3,1),(4,'00495',4,1),(5,'00524',5,1),(6,'00682',6,1),(7,'00780',7,1),(8,'00850',8,1),(9,'00960',9,1),(10,'01063',10,1),(11,'01179',11,1),(12,'01223',12,1),(13,'01365',13,1),(14,'01472',14,1),(15,'01597',15,1),(16,'01682',16,1),(17,'01761',17,1),(18,'01812',18,1),(19,'01995',19,1),(20,'02079',20,1),(21,'02116',21,1),(22,'00221',22,1),(23,'02392',23,1),(24,'02427',24,1),(25,'02548',25,1),(26,'02688',26,1),(27,'02719',27,1),(28,'02831',28,1),(29,'02991',29,1),(30,'03030',30,1),(31,'03151',31,1),(32,'03262',32,1),(33,'03365',33,1),(34,'03421',34,1),(35,'03593',35,1),(36,'03692',36,1),(37,'03716',37,1),(38,'03878',38,1),(39,'03943',39,1),(40,'00405',40,1),(41,'04120',41,1),(42,'04249',42,1),(43,'04341',43,1),(44,'04476',44,1),(45,'04576',45,1),(46,'00463',46,1),(47,'04713',47,1),(48,'00487',48,1),(49,'04946',49,1),(50,'05029',50,1),(51,'05167',51,1),(52,'05297',52,1),(53,'05365',53,1),(54,'05447',54,1),(55,'05594',55,1),(56,'05669',56,1),(57,'05780',57,1),(58,'05890',58,1),(59,'05986',59,1),(60,'06089',60,1),(61,'06119',61,1),(62,'06285',62,1),(63,'06382',63,1),(64,'00645',64,1),(65,'06539',65,1),(66,'06674',66,1),(67,'06719',67,1),(68,'00686',68,1),(69,'06911',69,1),(70,'07031',70,1),(71,'07196',71,1),(72,'07249',72,1),(73,'07369',73,1),(74,'07477',74,1),(75,'07516',75,1),(76,'07653',76,1),(77,'07779',77,1),(78,'07858',78,1),(79,'07930',79,1),(80,'08054',80,1),(81,'08175',81,1),(82,'08256',82,1),(83,'08337',83,1),(84,'08413',84,1),(85,'08523',85,1),(86,'08634',86,1),(87,'08776',87,1),(88,'08835',88,1),(89,'08972',89,1),(90,'09082',90,1),(91,'09173',91,1),(92,'00928',92,1),(93,'09341',93,1),(94,'09486',94,1),(95,'09593',95,1),(96,'09689',96,1),(97,'09747',97,1),(98,'09839',98,1),(99,'09973',99,1),(100,'10081',100,1),(101,'01010',101,1),(102,'10224',102,1),(103,'10313',103,1),(104,'10447',104,1),(105,'10595',105,1),(106,'10680',106,1),(107,'10734',107,1),(111,'16029',113,1),(112,'16029',114,1),(113,'16030',115,1),(114,'16130',116,1),(115,'16290',117,1),(116,'16209',118,1),(117,'50629',119,1),(118,'16522',120,1),(119,'15311',121,1),(120,'42554',122,1),(121,'56641',123,1),(122,'65423',124,1),(123,'92211',125,1),(124,'30520',126,1),(125,'32181',127,1),(126,'32100',128,1),(127,'45222',129,1),(128,'21212',130,1),(129,'21454',131,1),(130,'24444',132,1),(131,'65222',133,1),(132,'32222',134,1),(133,'12220',135,1),(134,'15115',136,1),(135,'33221',137,1),(136,'55221',138,1),(137,'01142',139,1),(138,'35548',140,1),(139,'12253',141,1),(140,'55400',142,1),(141,'15003',143,1),(142,'80000',144,1),(143,'35000',145,1),(144,'10557',146,1),(145,'16029',147,1),(146,'16029',148,1),(147,'16029',149,1),(148,'16029',150,1),(149,'16029',151,1),(150,'16029',152,1),(151,'16029',153,1),(152,'16029',154,1),(153,'16029',155,1),(154,'16029',156,1),(155,'16029',157,1),(156,'16029',158,1),(157,'16029',159,1),(158,'16029',160,1),(159,'16029',161,1),(160,'16029',162,1),(161,'16029',163,1),(162,'16029',164,1),(163,'16029',165,1),(173,'16029',175,1),(176,'16029',178,1),(179,'16029',181,1),(180,'16029',182,1),(181,'16029',183,1),(182,'16029',184,1),(183,'16029',185,1),(184,'16029',186,1),(185,'16029',187,1),(186,'16029',188,1),(187,'16029',189,1),(188,'18440',190,1),(189,'18440',191,1),(192,'11111',194,1),(193,'22222',195,1),(194,'22222',196,1),(195,'98765',197,1),(197,'16077',199,1),(406,'16088',226,1),(407,'16099',222,1),(410,'19022',221,1),(412,'17022',221,1),(413,'86022',221,1),(414,'56022',221,1),(415,'46022',238,1),(416,'96022',228,1),(417,'12332',227,1),(418,'16322',221,1),(419,'16322',235,1);
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
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
