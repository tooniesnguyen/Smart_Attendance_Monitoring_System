-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: IOT_Face
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0ubuntu0.18.04.1

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
-- Table structure for table `20146_class`
--

DROP TABLE IF EXISTS `20146_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `20146_class` (
  `id` varchar(50) NOT NULL,
  `rfid` varchar(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `class` varchar(250) NOT NULL,
  `checkin` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rfid` (`rfid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `20146_class`
--

LOCK TABLES `20146_class` WRITE;
/*!40000 ALTER TABLE `20146_class` DISABLE KEYS */;
INSERT INTO `20146_class` VALUES ('20146262','21312','Nhan','20146',NULL),('20146263','123123','Thanh Nhan','20146','14:20'),('20146264','123123123','Thanh Nhan d4','20146',NULL),('20146265','123123123123','Ngoc Nhan','20146',NULL),('20146269','qweqwe123','Thanh Nhan 123','20146',NULL),('20146566','asdqwe','Nguyen N','20146',NULL),('20146567','123123asd','Thanh Nhan 123','20146',NULL),('20146668','123123as123','Thanh Nhan 123','20146',NULL),('2022222','qwe123123','Nguyen Thanh Nhan','20146',NULL);
/*!40000 ALTER TABLE `20146_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Face_ID`
--

DROP TABLE IF EXISTS `Face_ID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Face_ID` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `class` varchar(50) NOT NULL,
  `time_come` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Face_ID`
--

LOCK TABLES `Face_ID` WRITE;
/*!40000 ALTER TABLE `Face_ID` DISABLE KEYS */;
/*!40000 ALTER TABLE `Face_ID` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `username` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `position` varchar(50) NOT NULL,
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('admin','1','admin'),('lecture','1','lecture');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track`
--

DROP TABLE IF EXISTS `track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `track` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `class` varchar(10) DEFAULT NULL,
  `Sunday` varchar(40) DEFAULT NULL,
  `Monday` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track`
--

LOCK TABLES `track` WRITE;
/*!40000 ALTER TABLE `track` DISABLE KEYS */;
INSERT INTO `track` VALUES (1,'Nguyen Ngoc Nhan','20146',NULL,'Unknow-22:11-22:14');
/*!40000 ALTER TABLE `track` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-10 21:18:48
