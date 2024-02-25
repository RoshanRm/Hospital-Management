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
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tests` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `requestedTestsId` int DEFAULT NULL,
  `status` varchar(45) DEFAULT 'Under Processing',
  `details` varchar(45) DEFAULT 'NA',
  `result` varchar(100) DEFAULT 'NA',
  `expectedrest` varchar(100) DEFAULT 'NA',
  `remark` varchar(45) DEFAULT 'NA',
  `sampledate` date DEFAULT NULL,
  `fees` int DEFAULT NULL,
  `requestedTestsname` varchar(45) DEFAULT 'NA',
  UNIQUE KEY `tid_UNIQUE` (`tid`),
  KEY `pid_idx` (`pid`),
  KEY `testreq_idx` (`requestedTestsId`),
  CONSTRAINT `pid` FOREIGN KEY (`pid`) REFERENCES `patient` (`pid`),
  CONSTRAINT `testreq` FOREIGN KEY (`requestedTestsId`) REFERENCES `servicetest` (`stid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES (1,1,1,'Comleted','Positive','Positive','Nagative','Positive','2022-03-01',200,'NA'),(2,1,2,'Comleted','Positive','Positive','Nagative','Positive','2022-03-01',300,'NA'),(3,1,3,'Completed','scsds','424','5424','Positive','2022-03-01',500,'NA'),(4,1,4,'Under Processing','NA','NA','NA','NA',NULL,NULL,'NA'),(5,1,2,'Under Processing','NA','NA','NA','NA',NULL,NULL,'NA'),(6,2,13,'Under Processing','NA','NA','NA','NA',NULL,NULL,'NA'),(7,2,13,'Under Processing','NA','NA','NA','NA',NULL,NULL,'NA');
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-19 12:57:31
