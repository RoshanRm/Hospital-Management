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
-- Table structure for table `emergrncy`
--

DROP TABLE IF EXISTS `emergrncy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emergrncy` (
  `emid` int NOT NULL AUTO_INCREMENT,
  `reportingStaffId` int DEFAULT NULL,
  `esFlag` int NOT NULL DEFAULT '1',
  `otFlag` int DEFAULT '0',
  `icuFlag` int DEFAULT '0',
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`emid`),
  UNIQUE KEY `emid_UNIQUE` (`emid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emergrncy`
--

LOCK TABLES `emergrncy` WRITE;
/*!40000 ALTER TABLE `emergrncy` DISABLE KEYS */;
INSERT INTO `emergrncy` VALUES (1,4,1,0,0,'leg fracture'),(2,3,1,0,0,'abc'),(3,3,1,0,0,'abc'),(4,3,1,0,0,'abc'),(5,3,1,0,0,'abc'),(6,3,1,0,0,'abc'),(7,3,1,0,0,'bdc'),(8,1,1,1,1,'bot'),(9,3,1,0,0,'bot'),(10,3,1,0,0,'bot'),(11,3,1,0,0,'bot'),(12,20,1,0,0,'bot'),(13,4,1,0,0,'abc');
/*!40000 ALTER TABLE `emergrncy` ENABLE KEYS */;
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
