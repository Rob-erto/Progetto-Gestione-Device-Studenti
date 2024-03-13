-- MariaDB dump 10.19  Distrib 10.5.23-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: progdevstud
-- ------------------------------------------------------
-- Server version	10.5.23-MariaDB-0+deb11u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dispositivi`
--

DROP TABLE IF EXISTS `dispositivi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dispositivi` (
  `iddisp` int(11) NOT NULL,
  `tipo` varchar(40) NOT NULL,
  `disponibile` varchar(10) NOT NULL,
  `descrizione` varchar(100) DEFAULT NULL,
  `idstud` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddisp`),
  UNIQUE KEY `iddisp` (`iddisp`),
  KEY `idstud` (`idstud`),
  CONSTRAINT `dispositivi_ibfk_1` FOREIGN KEY (`idstud`) REFERENCES `studenti` (`idstud`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispositivi`
--

LOCK TABLES `dispositivi` WRITE;
/*!40000 ALTER TABLE `dispositivi` DISABLE KEYS */;
INSERT INTO `dispositivi` VALUES (1,'PC','Si','Laptop Lenovo',1),(2,'PC','Si','Portatile2',1),(5,'PC','Si','Portatile2',1);
/*!40000 ALTER TABLE `dispositivi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestiti`
--

DROP TABLE IF EXISTS `prestiti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestiti` (
  `idprestito` int(11) NOT NULL AUTO_INCREMENT,
  `idstud` int(11) NOT NULL,
  `iddisp` int(11) NOT NULL,
  `datainizio` date NOT NULL,
  `datafine` date NOT NULL,
  PRIMARY KEY (`idprestito`),
  KEY `idstud` (`idstud`),
  KEY `iddisp` (`iddisp`),
  CONSTRAINT `prestiti_ibfk_1` FOREIGN KEY (`idstud`) REFERENCES `studenti` (`idstud`),
  CONSTRAINT `prestiti_ibfk_2` FOREIGN KEY (`iddisp`) REFERENCES `dispositivi` (`iddisp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestiti`
--

LOCK TABLES `prestiti` WRITE;
/*!40000 ALTER TABLE `prestiti` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestiti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studenti`
--

DROP TABLE IF EXISTS `studenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studenti` (
  `idstud` int(11) NOT NULL,
  `corso` varchar(10) NOT NULL,
  `anno` int(11) NOT NULL,
  PRIMARY KEY (`idstud`),
  UNIQUE KEY `idstud` (`idstud`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studenti`
--

LOCK TABLES `studenti` WRITE;
/*!40000 ALTER TABLE `studenti` DISABLE KEYS */;
INSERT INTO `studenti` VALUES (1,'SoQu',1),(20,'FrEn',1),(57,'Csec',1),(256155,'SoQu',2);
/*!40000 ALTER TABLE `studenti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-21 12:29:04
