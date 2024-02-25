-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `medicinepharmacy`
--

DROP TABLE IF EXISTS `medicinepharmacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicinepharmacy` (
  `mid` int NOT NULL AUTO_INCREMENT,
  `brandName` varchar(40) DEFAULT NULL,
  `containtQuality` varchar(100) DEFAULT NULL,
  `uses` varchar(100) DEFAULT NULL,
  `pkg` varchar(20) DEFAULT NULL,
  `mfgDate` date DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `ratepartab` decimal(10,0) DEFAULT NULL,
  `priceparpacket` varchar(45) DEFAULT NULL,
  `stockAvai` varchar(100) DEFAULT NULL,
  `healthEffect` varchar(45) DEFAULT NULL,
  `batch` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mid`),
  UNIQUE KEY `mid_UNIQUE` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicinepharmacy`
--

LOCK TABLES `medicinepharmacy` WRITE;
/*!40000 ALTER TABLE `medicinepharmacy` DISABLE KEYS */;
INSERT INTO `medicinepharmacy` VALUES (1,'okaset','abc 9 mg','to cure allergical common cold','10','2022-03-05','2025-03-05',5,'50','100','no',NULL),(4,'abc','accs 10mg aa 20mg','acscs','10tab','2022-03-17','2024-07-10',10,'100','198','scsscas','abs123');
/*!40000 ALTER TABLE `medicinepharmacy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-19 12:57:32
