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
INSERT INTO `20146_class` VALUES ('20146232','213223127','Nguyen Thanh Dai Nhan','20146',NULL),('20146244','213233127','Nguyen Thanh Nhan A','20146',NULL),('20146246','21322129','Nguyen Thanh Dai','20146',NULL),('20146252','213123127','Nguyen Thanh Nhan','201462',NULL),('20146254','213123129','Nguyen Thanh Dai','201462',NULL),('20146255','213243127','Nguyen Thanh Nhan C','20146',NULL),('20146258','213243133','Nguyen Thi Cam Lai','20146',NULL);
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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `sid` varchar(50) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `class` varchar(50) NOT NULL,
  `W_1` varchar(50) DEFAULT NULL,
  `W_2` varchar(50) DEFAULT NULL,
  `W_3` varchar(50) DEFAULT NULL,
  `W_4` varchar(50) DEFAULT NULL,
  `W_5` varchar(50) DEFAULT NULL,
  `W_6` varchar(50) DEFAULT NULL,
  `W_7` varchar(50) DEFAULT NULL,
  `W_8` varchar(50) DEFAULT NULL,
  `W_9` varchar(50) DEFAULT NULL,
  `W_10` varchar(50) DEFAULT NULL,
  `W_11` varchar(50) DEFAULT NULL,
  `W_12` varchar(50) DEFAULT NULL,
  `W_13` varchar(50) DEFAULT NULL,
  `W_14` varchar(50) DEFAULT NULL,
  `W_15` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (48,'20146002','Dinh Thanh Nhan','IOT','14:22',NULL,'14:18','14:18',NULL,NULL,NULL,'15:49','15:52',NULL,NULL,NULL,NULL,NULL,NULL),(49,'20146249',' Nguyen Ngoc Nhan','IOT','14:18',NULL,'14:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'20146250',' Nguyen Thanh Nhan','IOT','14:20','14:20','14:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'20146251',' Nguyen Hai Hoang','IOT','14:22',NULL,NULL,'14:22','14:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'20146252',' Nguyen Hoang Nhan','IOT',NULL,NULL,NULL,'14:18','14:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'20146249',' Nguyen Ngoc Nhan','AI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'20146255',' Nguyen Thanh Nhan_A','AI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'20146256',' Do Hai Hoang','AI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'20146257',' Huynh Anh Duy','AI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'20146261',' Ta Hai Hoang','Embedded',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'20146262',' Huynh Cao Duy','Embedded',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,'20146262','Huynh Anh Duy','IOT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'15:47','15:42',NULL,NULL,NULL,NULL,NULL,NULL),(60,'20146261',' Ta Hai Hoang','AI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,'20146262',' Huynh Cao Duy','AI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
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
INSERT INTO `login` VALUES ('20143_CLA','1','lecture'),('20146_CLA','1','lecture'),('20146_Lec','1','lecture'),('admin','1','admin'),('lecture','1','lecture');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track`
--

LOCK TABLES `track` WRITE;
/*!40000 ALTER TABLE `track` DISABLE KEYS */;
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

-- Dump completed on 2023-11-18 21:25:46
