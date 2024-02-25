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
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `fid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `feedbacks` varchar(200) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `rate` int DEFAULT '50',
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fid`),
  UNIQUE KEY `fid_UNIQUE` (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (2,'abc2','greatt','patient',70,'2022-03-17 06:24:28'),(3,'abc3','average','patient',50,'2022-03-17 06:24:28'),(4,'abc4','not bad','patient',30,'2022-03-17 06:24:28'),(5,'abc5','need of improve','patient',20,'2022-03-17 06:24:28'),(6,'abc6','good work','patient',80,'2022-03-17 06:24:28'),(7,'abc7','great','patient',80,'2022-03-17 06:24:28'),(8,'abc8','good','patient',90,'2022-03-17 06:24:28'),(9,'Shubham','good','Account',100,'2022-03-17 06:48:29'),(10,'Shubham','scac','Account',60,'2022-03-17 06:58:01'),(11,'Shubham','scac','Account',60,'2022-03-17 06:59:55'),(12,'Shubham','scsc','Patient',20,'2022-03-18 12:57:38'),(13,'Shubham','ascasc45464dvvas6263sac 5 84fa4 54sd46a 4w5 ','Doctor',60,'2022-03-18 13:35:32'),(14,'Shubham','ascasc45464dvvas6263sac 5 84fa4 54sd46a 4w5 ','Doctor',60,'2022-03-18 13:36:20'),(15,'sc','cscs','Nurse',30,'2022-03-18 17:58:04'),(16,'Shubham','sxasx','Laboratory',100,'2022-03-18 21:02:28');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
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
