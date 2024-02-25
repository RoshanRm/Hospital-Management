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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT 'NA',
  `email` varchar(45) NOT NULL,
  `contactNo` varchar(45) DEFAULT '0',
  `password` varchar(100) NOT NULL,
  `bdate` date DEFAULT NULL,
  `age` int(3) unsigned zerofill DEFAULT NULL,
  `gender` char(10) DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `paddress` varchar(60) DEFAULT NULL,
  `caddress` varchar(60) DEFAULT 'SameAsPermanent',
  `bloodType` varchar(45) DEFAULT NULL,
  `profilename` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `pid_UNIQUE` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Shubham Sahane','test@gmail.com','8552804872','123456789','1999-10-27',023,'Male',73,6,'At.Po. Chas Tal.Sinnar Dist.Nashik 422606','At.Po. Chas Tal.Sinnar Dist.Nashik 422606','B+','user.png','2022-03-17 00:23:42'),(2,'abc1','test1@gmail.com','8552804872','123456789','2022-02-21',023,'Male',60,5,'At.Chas Tal.Sinnar Dist.Nashik 422606','SameAsPermanent','A+','user.png','2022-03-17 00:23:42'),(3,'abc2','test2@gmail.com','8552804872','123456789','2022-02-21',023,'Male',65,5,'At.Chas Tal.Sinnar Dist.Nashik 422606','SameAsPermanent','AB+','user.png','2022-03-17 00:23:42'),(4,'abc3','test3@gmail.com','8552804872','123456789','2022-02-21',023,'Male',67,6,'At.Chas Tal.Sinnar Dist.Nashik 422606','SameAsPermanent','O+','user.png','2022-03-17 00:23:42'),(5,'abc4','test4@gmail.com','8552804872','123456789','2022-02-21',023,'Male',63,4,'At.Chas Tal.Sinnar Dist.Nashik 422606','SameAsPermanent','AB-','user.png','2022-03-17 00:23:42'),(6,'abc5','test5@gmail.com','8552804872','123456789','2022-02-21',023,'Male',62,5,'At.Chas Tal.Sinnar Dist.Nashik 422606','SameAsPermanent','B-','user.png','2022-03-17 00:23:42'),(7,'abc6','test7@gmail.com','8552804872','123456789','2022-02-21',025,'Male',61,4,'At.Chas Tal.Sinnar Dist.Nashik 422606','SameAsPermanent','O-','user.png','2022-03-17 00:23:42'),(8,'abc7','test6@gmail.com','8552804872','123456789','2022-02-21',033,'Male',69,6,'At.Chas Tal.Sinnar Dist.Nashik 422606','SameAsPermanent','A-','user.png','2022-03-17 00:23:42'),(9,'Sakshi','test8@gmail.com','8552804872','123456789','2022-02-21',022,'Female',42,5,'At.Rahuri Tal.Sangamner Dist.Anagar 422605','SameAsPermanent','AB-','user.png','2022-03-17 00:23:42'),(10,'NA','test9@gmail.com','0','123456789',NULL,NULL,NULL,NULL,NULL,NULL,'SameAsPermanent',NULL,'user.png','2022-03-17 00:23:42'),(11,'NA','test10@gmail.com','0','123456789',NULL,NULL,NULL,NULL,NULL,NULL,'SameAsPermanent',NULL,'user.png','2022-03-17 00:23:42'),(12,'NA','test11@gmail.com','0','123456789',NULL,NULL,NULL,NULL,NULL,NULL,'SameAsPermanent',NULL,'user.png','2022-03-17 00:23:42'),(13,'NA','test12@gmail.com','0','123456789',NULL,NULL,NULL,NULL,NULL,NULL,'SameAsPermanent',NULL,'user.png','2022-03-17 00:23:42'),(14,'NA','test13@gmail.com','0','123456789',NULL,NULL,NULL,NULL,NULL,NULL,'SameAsPermanent',NULL,'user.png','2022-03-17 00:23:42');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
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
