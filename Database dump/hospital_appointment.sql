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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `apid` int NOT NULL AUTO_INCREMENT,
  `pid` int DEFAULT NULL,
  `requestedDocId` int DEFAULT NULL,
  `requestedServiceId` int DEFAULT NULL,
  `symptomsId` int DEFAULT NULL,
  `disease` varchar(45) DEFAULT NULL,
  `approxScheduledTime` varchar(30) DEFAULT NULL,
  `attendTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `discription` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`apid`),
  UNIQUE KEY `apid_UNIQUE` (`apid`),
  KEY `appatient_idx` (`pid`),
  KEY `requestdoc_idx` (`requestedDocId`),
  KEY `requestservice_idx` (`requestedServiceId`),
  KEY `symptoms_idx` (`symptomsId`),
  CONSTRAINT `appatient` FOREIGN KEY (`pid`) REFERENCES `patient` (`pid`),
  CONSTRAINT `requestdoc` FOREIGN KEY (`requestedDocId`) REFERENCES `hospitalstaff` (`hsid`),
  CONSTRAINT `requestservice` FOREIGN KEY (`requestedServiceId`) REFERENCES `servicetest` (`stid`),
  CONSTRAINT `symptoms` FOREIGN KEY (`symptomsId`) REFERENCES `symptoms` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (16,1,1,1,1,'abc',NULL,'2022-03-18 17:10:52',NULL,'Waiting ','ac');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-19 12:57:30
