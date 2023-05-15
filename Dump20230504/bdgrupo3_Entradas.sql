-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: grupo03.cln0upyn5isl.us-east-2.rds.amazonaws.com    Database: bdgrupo3
-- ------------------------------------------------------
-- Server version	8.0.32

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `Entradas`
--

DROP TABLE IF EXISTS `Entradas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Entradas` (
  `IdEntradas` int NOT NULL AUTO_INCREMENT,
  `DataEntrada` date NOT NULL,
  `DataSaida` date DEFAULT NULL,
  `PrevSaida` date NOT NULL,
  `EnderecoEstadia` varchar(60) NOT NULL,
  `IdNumPassaporteEntrada` varchar(50) NOT NULL,
  PRIMARY KEY (`IdEntradas`),
  KEY `IdNumPassaporteEntrada_idx` (`IdNumPassaporteEntrada`),
  CONSTRAINT `IdNumPassaporteEntrada` FOREIGN KEY (`IdNumPassaporteEntrada`) REFERENCES `Passaporte` (`NumPassaporte`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Entradas`
--

LOCK TABLES `Entradas` WRITE;
/*!40000 ALTER TABLE `Entradas` DISABLE KEYS */;
INSERT INTO `Entradas` VALUES (1,'2023-04-05',NULL,'2023-07-20','Rua Marcondes Salgado, Bauru, SP','AB123456');
/*!40000 ALTER TABLE `Entradas` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-04  9:37:51
