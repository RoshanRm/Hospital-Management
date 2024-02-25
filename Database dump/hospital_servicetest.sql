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
-- Table structure for table `servicetest`
--

DROP TABLE IF EXISTS `servicetest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicetest` (
  `stid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `availableStartTime` time DEFAULT NULL,
  `availableEndTime` time DEFAULT NULL,
  `serviceCharges` decimal(10,0) DEFAULT NULL,
  `discription` varchar(500) DEFAULT NULL,
  `imagename` varchar(45) DEFAULT 'user.png',
  PRIMARY KEY (`stid`),
  UNIQUE KEY `stid_UNIQUE` (`stid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicetest`
--

LOCK TABLES `servicetest` WRITE;
/*!40000 ALTER TABLE `servicetest` DISABLE KEYS */;
INSERT INTO `servicetest` VALUES (1,'Consultant','09:00:00','18:00:00',200,'A senior doctor who takes full responsibility for the clinical care of patients.A medical consult by definition is “a procedure whereby, upon request by one healthcare provider, another healthcare provider reviews a patient\'s medical history, examines the patient, and makes recommendations as to care and treatment.','consultant.jpg'),(2,'Pharmacy','09:00:00','18:00:00',10,'A pharmacy is a retail shop which provides pharmaceutical drugs, among other products. At the pharmacy, a pharmacist oversees the fulfillment of medical prescriptions and is available to counsel patients about prescription and over-the-counter drugs or about healthcare and wellness issues.','pharmacy.jpg '),(3,'ECG','09:00:00','18:00:00',500,'Electrocardiography is the process of producing an electrocardiogram, a recording of the heart\'s electrical activity. It is an electrogram of the heart which is a graph of voltage versus time of the electrical activity of the heart using electrodes placed on the skin.','ecg.jpg'),(4,'ICU','09:00:00','18:00:00',1000,'An intensive care unit, also known as an intensive therapy unit or intensive treatment unit or critical care unit, is a special department of a hospital or health care facility that provides intensive care medicine.','icu.jpg'),(5,'Ambulance','09:00:00','18:00:00',800,'An ambulance is a medically equipped vehicle which transports patients to treatment facilities. Typically, out-of-hospital medical care is provided to the patient. Ambulances are used to respond to medical emergencies by emergency medical services.','ambulance.jpg '),(6,'Laboratory','09:00:00','18:00:00',10,'A medical laboratory or clinical laboratory is a laboratory where tests are carried out on clinical specimens to obtain information about the health of a patient to aid in diagnosis, treatment, and prevention of disease.','laboratory.jpg '),(7,'X-ray','09:00:00','18:00:00',500,'An X-ray, or, much less commonly, X-radiation, is a penetrating form of high-energy electromagnetic radiation. Most X-rays have a wavelength ranging from 10 picometers to 10 nanometers, corresponding to frequencies in the range 30 petahertz to 30 exahertz and energies in the range 145eV to 124 keV.','X-ray1.jpg '),(8,'Ultrasound','09:00:00','18:00:00',1000,'Ultrasound scanning is a diagnostic tool used to examine many different parts of the body including the liver, pelvic organs, kidneys and gallbladder.It’s also very useful in identifying musculoskeletal injuries in joints such as the shoulder, knee and ankle and Also examine blood flow and blocked blood vessels.','Ultrasound.jpg '),(9,'Bone Densitometry(DEXA)','09:00:00','18:00:00',900,'Bone densitometry, also called dual-energy x-ray absorptiometry, DEXA or DXA, uses a very small dose of ionizing radiation to produce pictures of the inside of the body (usually the lower (or lumbar) spine and hips) to measure bone loss.','Bone Densitometry(DEXA).jpg '),(10,'MRI','09:00:00','18:00:00',5000,'Magnetic resonance imaging is a medical imaging technique used in radiology to form pictures of the anatomy and the physiological processes of the body. MRI scanners use strong magnetic fields, magnetic field gradients, and radio waves to generate images of the organs in the body.','MRI.jpg'),(11,'CT Scan','09:00:00','18:00:00',4000,'A CT scan or computed tomography scan is a medical imaging technique used in radiology to obtain detailed internal images of the body noninvasively for diagnostic purposes. The personnel that perform CT scans are called radiographers or radiology technologists.','CT.jpg'),(12,'Surgical Services','09:00:00','18:00:00',10000,'An operating theater is a facility within a hospital where surgical operations are carried out in an aseptic environment. Historically, the term \"operating theater\" referred to a non-sterile, tiered theater or amphitheater in which students and other spectators could watch surgeons perform surgery.','surgery.jpg'),(13,'Blood Transfusion','09:00:00','18:00:00',500,'Blood transfusion is the process of transferring blood products into one\'s circulation intravenously. Transfusions are used for various medical conditions to replace lost components of the blood.','transfusion.jpg '),(14,'Dialysis','09:00:00','18:00:00',500,'dialysis is the process of removing excess water, solutes, and toxins from the blood in people whose kidneys can no longer perform these functions naturally. This is referred to as renal replacement therapy. The first successful dialysis was performed in 1943.','dialysis.jpg '),(15,'General','09:00:00','18:00:00',600,'General appoinment ','dialysis.jpg'),(16,'abc','08:13:00','07:12:00',800,' savhas ashbh  shc ash  hsa c a s s n anms cms  s,n asn c','user.png');
/*!40000 ALTER TABLE `servicetest` ENABLE KEYS */;
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
