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
-- Table structure for table `patientbill`
--

DROP TABLE IF EXISTS `patientbill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientbill` (
  `invoiceid` int NOT NULL AUTO_INCREMENT,
  `pid` int DEFAULT NULL,
  `pname` varchar(45) DEFAULT NULL,
  `pemail` varchar(45) DEFAULT NULL,
  `pcontact` decimal(10,0) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `DoctorFee` int DEFAULT '0',
  `AmbulanceCharge` int DEFAULT '0',
  `PharmacyTotal` int DEFAULT '0',
  `BedCharge` int DEFAULT '0',
  `MRI` int DEFAULT '0',
  `GST` int DEFAULT '0',
  `GrandTotal` int DEFAULT '0',
  `CtScan` int DEFAULT '0',
  `Ot` int DEFAULT '0',
  `btransfusion` int DEFAULT '0',
  `Dialysis` int DEFAULT '0',
  `dexa` int DEFAULT '0',
  `Ultrasound` int DEFAULT '0',
  `X_ray` int DEFAULT '0',
  `ecg` int DEFAULT '0',
  `Other` int DEFAULT '0',
  `status` varchar(45) DEFAULT 'Unpaid',
  `refDocname` varchar(45) DEFAULT NULL,
  `refDocNum` decimal(10,0) DEFAULT NULL,
  `refDocemail` varchar(45) DEFAULT NULL,
  `discount` int DEFAULT '0',
  PRIMARY KEY (`invoiceid`),
  UNIQUE KEY `bid_UNIQUE` (`invoiceid`),
  KEY `patientid_idx` (`pid`),
  CONSTRAINT `patientid` FOREIGN KEY (`pid`) REFERENCES `patient` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientbill`
--

LOCK TABLES `patientbill` WRITE;
/*!40000 ALTER TABLE `patientbill` DISABLE KEYS */;
INSERT INTO `patientbill` VALUES (1,1,'Shubham','test@gmail.com',1234569872,'2022-03-17 02:43:11',200,100,300,500,4000,20,500,4000,3000,500,500,0,0,0,0,0,'Paid','Shubham',8552804872,'shubham@gmail.com',0),(2,2,'abc','test2@gmail.com',4567892136,'2022-03-17 02:43:11',200,100,500,500,4000,21,700,4000,3000,500,500,0,0,0,0,0,'Unpaid','Sakshi',9309887572,'sakshi@gmail.com',0);
/*!40000 ALTER TABLE `patientbill` ENABLE KEYS */;
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
