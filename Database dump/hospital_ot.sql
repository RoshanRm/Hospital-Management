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
-- Table structure for table `ot`
--

DROP TABLE IF EXISTS `ot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ot` (
  `otid` int NOT NULL AUTO_INCREMENT,
  `appoinid` int DEFAULT NULL,
  `pid` int DEFAULT NULL,
  `refDoc` int DEFAULT NULL,
  `anaesthetistid` int DEFAULT NULL,
  `surgeonid` int DEFAULT NULL,
  `assistnurseid` int DEFAULT NULL,
  `patientarrivaltime` time DEFAULT NULL,
  `anaesthesiastart` time DEFAULT NULL,
  `anesthesiaready` time DEFAULT NULL,
  `procedurestart` time DEFAULT NULL,
  `procedureend` time DEFAULT NULL,
  `report` varchar(100) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `reportflag` varchar(45) DEFAULT NULL,
  `anesthesia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`otid`),
  UNIQUE KEY `otid_UNIQUE` (`otid`),
  KEY `apoinmentidot_idx` (`appoinid`),
  KEY `pidot_idx` (`pid`),
  KEY `refdocot_idx` (`refDoc`),
  KEY `anaesthetistidot_idx` (`anaesthetistid`),
  KEY `nurseidot_idx` (`assistnurseid`),
  KEY `surgeonidot_idx` (`surgeonid`),
  CONSTRAINT `anaesthetistidot` FOREIGN KEY (`anaesthetistid`) REFERENCES `hospitalstaff` (`hsid`),
  CONSTRAINT `apoinmentidot` FOREIGN KEY (`appoinid`) REFERENCES `appointment` (`apid`),
  CONSTRAINT `nurseidot` FOREIGN KEY (`assistnurseid`) REFERENCES `hospitalstaff` (`hsid`),
  CONSTRAINT `pidot` FOREIGN KEY (`pid`) REFERENCES `patient` (`pid`),
  CONSTRAINT `refdocot` FOREIGN KEY (`refDoc`) REFERENCES `hospitalstaff` (`hsid`),
  CONSTRAINT `surgeonidot` FOREIGN KEY (`surgeonid`) REFERENCES `hospitalstaff` (`hsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ot`
--

LOCK TABLES `ot` WRITE;
/*!40000 ALTER TABLE `ot` DISABLE KEYS */;
/*!40000 ALTER TABLE `ot` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-19 12:57:34
