-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital_management
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admitpatient_room`
--

DROP TABLE IF EXISTS `admitpatient_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admitpatient_room` (
  `PatientID` int(10) NOT NULL,
  `Disease` varchar(50) DEFAULT NULL,
  `AdmitDate` date DEFAULT NULL,
  `RoomNo` int(5) NOT NULL,
  `DoctorID` int(10) NOT NULL,
  `AP_Remarks` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PatientID`),
  KEY `RoomNo` (`RoomNo`),
  KEY `DoctorID` (`DoctorID`),
  CONSTRAINT `admitpatient_room_ibfk_1` FOREIGN KEY (`RoomNo`) REFERENCES `room` (`RoomNo`),
  CONSTRAINT `admitpatient_room_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admitpatient_room`
--

LOCK TABLES `admitpatient_room` WRITE;
/*!40000 ALTER TABLE `admitpatient_room` DISABLE KEYS */;
INSERT INTO `admitpatient_room` VALUES (1,'Typhoid fever','2014-03-21',1,1,'High temp and weakness.'),(2,'Concussion','2018-04-15',3,1,'Patient admitted in ICU'),(3,'Fracture','2018-04-15',1,1,''),(12,'Fever','2015-01-20',2,1,'');
/*!40000 ALTER TABLE `admitpatient_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_room`
--

DROP TABLE IF EXISTS `bill_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_room` (
  `DischargeID` int(5) DEFAULT NULL,
  `BillingDate` date DEFAULT NULL,
  `RoomCharges` int(10) DEFAULT NULL,
  `ServiceCharges` int(10) DEFAULT NULL,
  `PaymentMode` varchar(20) DEFAULT NULL,
  `PaymentModeDetails` varchar(100) DEFAULT NULL,
  `TotalCharges` int(10) DEFAULT NULL,
  `NoOfDays` int(5) DEFAULT NULL,
  `TotalRoomCharges` int(10) DEFAULT NULL,
  `BillNo` varchar(15) NOT NULL,
  PRIMARY KEY (`BillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_room`
--

LOCK TABLES `bill_room` WRITE;
/*!40000 ALTER TABLE `bill_room` DISABLE KEYS */;
INSERT INTO `bill_room` VALUES (1,'2015-01-12',5000,500,'by Cash','Payment done successfully!',1485500,297,1485000,'120150112'),(12,'2015-01-20',2500,500,'by Credit Card','NA',500,0,0,'1220150120'),(3,'2018-04-15',5000,20000,'by Credit Card','',20000,0,0,'320180415');
/*!40000 ALTER TABLE `bill_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dischargepatient_room`
--

DROP TABLE IF EXISTS `dischargepatient_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dischargepatient_room` (
  `AdmitID` int(20) DEFAULT NULL,
  `DischargeDate` date DEFAULT NULL,
  `DP_Remarks` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dischargepatient_room`
--

LOCK TABLES `dischargepatient_room` WRITE;
/*!40000 ALTER TABLE `dischargepatient_room` DISABLE KEYS */;
INSERT INTO `dischargepatient_room` VALUES (1,'2015-01-12','Patient recovered successfully!'),(12,'2015-01-20','Patient is stable'),(3,'2018-04-15','Patient operated');
/*!40000 ALTER TABLE `dischargepatient_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `DoctorID` int(10) NOT NULL,
  `DoctorName` varchar(20) DEFAULT NULL,
  `FatherName` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `ContacNo` varchar(11) DEFAULT NULL,
  `Qualifications` varchar(50) DEFAULT NULL,
  `Gender` varchar(1) DEFAULT NULL,
  `BloodGroup` varchar(5) DEFAULT NULL,
  `DateOfJoining` date DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Ajay Mishra','Deepak MIshra','ajay123@gmail.com ','9880876532','MD,MBBS','M','A+','2014-03-20','108;Whitefield,Bangalore-560066'),(2,'Anjali Chopra','Madan Chopra','anjalirox123@gmail.com','9880756634','MD,MBBS','F','A-','2016-01-02','#111;Gayathri Temple;Whitefield;Bangalore-560066');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientregistration`
--

DROP TABLE IF EXISTS `patientregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientregistration` (
  `PatientID` int(10) NOT NULL,
  `PatientName` varchar(20) DEFAULT NULL,
  `FatherName` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `ContactNo` varchar(11) DEFAULT NULL,
  `Age` int(2) DEFAULT NULL,
  `Remarks` varchar(100) DEFAULT NULL,
  `Gen` varchar(1) DEFAULT NULL,
  `BG` varchar(3) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PatientID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientregistration`
--

LOCK TABLES `patientregistration` WRITE;
/*!40000 ALTER TABLE `patientregistration` DISABLE KEYS */;
INSERT INTO `patientregistration` VALUES (1,'Akash Agarwal','P.K Agarwal','agarwal.akash1997@gmail.com','41162171',18,'Mild fever\n','M','B+','Beml layout'),(2,'Shankar Kumar','Rohan Kumar','shanks@gmail.com','8095678932',20,'Patient admitted with severe bleeding and concussion','M','B+','#205,ITPL road,Bangalore-560066'),(3,'Bhoomika Mishra','Kunal Mishra','bhoomika98@gmail.com','8095678456',25,'fractured knee','F','AB+','#105;Jyothi Nivas;Kundanahalli Gate;Bangalore-560066'),(12,'ajay','rajesh','ajay@gmail.com','41162191',18,'Vommiting','M','O+','basvanagar layout');
/*!40000 ALTER TABLE `patientregistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration` (
  `name` varchar(20) DEFAULT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL,
  `contact_no` int(10) DEFAULT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES ('akshay','ak','akshay','xyz',41162171),('Akash','akash','12345','akash.agarwal',41162171),('akshay','aksh','aksh','aksh@gmail.com',41162181),('anurag','anu','anu123','sampath.anurag@gmail.com',80956835),('avit','avit','avit','avit',213);
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `RoomNo` int(5) NOT NULL,
  `RoomType` varchar(10) DEFAULT NULL,
  `RoomCharges` int(10) DEFAULT NULL,
  `RoomStatus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`RoomNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'General',5000,'Vacant'),(2,'General',2500,'Vacant'),(3,'Deluxe',10000,'Booked');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `ServiceName` varchar(20) DEFAULT NULL,
  `ServiceDate` date DEFAULT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `ServiceCharges` int(10) DEFAULT NULL,
  `ServiceID` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ServiceID`),
  KEY `PatientID` (`PatientID`),
  CONSTRAINT `services_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patientregistration` (`PatientID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES ('General Consultation','2014-09-22',1,500,16),('General Consultation','2015-01-20',12,500,17),('Surgery','2018-04-15',2,15000,18),('Surgery','2018-04-15',3,20000,19);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('ak','12345'),('akash','123456'),('aksh','akash'),('anu','anu123'),('avit','akash');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-15 23:04:59
