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
-- Table structure for table `hospitalstaff`
--

DROP TABLE IF EXISTS `hospitalstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitalstaff` (
  `hsid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cNumber` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `education` varchar(45) DEFAULT NULL,
  `specialisation` varchar(45) DEFAULT NULL,
  `experience` varchar(45) DEFAULT NULL,
  `surgeonFlag` tinyint DEFAULT NULL,
  `doctorFlag` tinyint DEFAULT NULL,
  `nurseFlag` tinyint DEFAULT NULL,
  `accountantFlag` tinyint DEFAULT NULL,
  `laboratoristFlag` tinyint DEFAULT NULL,
  `pharmacyFlag` tinyint DEFAULT NULL,
  `emergencyFlag` tinyint DEFAULT NULL,
  `anaesthetistFlag` tinyint DEFAULT NULL,
  `adminFlag` tinyint DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `height` decimal(10,0) DEFAULT NULL,
  `weight` decimal(10,0) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `facebook` varchar(45) DEFAULT NULL,
  `twitter` varchar(45) DEFAULT NULL,
  `instagram` varchar(45) DEFAULT NULL,
  `glink` varchar(45) DEFAULT NULL,
  `profilename` varchar(45) DEFAULT 'user.png',
  PRIMARY KEY (`hsid`),
  UNIQUE KEY `hsid_UNIQUE` (`hsid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitalstaff`
--

LOCK TABLES `hospitalstaff` WRITE;
/*!40000 ALTER TABLE `hospitalstaff` DISABLE KEYS */;
INSERT INTO `hospitalstaff` VALUES (1,'Shubham Sahane','shubham@gmail.com','+918552804871','123456789','MBBS','Dentist','15',1,1,0,0,0,0,1,0,1,'2022-03-15',6,70,'Male',25,'AtPo. Chas Tal. Sinnar Dist.Nashik','silent.virus.99','Shubham20843335','mr.silent_99','https://goo.gl/maps/NnYLTi8ssY5a4ShKA','avatar1.jpg'),(2,'Sakshi','sakshi@gmail.com','+919309887573','123456789','MBBS','Audiology','10',1,1,1,1,1,1,1,1,1,'2001-05-02',5,42,'Female ',21,'At.rahuri Tal.Sinnar Dist.Nashik 422606','sakshi.05','sakshi.05','sakshikorde','https://goo.gl/maps/NnYLTi8ssY5a4ShKA','avatar2.jpg'),(3,'Namrata','namrata@gmail.com','+919309887573','123456789','MBBS','Nursing','10',1,1,1,1,1,1,1,1,1,'2002-06-23',5,45,'Female',21,'At.tumsar Tal.Sinnar Dist.Nashik 422606','namrata.01','namrata.13','namrata12','https://goo.gl/maps/NnYLTi8ssY5a4ShKA','avatar6.jpg'),(4,'roshan','roshan@gmail.com','+919309887573','123456789','MBBS','Dentist','10',1,1,1,1,1,1,1,1,1,'2003-08-15',6,73,'Male',22,'At.nakpur Tal.Sinnar Dist.Nashik 422606','roshan.01','roshan.16','roshan.16','https://goo.gl/maps/NnYLTi8ssY5a4ShKA','avatar5.jpg'),(5,'SSs','test123@gmail.com','1234567890','123456789','NA','MBBS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' https://goo.gl/maps/MbU93YNU798b2UPe9',NULL);
/*!40000 ALTER TABLE `hospitalstaff` ENABLE KEYS */;
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
