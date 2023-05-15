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
-- Table structure for table `Estrangeiro`
--

DROP TABLE IF EXISTS `Estrangeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estrangeiro` (
  `IdEstrangeiro` int NOT NULL AUTO_INCREMENT,
  `NomeCompleto` varchar(60) NOT NULL,
  `NomeMae` varchar(60) NOT NULL,
  `DataNascimento` date NOT NULL,
  `Sexo` varchar(45) NOT NULL,
  `EstadoCivil` varchar(20) NOT NULL,
  `NumDependentes` int DEFAULT NULL,
  `Endereco` varchar(60) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Celular` int NOT NULL,
  `IdProfissao` int DEFAULT NULL,
  `IdCodPostal` int NOT NULL,
  `IdEmpregador` int DEFAULT NULL,
  `IdDefFisica` int DEFAULT NULL,
  `IdEntradas` int DEFAULT NULL,
  `IdNumPassaporte` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdEstrangeiro`),
  KEY `CodPostal_idx` (`IdCodPostal`),
  KEY `EntradasPais_idx` (`IdEntradas`),
  KEY `Empregador_idx` (`IdEmpregador`),
  KEY `DefFisica_idx` (`IdDefFisica`),
  KEY `Profissao_idx` (`IdProfissao`),
  KEY `NumPassaporte_idx` (`IdNumPassaporte`),
  CONSTRAINT `CodPostal` FOREIGN KEY (`IdCodPostal`) REFERENCES `CodPostal` (`NumCod`) ON UPDATE CASCADE,
  CONSTRAINT `DefFisica` FOREIGN KEY (`IdDefFisica`) REFERENCES `DefFisica` (`IdDef`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Empregador` FOREIGN KEY (`IdEmpregador`) REFERENCES `Empresa` (`IdEmpregador`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `EntradasPais` FOREIGN KEY (`IdEntradas`) REFERENCES `Entradas` (`IdEntradas`) ON UPDATE CASCADE,
  CONSTRAINT `IdNumPassaporte` FOREIGN KEY (`IdNumPassaporte`) REFERENCES `Passaporte` (`NumPassaporte`),
  CONSTRAINT `Profissao` FOREIGN KEY (`IdProfissao`) REFERENCES `Profissao` (`IdProfissao`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estrangeiro`
--

LOCK TABLES `Estrangeiro` WRITE;
/*!40000 ALTER TABLE `Estrangeiro` DISABLE KEYS */;
INSERT INTO `Estrangeiro` VALUES (2,'Roberval Almeida Santos','Cláudia Almeida','1995-06-24','Masculino','Solteiro',NULL,'395 Santa Monica Pl','robervalsantos@gmail.com',2147483647,NULL,90401,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Estrangeiro` ENABLE KEYS */;
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

-- Dump completed on 2023-05-04  9:37:41
