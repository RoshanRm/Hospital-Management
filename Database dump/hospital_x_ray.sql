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
-- Table structure for table `x_ray`
--

DROP TABLE IF EXISTS `x_ray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x_ray` (
  `xid` int NOT NULL AUTO_INCREMENT,
  `pid` int DEFAULT NULL,
  `refDocid` int DEFAULT NULL,
  `reportflag` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `report` varchar(100) DEFAULT NULL,
  `anesthesia` varchar(45) DEFAULT NULL,
  `physicaltst` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`xid`),
  UNIQUE KEY `xid_UNIQUE` (`xid`),
  KEY `xpid_idx` (`pid`),
  KEY `xdid_idx` (`refDocid`),
  CONSTRAINT `xdid` FOREIGN KEY (`refDocid`) REFERENCES `hospitalstaff` (`hsid`),
  CONSTRAINT `xpid` FOREIGN KEY (`pid`) REFERENCES `patient` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x_ray`
--

LOCK TABLES `x_ray` WRITE;
/*!40000 ALTER TABLE `x_ray` DISABLE KEYS */;
INSERT INTO `x_ray` VALUES (1,1,1,'0','Positive','Positive','20ml','Complete '),(2,2,2,'0','Positive','Positive','20ml','Complete'),(3,3,3,'0','Positive','Positive','0','Complete'),(4,4,4,'0','Positive','Positive','0','Complete'),(5,2,1,'0','Positive','Positive','0','Complete'),(6,1,2,'0','Positive','Positive','20ml','Complete'),(7,3,3,'0','Positive','Positive','0','Complete'),(8,5,NULL,NULL,'Positive','sdvdevdsv','10ml','Positive'),(9,5,NULL,NULL,'Positive','sdvdevdsv','10ml','Positive'),(10,9,NULL,NULL,'Positive','vsvsdv','10ml','Positive'),(11,9,NULL,NULL,'Positive','vsvsdv','10ml','Positive');
/*!40000 ALTER TABLE `x_ray` ENABLE KEYS */;
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
