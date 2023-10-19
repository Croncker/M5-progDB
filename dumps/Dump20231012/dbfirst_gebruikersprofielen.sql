-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: dbfirst
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `gebruikersprofielen`
--

DROP TABLE IF EXISTS `gebruikersprofielen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gebruikersprofielen` (
  `idGebruikersprofielen` int unsigned NOT NULL,
  `gebruikersprofielencol` varchar(45) DEFAULT NULL,
  `gebruikersnaam` varchar(50) NOT NULL,
  `voornaam` varchar(50) NOT NULL,
  `achternaam` varchar(50) NOT NULL,
  `e-mailadres` varchar(100) NOT NULL,
  `wachtwoord` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `geboortedatum` date NOT NULL,
  `profielfoto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idGebruikersprofielen`),
  UNIQUE KEY `idGebruikersprofielen_UNIQUE` (`idGebruikersprofielen`),
  UNIQUE KEY `gebruikersnaam_UNIQUE` (`gebruikersnaam`),
  UNIQUE KEY `e-mailadres_UNIQUE` (`e-mailadres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gebruikersprofielen`
--

LOCK TABLES `gebruikersprofielen` WRITE;
/*!40000 ALTER TABLE `gebruikersprofielen` DISABLE KEYS */;
INSERT INTO `gebruikersprofielen` VALUES (0,'','gebruiker2','John','Doe','john.doe@example.com','gfgr','1990-05-15','geen'),(1,'','gebruiker2fdf','Jane','Smith','jane.smith@example.com','gfgr','1990-05-15','geen'),(2,'','gebruiker23434','Jack','Johnson','jack.johnson@example.com','dwpr','1990-05-15','geen');
/*!40000 ALTER TABLE `gebruikersprofielen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-12 10:55:23
