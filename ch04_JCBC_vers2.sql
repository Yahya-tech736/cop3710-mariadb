-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CITY`
--

DROP TABLE IF EXISTS `CITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CITY` (
  `CITY_CODE` varchar(3) DEFAULT NULL,
  `CITY_NAME` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CITY`
--

LOCK TABLES `CITY` WRITE;
/*!40000 ALTER TABLE `CITY` DISABLE KEYS */;
INSERT INTO `CITY` VALUES ('BNA','Nashville'),('MBT','Murfreesboro'),('MNC','Manchester'),('MQY','Smyrna');
/*!40000 ALTER TABLE `CITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COACH`
--

DROP TABLE IF EXISTS `COACH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COACH` (
  `TEAM_CODE` varchar(3) DEFAULT NULL,
  `COACH_NUM` tinyint(4) DEFAULT NULL,
  `COACH_LNAME` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COACH`
--

LOCK TABLES `COACH` WRITE;
/*!40000 ALTER TABLE `COACH` DISABLE KEYS */;
INSERT INTO `COACH` VALUES ('BRS',1,'Johnson'),('BRS',2,'Stroop'),('BRS',3,'Cantares'),('EAG',1,'Roberts'),('EAG',2,'Chen'),('EAG',3,'Jabbar'),('RTL',1,'Williams'),('RTL',2,'Fossen'),('RTL',3,'Carols'),('SRK',1,'Fronds'),('SRK',2,'Thieu'),('SRK',3,'Smith'),('TGS',1,'Jones'),('TGS',2,'DeLorenzo'),('TGS',3,'Henricks');
/*!40000 ALTER TABLE `COACH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GAME`
--

DROP TABLE IF EXISTS `GAME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GAME` (
  `GAME_NUM` tinyint(4) DEFAULT NULL,
  `GAME_DATE` varchar(19) DEFAULT NULL,
  `GAME_TIME` varchar(19) DEFAULT NULL,
  `LOC_ID` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GAME`
--

LOCK TABLES `GAME` WRITE;
/*!40000 ALTER TABLE `GAME` DISABLE KEYS */;
INSERT INTO `GAME` VALUES (1,'2016-03-11 00:00:00','1899-12-30 18:00:00','BNA-CP3'),(2,'2016-03-11 00:00:00','1899-12-30 16:00:00','BNA-CP3'),(3,'2016-03-12 00:00:00','1899-12-30 21:00:00','MBT-SC1'),(4,'2016-03-12 00:00:00','1899-12-30 19:00:00','MBT-SC1'),(5,'2016-03-15 00:00:00','1899-12-30 20:00:00','MBT-SC1'),(6,'2016-03-15 00:00:00','1899-12-30 18:00:00','MBT-SC1'),(7,'2016-03-18 00:00:00','1899-12-30 20:00:00','MNC-CP1'),(8,'2016-03-18 00:00:00','1899-12-30 18:00:00','MNC-CP1');
/*!40000 ALTER TABLE `GAME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GAME_LINE`
--

DROP TABLE IF EXISTS `GAME_LINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GAME_LINE` (
  `GAME_NUM` tinyint(4) DEFAULT NULL,
  `TEAM_CODE` varchar(3) DEFAULT NULL,
  `GLINE_CODE` varchar(1) DEFAULT NULL,
  `GLINE_POINTS` tinyint(4) DEFAULT NULL,
  `GLINE_FOULS` tinyint(4) DEFAULT NULL,
  `GLINE_TIMEOUTS` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GAME_LINE`
--

LOCK TABLES `GAME_LINE` WRITE;
/*!40000 ALTER TABLE `GAME_LINE` DISABLE KEYS */;
INSERT INTO `GAME_LINE` VALUES (1,'BRS','H',85,4,3),(1,'EAG','H',56,7,5),(1,'EAG','V',68,3,3),(1,'RTL','V',76,6,2),(1,'SRK','V',77,3,3),(1,'TGS','H',73,2,4);
/*!40000 ALTER TABLE `GAME_LINE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOCATION`
--

DROP TABLE IF EXISTS `LOCATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOCATION` (
  `LOC_ID` varchar(7) DEFAULT NULL,
  `CITY_CODE` varchar(3) DEFAULT NULL,
  `LOC_NAME` varchar(22) DEFAULT NULL,
  `LOC_ADDRESS` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOCATION`
--

LOCK TABLES `LOCATION` WRITE;
/*!40000 ALTER TABLE `LOCATION` DISABLE KEYS */;
INSERT INTO `LOCATION` VALUES ('BNA-CP3','BNA','City Park, field 3','Brandon Road'),('MBT-SC1','MBT','Sport Complex, field 1','Old Fort Road'),('MNC-CP1','MNC','City Park, field 1','Harmon Circle'),('MQY-NSC','MQY','Nunson Sport Complex','Trydon Blvd.');
/*!40000 ALTER TABLE `LOCATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PLAYER`
--

DROP TABLE IF EXISTS `PLAYER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PLAYER` (
  `PLAYER_CODE` varchar(5) DEFAULT NULL,
  `PLAYER_LNAME` varchar(12) DEFAULT NULL,
  `TEAM_CODE` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLAYER`
--

LOCK TABLES `PLAYER` WRITE;
/*!40000 ALTER TABLE `PLAYER` DISABLE KEYS */;
INSERT INTO `PLAYER` VALUES ('BRS01','Oneido','BRS'),('BRS02','Johnson','BRS'),('BRS03','Smith','BRS'),('BRS04','Lee','BRS'),('BRS05','Okowski','BRS'),('BRS06','Grabel','BRS'),('BRS07','Roberts','BRS'),('BRS08','Vrooman','BRS'),('EAG01','Randal','EAG'),('EAG02','Jones','EAG'),('EAG03','Kliang','EAG'),('EAG04','Hernandez','EAG'),('EAG05','Washington','EAG'),('EAG06','Smith','EAG'),('EAG07','Freland','EAG'),('EAG08','McPherson','EAG'),('EAG09','Earlick','EAG'),('EAG10','Jones','EAG'),('RTL01','Johnson','RTL'),('RTL02','Swaboda','RTL'),('RTL03','Raya','RTL'),('RTL04','Hornbeak','RTL'),('RTL05','Sverdrup','RTL'),('RTL06','Robertson','RTL'),('RTL07','Janzen','RTL'),('SRK01','Amstel','SRK'),('SRK02','Lionheart','SRK'),('SRK03','Richards','SRK'),('SRK04','Yansen','SRK'),('SRK05','Williamson','SRK'),('SRK06','Herrera','SRK'),('SRK07','Gransten','SRK'),('SRK08','Wolsmar','SRK'),('SRK09','Smith','SRK'),('TGS01','Jones','TGS'),('TGS02','Ibera','TGS'),('TGS03','Kallenbacker','TGS'),('TGS04','Reston','TGS'),('TGS05','Yukon','TGS'),('TGS06','Preston','TGS'),('TGS07','Ronson','TGS'),('TGS08','Alivera','TGS'),('TGS09','Longstreet','TGS'),('TGS10','McDowell','TGS'),('TGS11','Canares','TGS');
/*!40000 ALTER TABLE `PLAYER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STAT`
--

DROP TABLE IF EXISTS `STAT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STAT` (
  `GAME_NUM` tinyint(4) DEFAULT NULL,
  `PLAYER_CODE` varchar(5) DEFAULT NULL,
  `STAT_POINTS` tinyint(4) DEFAULT NULL,
  `STAT_FOULS` tinyint(4) DEFAULT NULL,
  `STAT_FREETROWS_TAKEN` tinyint(4) DEFAULT NULL,
  `STAT_FREETROWS_MADE` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STAT`
--

LOCK TABLES `STAT` WRITE;
/*!40000 ALTER TABLE `STAT` DISABLE KEYS */;
INSERT INTO `STAT` VALUES (1,'BRS01',22,0,8,5),(1,'BRS02',12,2,0,0),(1,'BRS03',20,1,8,4),(1,'BRS04',15,1,4,4),(1,'BRS07',16,0,4,2),(1,'RTL01',20,2,0,0),(1,'RTL02',18,2,1,0),(1,'RTL03',15,1,2,1),(1,'RTL04',19,0,0,0),(1,'RTL05',4,1,0,0),(2,'EAG01',17,1,0,0),(2,'EAG02',23,1,0,0),(2,'EAG04',16,2,0,0),(2,'EAG06',0,3,0,0),(2,'SRK02',15,0,0,0),(2,'SRK05',20,0,0,0),(2,'SRK06',10,0,0,0),(2,'SRK07',6,1,0,0),(2,'SRK08',17,0,0,0),(2,'SRK09',9,2,0,0);
/*!40000 ALTER TABLE `STAT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TEAM`
--

DROP TABLE IF EXISTS `TEAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TEAM` (
  `TEAM_CODE` varchar(3) DEFAULT NULL,
  `TEAM_NAME` varchar(7) DEFAULT NULL,
  `CITY_CODE` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TEAM`
--

LOCK TABLES `TEAM` WRITE;
/*!40000 ALTER TABLE `TEAM` DISABLE KEYS */;
INSERT INTO `TEAM` VALUES ('BRS','Bears','MQY'),('EAG','Eagles','MNC'),('RTL','Ratlers','BNA'),('SRK','Sharks','BNA'),('TGS','Tigers','MBT');
/*!40000 ALTER TABLE `TEAM` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-27 22:44:47
