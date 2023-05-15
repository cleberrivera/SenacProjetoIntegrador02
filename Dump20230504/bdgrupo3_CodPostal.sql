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
-- Table structure for table `CodPostal`
--

DROP TABLE IF EXISTS `CodPostal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CodPostal` (
  `NumCod` int NOT NULL,
  `IdContinente` int NOT NULL,
  `IdPais` int NOT NULL,
  `IdEstadoCod` int NOT NULL,
  `IdCidadeCod` int NOT NULL,
  PRIMARY KEY (`NumCod`),
  KEY `Continente_idx` (`IdContinente`),
  KEY `Estado_idx` (`IdEstadoCod`),
  KEY `EstadoCod_idx` (`IdEstadoCod`),
  KEY `CidadeCod_idx` (`IdCidadeCod`),
  KEY `PaisCod_idx` (`IdPais`),
  CONSTRAINT `CidadeCod` FOREIGN KEY (`IdCidadeCod`) REFERENCES `Cidade` (`IdCidade`) ON UPDATE CASCADE,
  CONSTRAINT `Continente` FOREIGN KEY (`IdContinente`) REFERENCES `Continente` (`IdContinente`),
  CONSTRAINT `EstadoCod` FOREIGN KEY (`IdEstadoCod`) REFERENCES `Estado` (`IdEstado`) ON UPDATE CASCADE,
  CONSTRAINT `PaisCod` FOREIGN KEY (`IdPais`) REFERENCES `PaisOrigem` (`IdPais`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CodPostal`
--

LOCK TABLES `CodPostal` WRITE;
/*!40000 ALTER TABLE `CodPostal` DISABLE KEYS */;
INSERT INTO `CodPostal` VALUES (90401,2,4,4,3),(1153000,2,1,1,7);
/*!40000 ALTER TABLE `CodPostal` ENABLE KEYS */;
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

-- Dump completed on 2023-05-04  9:37:22
