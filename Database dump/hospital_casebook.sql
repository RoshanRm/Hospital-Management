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
-- Table structure for table `casebook`
--

DROP TABLE IF EXISTS `casebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casebook` (
  `cbid` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `tid` int NOT NULL,
  `allergy` varchar(500) NOT NULL,
  `refDoc` varchar(500) DEFAULT NULL,
  `almedication` varchar(500) DEFAULT NULL,
  `immunisation` varchar(500) DEFAULT NULL,
  `cTreatingDisease` varchar(100) DEFAULT 'NA',
  `ctdHealthEffect` varchar(100) DEFAULT 'NA',
  `surgicalHisrory` varchar(100) DEFAULT 'NA',
  `geneticDisease` varchar(100) DEFAULT 'NA',
  `social` varchar(100) DEFAULT 'NA',
  `mentalDisease` varchar(100) DEFAULT 'NA',
  `newbornComplications` varchar(100) DEFAULT 'NA',
  `pregnancyPeriodDetails` varchar(100) DEFAULT 'NA',
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cbid`),
  KEY `pid_idx` (`pid`),
  CONSTRAINT `patient` FOREIGN KEY (`pid`) REFERENCES `patient` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casebook`
--

LOCK TABLES `casebook` WRITE;
/*!40000 ALTER TABLE `casebook` DISABLE KEYS */;
INSERT INTO `casebook` VALUES (1,1,1,'1','1','1','1','svdv','svds','vdsvsdv','svsdvsd','svsdv','acsd','svdsdv','sdvsdsd','2022-03-18 10:28:11'),(2,1,1,'abcd','Shubham','okacet','Complet','headache','no','No','No','No','No','No','No','2022-03-18 10:31:47'),(3,1,1,'abcd','Shubham','okacet','Complet','headache','no','No','No','No','No','No','No','2022-03-18 10:50:44'),(4,1,3,'NA','Sakshi','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','2022-03-18 10:56:47');
/*!40000 ALTER TABLE `casebook` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-19 12:57:33
