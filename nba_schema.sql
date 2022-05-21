CREATE DATABASE  IF NOT EXISTS `nba` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `nba`;
-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: localhost    Database: nba
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `accolades`
--

DROP TABLE IF EXISTS `accolades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accolades` (
  `accolade_ID` int NOT NULL AUTO_INCREMENT,
  `wins` int DEFAULT NULL,
  `losses` int DEFAULT NULL,
  `team_id` int NOT NULL,
  PRIMARY KEY (`accolade_ID`),
  KEY `fk_Accolades_Team Information1_idx` (`team_id`),
  CONSTRAINT `fk_Accolades_Team Information1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accolades`
--

LOCK TABLES `accolades` WRITE;
/*!40000 ALTER TABLE `accolades` DISABLE KEYS */;
INSERT INTO `accolades` VALUES (1,29,53,8),(2,49,33,5),(3,42,40,17),(4,39,43,10),(5,22,60,3),(6,19,63,4),(7,33,49,16),(8,54,28,18),(9,41,41,21),(10,57,25,29),(11,53,29,23),(12,48,34,19),(13,48,34,6),(14,37,45,14),(15,33,49,7),(16,39,43,9),(17,60,22,2),(18,36,46,27),(19,33,49,20),(20,17,65,13),(21,49,33,26),(22,42,40,15),(23,51,31,1),(24,19,63,25),(25,53,29,28),(26,39,43,12),(27,48,34,24),(28,58,24,22),(29,50,32,11),(30,32,50,30);
/*!40000 ALTER TABLE `accolades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arena`
--

DROP TABLE IF EXISTS `arena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arena` (
  `arena_id` int NOT NULL AUTO_INCREMENT,
  `arena_name` varchar(45) NOT NULL,
  `arena_city` varchar(45) DEFAULT NULL,
  `arena_state` varchar(45) DEFAULT NULL,
  `arena_country` varchar(45) NOT NULL,
  `zip_code` int DEFAULT NULL,
  `capacity` varchar(45) DEFAULT NULL,
  `arena_sponsor` varchar(45) DEFAULT NULL,
  `year_opened` varchar(45) DEFAULT NULL,
  `team_id` int NOT NULL,
  PRIMARY KEY (`arena_id`),
  KEY `fk_Arena_Team Information1_idx` (`team_id`),
  CONSTRAINT `fk_Arena_Team Information1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arena`
--

LOCK TABLES `arena` WRITE;
/*!40000 ALTER TABLE `arena` DISABLE KEYS */;
INSERT INTO `arena` VALUES (1,'American Airlines Arena','Dallas','Texas','USA',75219,'19200','Chime','2001',16),(2,'Amway Arena','Orlando','Florida','USA',32801,'18846','Walt Disney World','2010',15),(3,'AT&T Center','San Antonio','Texas','USA',78219,'18418','Frost Bank','2002',24),(4,'Ball Arena','Denver','Colorado','USA',78219,'19520','Western Union','1999',18),(5,'Barclays Center','Brooklyn','New York','USA',11217,'17732','Infor','2012',17),(6,'Captitol One Arena','Washington, D.C.',NULL,'USA',20004,'20356','Geico','1997',30),(7,'Chase Center','San Francisco','California','USA',94158,'18064','Rakuten','2019',29),(8,'STAPLES Center','Los Angeles','California','USA',90015,'19079','Wish','2019',6),(9,'STAPLES Center','Los Angeles','California','USA',90015,'19079','Wish','2019',14),(10,'FedexForum','Memphis','Tennessee','USA',38103,'18119','FedEx','2004',7),(11,'Fiserv Forum','Milwaukee','Wisconsin','USA',53203,'17341','Motorola','2018',2),(12,'American Airlines Arena','Miami','Florida','USA',33132,'19600','Ultimate Software','1999',9),(13,'Gainbridge Fieldhouse','Indianapolis','Indiana','USA',46204,'17923','Motorola','1999',19),(14,'Golden 1 Center','Sacramento','California','USA',95814,'17608','Blue Diamond Growers','2016',12),(15,'Little Caesars Arena','Detroit','Michigan','USA',48201,'20332','Flagstar Bank','2017',21),(16,'Madison Square Garden','New York City','New York','USA',10001,'20789','Squarespace','1968',13),(17,'Moda Center','Portland','Oregon','USA',97227,'19980','Biofreeze','1995',28),(18,'Smoothie King Center','New Orleans','Louisiana','USA',70113,'16867','Zatarain\'s','1999',20),(19,'Spectrum Center','Charlotte','North Carolina','USA',28202,'19077','LendingTree','2005',10),(20,'State Farm Arena','Atlanta','Georgia','USA',30303,'16600','Sharecare','1999',8),(21,'Target Center','Minneapolis','Minnesota','USA',55403,'18798','Fitbit','1990',27),(22,'TD Garden','Boston','Massachusetts','USA',2114,'19156','General Electric','1995',5),(23,'Toyota Center','Houston','Texas','USA',77002,'18055','ROKiT Phones','2003',23),(24,'United Center','Chicago','Illinois','USA',60612,'20917','Zenni Optical','1994',3),(25,'Vivint Arena','Salt Lake City','Utah','USA',84101,'18300','Qualtrics','1991',11),(26,'Wells Fargo Center','Philadelphia','Pennsylvania','USA',19148,'20478','Stubhub','1996',1),(27,'Rocket Mortgage Field House','Cleveland ','Ohio','USA',44115,'19432','Goodyear Tire and Rubber Company ','1994',4),(29,'Talking Stick Resort Arena','Phoenix','Arizona','USA',85004,'18422','PayPal','1992',25),(30,'Paycom Center','Oklahoma City','Oklahoma','USA',73102,'18203','Love\'s Travel Stops & Country Stores','2002',26);
/*!40000 ALTER TABLE `arena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coaches`
--

DROP TABLE IF EXISTS `coaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coaches` (
  `coach_ID` int NOT NULL AUTO_INCREMENT,
  `coach_name` varchar(45) NOT NULL,
  `coach_age` int NOT NULL,
  `coach_birth_place` varchar(45) DEFAULT NULL,
  `coach_nationality` varchar(45) DEFAULT NULL,
  `coach_college` varchar(45) DEFAULT NULL,
  `team_id` int NOT NULL,
  PRIMARY KEY (`coach_ID`),
  KEY `fk_Coach Information_Team Information_idx` (`team_id`),
  CONSTRAINT `fk_Coach Information_Team Information` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coaches`
--

LOCK TABLES `coaches` WRITE;
/*!40000 ALTER TABLE `coaches` DISABLE KEYS */;
INSERT INTO `coaches` VALUES (1,'Brad Stevens ',45,'Zionsville, Indiana ','American','DePauw University ',5),(2,'Doc Rivers',60,'Chicago, Illinois ','American','Marquette',6),(3,'Dwane Casey',64,'Indianapolis, Indiana ','American','Kentucky ',21),(4,'Erik Spoelstra ',51,'Evanston, Illinois ','American','University of Portland ',9),(5,'Fred Hoiberg ',49,'Lincoln, Nebraska','American','Iowa State ',3),(6,'J.B Bickerstaff',43,'Denver, Colorado ','American','Minnesota ',7),(7,'James Borrego ',44,'Albuquerque, New Mexico ','American','University of San Diego ',10),(8,'Kenny Atkinson',54,'Huntington, New York ','American','Richmond ',17),(9,'Larry Drew ',63,'Kansas City, Kansas','American','Missouri ',4),(10,'Lloyd Pierce',45,'San Jose, California ','American','Santa Clara ',8),(11,'Luke Walton ',41,'San Diego, California ','American','Arizona ',14),(12,'Michael Malone ',50,'Queens, NY','American','Loyola ',18),(13,'Mike Budenholzer ',52,'Holbrook, Arizona ','American','Pomona College',2),(14,'Mike D\'Antoni',70,'Mullens, West Virginia','American','Marshall ',23),(15,'Nate McMillan',57,'Raleigh, North Carolina','American','NC State',19),(16,'Rick Carlisle',62,'Ogdensburg, New York','American','Virginia State',16),(17,'Steve Kerr',56,'Beirut, Lebanon ','Lebanese','Arizona State',29),(18,'Tom Thibodeau',64,'New Britain, Connecticut ','American','Salem State University ',27),(19,'Scott Brooks',56,'French Camp, California','American','University of California, Irvine',30),(20,'Brett Brown ',61,'South Portland, Maine','American','Boston University',1),(21,'Quin Snider',55,'Mercer Island, Washington','American','Duke',11),(22,'Dave Joerger',48,'Staples, Minnesota','American','Minnesota State University Moorhead',12),(23,'David Fizdale',47,'Los Angeles, California','American','University of San Diego',13),(24,'Steve Clifford',60,'Orlando, Florida','American','University of Louisiana-Lafayette',15),(25,'Alvin Gentry',67,'Shelby, North Carolina ','American','Appalachian State Univeristy ',20),(26,'Nick Nurse',54,'Carroll, Iowa','American','University of Northern Iowa',22),(27,'Gregg Popovich',73,'East Chicago, Indiana','American ','Air Force ',24),(28,'Igor Kokoskov',50,'Belgrade, Serbia','Serbian ','N/A',25),(29,'Billy Donovan',56,'Rockville Centre, New York ','American','Providence College',26),(30,'Terry Stotts',64,'Cedar Falls, Iowa','American ','Oklahoma State',28);
/*!40000 ALTER TABLE `coaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_stats`
--

DROP TABLE IF EXISTS `player_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_stats` (
  `player_stats_id` int NOT NULL AUTO_INCREMENT,
  `average_pts` decimal(5,1) DEFAULT NULL,
  `average_3p` decimal(5,3) DEFAULT NULL,
  `average_assists` decimal(5,1) DEFAULT NULL,
  `average_FT` decimal(5,3) DEFAULT NULL,
  `average_blocks` decimal(5,1) DEFAULT NULL,
  PRIMARY KEY (`player_stats_id`)
) ENGINE=InnoDB AUTO_INCREMENT=531 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_stats`
--

LOCK TABLES `player_stats` WRITE;
/*!40000 ALTER TABLE `player_stats` DISABLE KEYS */;
INSERT INTO `player_stats` VALUES (1,16.0,0.349,3.7,0.731,0.7),(2,5.9,0.339,1.7,0.820,0.3),(3,5.3,0.323,0.6,0.923,0.2),(4,1.7,0.133,0.8,0.700,0.4),(5,3.2,0.338,1.9,0.778,0.1),(6,8.9,0.200,2.2,0.735,0.8),(7,13.9,0.000,1.6,0.500,1.0),(8,1.7,0.261,0.3,1.000,0.2),(9,1.0,0.000,0.9,0.500,0.0),(10,21.3,0.238,2.4,0.847,1.3),(11,3.7,0.250,1.3,0.667,0.0),(12,5.6,0.323,0.7,0.750,0.2),(13,10.9,0.133,1.4,0.709,1.5),(14,9.9,0.472,4.0,0.778,0.2),(15,9.4,0.343,1.3,0.867,0.4),(16,3.7,0.312,0.5,0.743,0.3),(17,8.0,0.265,3.0,0.578,0.9),(18,2.5,0.225,0.8,0.750,0.0),(19,0.0,NULL,0.3,NULL,0.3),(20,27.7,0.256,5.9,0.729,1.5),(21,1.0,NULL,0.0,0.500,0.0),(22,13.4,0.328,0.5,0.682,0.7),(23,7.0,0.332,0.7,0.581,0.3),(24,6.7,0.373,3.3,0.873,0.0),(25,12.5,0.334,3.7,0.793,0.3),(26,11.7,0.421,5.3,0.866,0.0),(27,16.3,0.000,1.8,0.746,0.9),(28,7.3,0.437,1.1,0.739,0.1),(29,14.9,0.313,1.0,0.691,1.0),(30,0.9,0.077,1.0,0.833,0.1),(31,1.9,0.222,0.8,0.727,0.1),(32,9.9,0.329,5.4,0.417,0.4),(33,6.2,0.300,0.8,0.587,1.4),(34,10.9,0.297,5.6,0.705,0.0),(35,16.4,0.395,1.5,0.824,0.2),(36,11.5,0.342,2.9,0.770,0.5),(37,5.0,0.250,0.6,0.643,0.5),(38,9.3,0.389,3.3,0.865,0.6),(39,6.1,0.296,3.5,0.571,0.1),(40,5.6,0.344,1.1,0.855,0.7),(41,11.6,0.320,2.3,0.726,0.6),(42,25.6,0.351,5.5,0.808,0.7),(43,11.3,0.402,1.2,0.848,0.1),(44,7.0,0.176,1.0,0.718,0.4),(45,10.5,0.372,1.7,0.903,0.1),(46,3.3,0.000,1.1,0.610,0.8),(47,8.4,0.289,2.5,0.640,0.5),(48,5.0,0.218,1.2,0.593,0.5),(49,2.8,0.294,0.8,NULL,0.0),(50,8.0,0.429,1.3,0.883,0.4),(51,7.6,0.397,3.8,0.780,0.6),(52,4.8,0.000,0.8,0.699,0.6),(53,4.4,NULL,0.6,0.637,0.8),(54,9.6,0.401,1.9,0.761,0.7),(55,7.3,0.396,0.7,0.658,0.2),(56,15.9,0.329,5.5,0.750,0.4),(57,4.2,0.256,0.5,0.769,0.3),(58,14.1,0.360,3.8,0.827,0.2),(59,18.0,0.425,2.0,0.807,0.0),(60,3.5,NULL,1.0,1.000,0.7),(61,4.7,0.354,0.9,0.481,0.9),(62,0.9,0.000,0.7,0.600,0.2),(63,26.6,0.326,6.8,0.866,0.2),(64,3.3,0.324,0.1,0.867,0.9),(65,9.9,0.351,2.4,0.860,0.3),(66,5.7,NULL,0.3,0.500,0.7),(67,4.9,0.318,1.3,0.721,0.2),(68,8.3,0.335,2.1,0.805,0.5),(69,7.5,0.325,1.2,0.753,0.6),(70,3.5,0.324,2.2,0.577,0.1),(71,4.0,0.409,0.5,0.789,0.1),(72,15.6,0.426,3.2,0.928,0.2),(73,7.5,0.375,0.9,0.733,0.2),(74,6.6,0.278,0.9,0.697,0.1),(75,4.3,0.258,1.2,0.750,0.5),(76,13.0,0.344,1.4,0.658,0.4),(77,2.1,0.214,1.1,1.000,0.2),(78,6.4,0.361,1.4,0.690,0.1),(79,4.8,0.319,1.5,0.681,0.1),(80,9.3,0.348,3.2,0.725,0.1),(81,10.5,0.333,1.3,0.781,0.9),(82,11.3,0.377,2.0,0.859,0.2),(83,10.9,0.352,2.7,0.831,0.1),(84,8.8,0.363,2.0,0.823,0.3),(85,2.6,0.296,0.3,0.667,0.3),(86,18.7,0.347,4.0,0.855,0.6),(87,8.3,0.369,1.5,0.840,1.0),(88,2.3,0.246,2.3,0.818,0.1),(89,11.4,0.347,1.3,0.867,0.2),(90,6.0,0.354,2.8,0.792,0.1),(91,16.6,NULL,1.4,0.636,1.5),(92,11.1,0.342,1.3,0.760,0.1),(93,4.8,0.263,2.5,0.604,0.5),(94,4.4,0.333,1.8,0.813,0.3),(95,7.4,0.389,1.1,0.712,0.4),(96,10.3,0.188,1.8,0.795,1.3),(97,9.2,0.480,3.1,0.797,0.4),(98,6.3,0.349,0.7,0.672,0.3),(99,11.9,0.500,2.4,0.551,0.6),(100,2.5,0.667,1.0,NULL,0.0),(101,0.8,0.200,0.1,1.000,0.0),(102,3.1,0.000,0.7,0.586,0.4),(103,6.0,0.373,1.6,0.720,0.4),(104,2.0,NULL,1.0,NULL,0.0),(105,0.9,0.400,0.6,NULL,0.1),(106,4.2,0.222,0.5,0.711,0.3),(107,2.9,0.297,0.4,1.000,0.5),(108,6.7,0.327,1.6,0.892,0.1),(109,16.8,0.324,2.4,0.844,0.2),(110,19.5,0.348,2.0,0.763,0.6),(111,6.6,0.331,0.9,0.746,0.9),(112,11.2,0.407,6.0,0.832,0.1),(113,4.9,0.238,0.4,0.889,0.1),(114,21.1,0.364,6.4,0.845,0.3),(115,6.9,0.330,2.0,0.725,0.4),(116,6.9,0.405,1.6,0.769,0.0),(117,16.3,0.274,3.6,0.736,1.5),(118,13.3,0.378,1.3,0.764,1.3),(119,9.6,0.378,1.1,0.732,0.3),(120,5.7,0.324,1.0,0.700,0.6),(121,7.9,0.332,3.6,0.845,0.2),(122,4.2,0.000,1.2,0.714,0.0),(123,11.9,0.331,1.7,0.721,0.4),(124,3.0,0.462,0.8,0.778,0.2),(125,7.9,0.450,0.9,0.846,0.2),(126,27.3,0.437,5.2,0.916,0.4),(127,6.2,0.381,0.5,0.783,0.1),(128,25.9,0.331,3.9,0.794,2.4),(129,4.0,0.000,0.6,0.600,0.6),(130,5.8,0.000,0.8,0.617,0.4),(131,0.0,NULL,0.0,NULL,0.0),(132,10.8,0.382,1.4,0.814,1.1),(133,6.1,0.306,1.0,0.609,0.1),(134,1.5,NULL,0.0,0.500,0.0),(135,5.9,0.338,3.8,0.808,0.0),(136,7.1,0.318,0.8,0.714,0.4),(137,21.2,0.156,6.2,0.830,0.5),(138,4.2,0.500,0.1,0.800,0.1),(139,6.0,0.250,0.5,0.746,0.5),(140,3.7,0.167,0.3,0.610,0.2),(141,6.4,0.339,0.9,0.830,0.5),(142,16.8,0.335,4.6,0.806,0.3),(143,4.9,0.265,1.1,0.750,0.2),(144,21.2,0.327,6.0,0.713,0.3),(145,6.2,0.333,1.2,0.623,0.0),(146,10.7,0.368,1.8,0.745,0.1),(147,3.2,0.250,0.8,0.500,0.0),(148,13.7,0.348,4.8,0.782,0.1),(149,17.3,0.132,1.4,0.590,1.7),(150,4.9,0.351,1.4,0.696,0.3),(151,11.3,0.354,6.0,0.797,0.5),(152,26.0,0.353,5.9,0.885,1.1),(153,1.7,1.000,0.7,NULL,0.0),(154,1.5,0.250,0.0,NULL,0.0),(155,6.0,0.447,0.8,0.760,0.1),(156,10.3,0.371,1.4,0.796,0.1),(157,27.5,0.300,3.7,0.804,1.9),(158,6.7,0.353,0.7,0.716,0.4),(159,1.8,NULL,0.3,0.846,0.2),(160,1.3,0.267,0.8,0.000,0.1),(161,0.8,0.000,1.3,NULL,0.0),(162,10.2,0.356,2.4,0.719,0.3),(163,6.9,0.290,2.6,0.791,0.1),(164,10.4,0.320,0.5,0.646,0.6),(165,11.8,0.218,1.2,0.675,1.4),(166,4.0,0.000,0.6,0.685,0.1),(167,4.3,0.328,1.6,0.923,0.2),(168,6.9,0.366,1.0,0.725,0.2),(169,5.9,0.362,1.9,0.896,0.1),(170,7.5,0.311,1.2,0.709,0.4),(171,11.8,0.426,2.1,0.885,0.0),(172,15.1,0.340,3.6,0.806,0.1),(173,17.3,0.371,7.3,0.727,0.6),(174,1.5,0.000,0.1,0.250,0.0),(175,5.3,0.366,4.2,0.759,0.1),(176,3.7,0.000,1.3,1.000,0.0),(177,13.7,0.294,1.7,0.787,0.4),(178,3.6,0.405,0.6,0.786,0.1),(179,8.2,0.286,3.1,0.568,0.3),(180,19.8,0.433,2.6,0.904,0.3),(181,8.4,0.355,1.1,0.844,0.1),(182,6.5,0.000,1.8,1.000,0.3),(183,13.6,0.363,4.4,0.759,1.1),(184,3.9,0.462,1.7,0.700,0.5),(185,13.7,0.402,2.6,0.816,0.5),(186,28.0,0.386,4.1,0.839,0.4),(187,10.8,0.324,1.2,0.757,0.6),(188,7.0,0.000,1.5,0.637,0.4),(189,10.8,0.367,3.3,0.800,0.5),(190,15.9,NULL,2.0,0.636,2.3),(191,1.4,0.333,0.9,0.818,0.0),(192,16.2,0.360,1.9,0.783,0.4),(193,5.0,NULL,1.4,0.729,0.5),(194,4.7,0.281,2.6,0.761,0.0),(195,5.3,0.297,1.0,0.818,0.2),(196,13.6,0.392,1.0,0.710,1.3),(197,4.2,0.364,2.6,0.650,0.1),(198,0.0,0.000,0.0,NULL,0.0),(199,10.3,0.455,1.6,0.841,0.7),(200,7.4,0.285,6.9,0.692,1.1),(201,9.2,0.354,0.5,0.838,0.4),(202,9.4,0.403,0.8,0.792,0.5),(203,12.3,0.347,1.8,0.888,0.5),(204,24.5,0.362,5.4,0.753,0.4),(205,3.0,0.348,1.2,0.500,0.1),(206,4.0,0.000,2.5,1.000,0.0),(207,18.1,0.340,2.4,0.841,0.1),(208,36.1,0.368,7.5,0.879,0.7),(209,7.7,0.275,1.2,0.671,0.9),(210,16.6,0.176,2.0,0.643,1.3),(211,6.3,0.310,1.8,0.761,0.2),(212,12.9,0.339,2.2,0.799,0.3),(213,13.7,0.474,2.4,0.827,0.2),(214,20.0,0.397,2.8,0.866,0.5),(215,3.2,0.200,1.4,0.944,0.1),(216,6.5,0.270,1.9,0.667,0.4),(217,7.8,0.336,1.4,0.688,0.6),(218,1.9,0.333,0.5,0.786,0.4),(219,2.5,0.000,0.2,0.750,0.0),(220,11.5,0.333,3.4,0.834,0.3),(221,5.6,0.355,1.0,0.600,0.8),(222,5.8,0.365,0.8,0.767,0.3),(223,7.3,0.385,1.0,0.694,0.3),(224,8.8,0.276,1.5,0.763,0.1),(225,4.0,NULL,0.7,0.800,1.0),(226,20.7,0.427,2.5,0.886,0.4),(227,1.8,0.200,0.4,0.000,0.0),(228,3.6,0.000,0.6,0.660,0.4),(229,7.6,0.314,2.3,0.824,0.1),(230,4.3,0.317,1.3,0.719,0.2),(231,21.2,0.325,7.7,0.768,0.8),(232,10.5,0.348,1.8,0.896,0.4),(233,0.0,NULL,0.0,NULL,0.0),(234,8.9,0.184,1.6,0.645,0.5),(235,8.2,NULL,0.9,0.731,1.1),(236,11.2,0.356,1.8,0.884,0.2),(237,13.6,0.360,4.2,0.821,1.3),(238,9.4,0.416,1.0,0.789,0.3),(239,12.8,NULL,0.4,0.604,0.4),(240,9.7,0.385,2.9,0.732,0.3),(241,3.0,0.273,0.0,NULL,0.0),(242,17.0,0.400,3.0,0.500,0.0),(243,5.2,0.280,0.8,0.605,0.1),(244,15.0,0.290,1.3,0.763,1.4),(245,5.7,0.333,3.2,0.582,0.8),(246,6.8,0.363,0.8,0.824,0.3),(247,12.1,0.391,5.7,0.707,0.2),(248,0.0,0.000,0.0,NULL,0.0),(249,18.3,0.330,3.0,0.675,0.6),(250,23.8,0.401,6.9,0.873,0.5),(251,9.6,0.323,1.1,0.815,1.3),(252,5.0,0.367,1.1,0.816,0.3),(253,3.7,0.333,0.8,1.000,0.0),(254,8.1,0.314,1.1,0.740,0.0),(255,13.8,0.359,1.1,0.766,1.4),(256,11.5,0.324,2.3,0.671,0.7),(257,7.2,0.355,1.2,0.785,0.2),(258,15.4,0.369,4.2,0.864,0.1),(259,27.4,0.339,8.3,0.665,0.6),(260,2.3,NULL,0.3,0.875,0.3),(261,4.7,0.379,0.8,0.833,0.1),(262,6.3,0.367,1.3,0.800,0.2),(263,0.9,0.500,0.1,0.500,0.2),(264,3.9,0.300,1.2,0.756,0.3),(265,3.3,0.429,0.0,1.000,0.0),(266,7.8,0.336,2.5,0.714,0.5),(267,6.9,0.288,1.3,0.781,0.2),(268,10.9,0.346,2.9,0.748,0.5),(269,3.4,0.329,0.6,0.684,0.3),(270,20.1,0.307,7.3,0.821,0.7),(271,5.4,NULL,1.2,0.649,1.0),(272,7.0,0.308,0.6,0.607,0.7),(273,5.1,0.357,0.4,0.704,0.1),(274,4.5,0.200,2.2,0.500,0.8),(275,1.0,0.000,0.0,0.000,0.0),(276,6.9,0.317,4.8,0.841,0.1),(277,11.0,NULL,2.3,0.705,1.1),(278,6.5,0.322,3.9,0.698,0.3),(279,8.6,0.360,1.3,0.738,0.3),(280,9.7,0.394,1.8,0.836,0.2),(281,6.7,0.340,1.0,0.772,0.6),(282,0.0,NULL,0.0,NULL,0.0),(283,6.8,0.353,1.0,0.784,1.1),(284,6.8,0.318,1.8,0.794,0.1),(285,12.8,0.343,1.1,0.717,0.3),(286,5.8,0.326,1.1,0.818,0.0),(287,7.0,0.363,1.2,0.826,0.9),(288,8.6,0.397,1.2,0.822,0.2),(289,3.7,NULL,0.9,0.417,0.4),(290,8.5,0.315,0.8,0.783,0.4),(291,18.7,0.303,2.5,0.752,0.4),(292,3.0,0.462,0.5,0.529,0.3),(293,15.3,0.348,2.2,0.888,0.4),(294,23.7,0.374,4.5,0.832,0.4),(295,7.6,0.326,0.7,0.704,0.4),(296,3.9,0.258,0.4,0.613,0.3),(297,4.0,0.291,1.1,0.667,0.1),(298,4.9,0.397,0.4,0.864,0.0),(299,14.3,0.400,5.0,0.727,0.2),(300,11.1,0.363,1.1,0.648,0.9),(301,26.6,0.371,3.3,0.854,0.4),(302,5.9,0.450,1.2,0.843,0.1),(303,3.8,0.091,0.3,0.742,0.1),(304,13.7,0.312,3.9,0.691,0.4),(305,25.8,0.369,6.9,0.912,0.4),(306,9.6,0.294,3.1,0.838,0.2),(307,4.0,0.000,1.8,0.784,0.4),(308,0.0,0.000,0.0,NULL,0.0),(309,6.3,0.100,1.5,0.619,0.7),(310,12.5,0.365,1.2,0.842,2.2),(311,9.5,0.226,1.2,0.724,1.1),(312,17.0,0.361,2.2,0.904,0.2),(313,14.2,0.347,8.7,0.830,0.5),(314,2.4,0.500,0.5,0.818,0.0),(315,2.0,0.000,1.0,1.000,0.0),(316,4.6,0.310,0.5,0.756,0.2),(317,0.9,0.400,0.2,0.333,0.0),(318,8.5,0.255,1.4,0.698,0.4),(319,2.5,1.000,0.8,1.000,0.0),(320,7.5,0.354,3.2,0.690,0.1),(321,3.6,0.455,0.9,0.571,0.0),(322,3.0,0.000,1.0,NULL,0.0),(323,4.1,0.188,0.7,0.689,0.5),(324,5.0,0.320,0.7,0.667,0.8),(325,7.3,0.400,0.9,0.748,0.5),(326,18.7,0.361,1.4,0.872,0.6),(327,2.7,0.351,0.4,0.818,0.2),(328,5.1,0.219,2.2,0.684,0.1),(329,1.0,0.000,0.0,NULL,0.0),(330,12.2,0.372,2.3,0.810,0.2),(331,5.0,0.333,0.5,0.400,0.3),(332,4.0,0.000,0.0,0.000,0.0),(333,2.6,0.321,1.0,0.867,0.1),(334,21.0,0.375,3.0,0.828,0.4),(335,6.4,0.333,3.4,0.784,0.2),(336,7.3,0.408,0.9,0.835,0.1),(337,12.0,0.083,0.7,0.632,2.0),(338,7.6,0.351,1.7,0.722,0.2),(339,4.7,0.356,0.4,0.563,0.2),(340,3.9,0.415,0.2,0.667,0.2),(341,5.9,0.286,1.1,0.800,0.3),(342,6.4,0.444,1.0,1.000,0.1),(343,3.9,0.324,1.0,0.625,0.7),(344,5.0,0.305,3.2,0.750,0.5),(345,1.8,0.000,0.4,0.765,0.1),(346,18.3,0.378,4.3,0.837,0.1),(347,6.4,0.330,0.7,0.828,0.3),(348,8.2,0.365,2.1,0.789,0.3),(349,3.5,0.476,0.1,0.750,0.1),(350,9.9,0.394,3.0,0.854,0.1),(351,12.6,0.365,2.0,0.727,0.8),(352,4.4,0.318,0.9,0.714,0.4),(353,15.2,0.365,1.2,0.847,0.7),(354,23.8,0.362,4.2,0.806,0.4),(355,1.1,0.182,1.1,1.000,0.1),(356,8.9,0.330,1.6,0.882,0.3),(357,5.3,0.200,0.6,0.625,0.2),(358,11.9,0.432,1.9,0.763,0.2),(359,1.4,1.000,0.8,NULL,0.2),(360,2.5,0.333,1.0,0.500,0.0),(361,13.9,0.375,1.5,0.844,0.3),(362,9.4,0.335,1.4,0.772,0.4),(363,10.4,0.414,3.6,0.802,0.0),(364,2.0,NULL,0.3,0.000,0.3),(365,4.6,0.000,0.5,0.600,0.1),(366,14.8,0.329,3.9,0.774,0.3),(367,18.2,0.367,4.8,0.848,0.4),(368,2.1,0.100,0.2,0.000,0.0),(369,7.0,0.348,1.2,0.824,0.6),(370,3.2,0.326,0.9,0.600,0.0),(371,4.0,0.320,0.3,0.750,0.2),(372,9.4,0.337,3.2,0.716,0.6),(373,9.4,0.333,2.6,0.833,0.3),(374,5.3,0.333,2.5,0.848,0.1),(375,4.0,0.410,0.6,0.833,0.1),(376,7.1,0.000,2.1,0.716,0.7),(377,4.9,NULL,0.6,0.684,1.2),(378,7.3,0.312,0.7,0.780,0.4),(379,5.7,0.287,2.8,0.767,0.3),(380,2.4,0.320,0.5,1.000,0.0),(381,15.6,0.103,3.2,0.773,1.4),(382,6.5,0.320,1.1,0.682,0.3),(383,5.2,0.386,1.5,0.762,0.3),(384,3.5,0.083,1.2,0.810,0.6),(385,3.3,0.315,0.4,0.615,0.1),(386,8.2,0.200,0.7,0.663,0.7),(387,5.7,0.295,2.4,0.787,0.1),(388,7.7,0.279,1.2,0.728,0.4),(389,18.8,0.343,5.2,0.730,0.3),(390,10.0,0.354,1.8,0.822,0.5),(391,13.0,0.348,2.6,0.779,0.1),(392,15.2,0.320,1.2,0.775,0.9),(393,3.9,0.000,1.3,0.782,0.3),(394,14.5,0.313,2.4,0.712,0.5),(395,9.5,0.255,3.7,0.734,0.1),(396,7.5,0.309,1.7,0.880,0.2),(397,3.6,0.336,0.5,0.633,0.2),(398,1.7,0.000,1.0,0.500,0.0),(399,15.6,0.358,8.2,0.862,0.3),(400,6.3,0.298,2.7,0.805,0.2),(401,10.6,0.314,7.6,0.743,0.4),(402,3.7,0.500,1.3,NULL,0.3),(403,4.5,0.261,1.2,0.864,0.0),(404,7.8,0.200,3.0,0.561,0.9),(405,4.4,NULL,0.9,0.533,0.2),(406,5.5,NULL,1.2,0.533,0.9),(407,1.8,0.333,0.5,0.810,0.0),(408,13.9,0.406,2.1,0.813,0.6),(409,14.2,0.393,1.4,0.794,0.4),(410,10.6,0.307,1.5,0.772,0.6),(411,8.6,0.400,1.5,0.827,0.2),(412,5.1,0.391,0.8,0.621,0.5),(413,13.5,0.390,2.1,0.819,0.3),(414,2.0,NULL,0.0,NULL,0.0),(415,5.8,0.200,1.1,0.710,0.3),(416,5.5,0.400,2.0,0.694,0.1),(417,21.4,0.344,3.1,0.731,0.6),(418,18.1,0.397,2.7,0.894,0.2),(419,1.2,0.500,0.3,NULL,0.0),(420,5.0,0.412,0.7,0.889,0.1),(421,16.6,0.357,4.1,0.861,0.5),(422,1.4,0.320,0.0,0.800,0.0),(423,8.1,0.318,2.2,0.526,0.3),(424,6.7,0.000,0.9,0.643,0.9),(425,3.3,0.286,0.3,0.667,0.0),(426,4.2,0.290,0.4,0.800,0.2),(427,3.4,0.316,0.6,0.667,0.1),(428,7.3,NULL,0.6,0.600,2.4),(429,9.2,0.359,8.0,0.639,0.2),(430,18.0,0.370,4.3,0.856,0.2),(431,15.1,0.383,1.7,0.875,0.4),(432,9.0,0.353,2.9,0.785,0.3),(433,12.7,0.311,6.1,0.855,0.1),(434,21.1,0.369,7.0,0.780,0.2),(435,14.1,0.529,2.9,0.715,0.4),(436,5.1,0.379,0.7,0.667,0.2),(437,20.0,0.357,1.0,0.810,0.8),(438,10.6,0.365,1.6,0.880,0.1),(439,8.9,0.395,5.0,0.819,0.2),(440,15.5,0.341,4.1,0.819,0.2),(441,5.8,0.401,0.8,0.667,0.2),(442,3.8,0.436,0.5,0.636,0.1),(443,6.9,0.316,1.5,0.728,0.2),(444,16.7,0.402,3.0,0.839,0.1),(445,9.1,0.422,1.5,0.806,0.1),(446,7.5,0.348,1.8,0.800,0.4),(447,16.9,0.369,3.1,0.785,0.7),(448,3.0,1.000,0.0,NULL,0.0),(449,16.9,0.000,7.7,0.600,0.8),(450,6.5,0.269,2.3,0.742,0.3),(451,0.0,NULL,0.0,NULL,0.0),(452,3.8,0.345,0.7,0.563,0.0),(453,8.9,0.364,4.0,0.806,0.4),(454,13.6,0.322,4.8,0.635,0.4),(455,8.9,0.326,3.6,0.758,0.2),(456,6.7,0.308,1.9,0.800,0.3),(457,3.3,0.346,0.7,0.875,0.4),(458,6.7,0.375,1.7,0.750,0.3),(459,6.0,0.397,0.9,0.881,0.2),(460,3.9,0.000,0.4,0.333,0.6),(461,5.9,0.344,1.0,0.711,0.5),(462,5.9,0.372,1.2,0.891,0.1),(463,2.0,NULL,0.0,NULL,0.0),(464,7.2,0.371,2.1,0.685,0.1),(465,2.9,0.259,0.4,0.625,0.2),(466,2.0,0.143,0.5,0.667,0.0),(467,15.7,0.373,2.1,0.855,0.7),(468,12.1,0.333,8.2,0.804,0.4),(469,7.8,0.341,1.4,0.748,0.4),(470,3.2,0.370,2.1,0.571,0.1),(471,2.2,0.235,0.9,0.500,0.1),(472,3.3,NULL,0.7,0.500,0.0),(473,5.7,0.388,1.0,0.737,0.6),(474,8.1,0.279,1.9,0.630,0.1),(475,2.3,0.286,0.3,0.636,0.2),(476,4.5,0.278,0.6,0.750,0.2),(477,21.5,0.402,2.4,0.816,0.6),(478,10.9,NULL,2.0,0.642,0.4),(479,1.0,0.200,0.3,0.735,0.1),(480,5.0,0.377,0.7,0.783,0.3),(481,24.4,0.400,3.4,0.836,1.6),(482,2.7,0.238,0.3,0.429,0.1),(483,10.9,0.394,1.9,0.803,0.2),(484,7.3,0.377,1.2,0.695,0.5),(485,6.8,0.212,3.9,0.708,0.2),(486,13.3,0.388,1.6,0.736,2.7),(487,2.3,NULL,0.5,0.633,0.6),(488,0.0,NULL,0.0,NULL,0.0),(489,15.6,0.292,1.4,0.795,1.1),(490,1.4,0.000,0.2,0.600,0.1),(491,11.0,0.378,4.8,0.843,0.3),(492,8.4,0.336,1.9,0.712,0.8),(493,20.8,0.364,3.8,0.789,1.1),(494,15.0,0.330,4.2,0.708,0.5),(495,4.8,0.286,0.6,0.811,0.3),(496,12.0,0.377,2.8,0.500,0.2),(497,25.6,0.356,5.9,0.844,0.4),(498,2.6,0.385,0.5,0.800,0.2),(499,20.7,0.302,8.7,0.697,0.9),(500,3.5,0.211,0.7,0.526,0.1),(501,3.9,0.410,1.6,0.857,0.1),(502,18.0,0.428,1.5,0.815,0.7),(503,2.2,0.208,0.8,0.750,0.1),(504,2.6,0.125,0.5,0.700,0.1),(505,1.6,0.429,0.5,0.500,0.0),(506,22.9,0.290,10.7,0.656,0.5),(507,9.9,0.338,3.9,0.772,0.7),(508,0.0,0.000,0.0,NULL,0.0),(509,12.3,0.125,0.8,0.449,1.9),(510,18.1,0.339,2.5,0.699,0.7),(511,3.6,0.000,0.6,0.500,0.0),(512,2.6,0.313,0.8,0.000,0.0),(513,6.5,0.000,0.5,0.563,0.3),(514,6.1,0.333,1.8,0.684,0.4),(515,20.0,0.361,5.4,0.876,0.1),(516,10.1,0.366,1.2,0.767,0.8),(517,2.5,NULL,0.2,0.600,1.3),(518,5.3,0.318,0.5,0.600,0.4),(519,5.8,0.362,1.1,0.553,0.4),(520,12.6,0.375,4.3,0.628,0.3),(521,8.2,0.346,0.4,0.732,0.5),(522,8.7,0.298,3.3,0.793,0.4),(523,2.3,0.321,0.4,0.682,0.2),(524,2.3,0.375,0.5,NULL,0.3),(525,12.6,0.349,2.5,0.644,0.4),(526,19.1,0.324,8.1,0.829,0.2),(527,10.1,0.273,2.1,0.787,0.8),(528,7.7,0.000,0.7,0.778,0.5),(529,7.8,NULL,0.9,0.705,0.4),(530,8.9,NULL,1.1,0.802,0.9);
/*!40000 ALTER TABLE `player_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `player_id` int NOT NULL AUTO_INCREMENT,
  `player_name` varchar(45) NOT NULL,
  `jersey_number` varchar(45) DEFAULT NULL,
  `height_in` varchar(45) DEFAULT NULL,
  `weight_lbs` int DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `player_stats_id` int NOT NULL,
  `team_id` int NOT NULL,
  `position_id` int NOT NULL,
  PRIMARY KEY (`player_id`),
  KEY `fk_Players_Player Stats1_idx` (`player_stats_id`),
  KEY `fk_Players_Team Information1_idx` (`team_id`),
  KEY `fk_Players_Position1_idx` (`position_id`),
  CONSTRAINT `fk_Players_Player Stats1` FOREIGN KEY (`player_stats_id`) REFERENCES `player_stats` (`player_stats_id`),
  CONSTRAINT `fk_Players_Position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`),
  CONSTRAINT `fk_Players_Team Information1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Aaron Gordon','50','6-9',235,'USA',23,1,15,4),(2,'Al Horford','42','6-10',245,'Dominican Rep...',33,237,5,5),(3,'Al-Farouq Aminu','5','6-9',220,'USA',28,15,28,4),(4,'Allen Crabbe',NULL,'6-6',212,'USA',27,119,17,2),(5,'Andre Drummond','0','6-11',279,'USA',25,149,21,5),(6,'Andrew Harrison',NULL,'6-6',213,'USA',24,215,7,1),(7,'Andrew Wiggins','22','6-8',194,'Canada',24,510,27,3),(8,'Anthony Davis','3','6-10',253,'USA',26,128,20,5),(9,'Anthony Tolliver','43','6-8',250,'USA',34,480,27,4),(10,'Avery Bradley','20','6-2',180,'USA',28,65,6,2),(11,'Ben Simmons','10','6-10',230,'Australia',22,449,1,1),(12,'Blake Griffin','23','6-10',250,'USA',30,204,21,4),(13,'Bogdan Bogdanovic','13','6-6',205,'Serbia',26,58,12,2),(14,'Bojan Bogdanovic','44','6-8',216,'Croatia',30,59,19,3),(15,'Bradley Beal','3','6-5',207,'USA',26,42,30,2),(16,'Brandon Ingram','14','6-9',190,'USA',21,249,14,3),(17,'Brook Lopez','11','7-0',270,'USA',31,310,2,5),(18,'Bruce Brown','1','6-5',202,'USA',22,75,21,2),(19,'Buddy Hield','24','6-4',214,'Bahamas',26,226,12,2),(20,'Caris LeVert','3','6-7',204,'USA',24,304,17,4),(21,'Carmelo Anthony','7','6-8',240,'USA',35,22,23,3),(22,'Cedi Osman','16','6-8',215,'Turkey',24,391,4,3),(23,'Chris Paul','3','6-0',175,'USA',34,399,23,4),(24,'CJ McCollum','3','6-3',190,'USA',27,334,28,1),(25,'Clint Capela','15','6-10',240,'Switzerland',25,91,23,5),(26,'Cody Zeller','40','7-0',240,'USA',26,527,10,5),(27,'D.J. Augustin','4','6-0',183,'USA',31,26,15,2),(28,'D\'Angelo Russell','0','6-5',198,'USA',23,434,17,1),(29,'Damian Jones','30','7-0',245,'USA',24,271,29,5),(30,'Damian Lillard','0','6-3',195,'USA',28,305,28,1),(31,'Danilo Gallinari','8','6-10',225,'Italy',30,180,6,3),(32,'Danny Green','14','6-6',215,'USA',32,199,22,2),(33,'Dario Saric','20','6-10',223,'Croatia',25,438,1,4),(34,'Darren Collison',NULL,'6-0',175,'USA',31,112,19,1),(35,'De\'Aaron Fox','5','6-3',175,'USA',21,173,12,1),(36,'Deandre Ayton','22','7-1',250,'Bahamas',20,27,25,4),(37,'DeAndre Jordan','9','6-11',265,'USA',30,277,16,5),(38,'DeMar DeRozan','11','6-7',220,'USA',29,137,24,2),(39,'Dennis Smith Jr.',NULL,'6-3',195,'USA',21,454,16,2),(40,'Derrick Favors','15','6-10',265,'USA',27,165,11,3),(41,'Devin Booker','1','6-6',210,'USA',22,63,25,2),(42,'Dewayne Dedmon','21','7-0',245,'USA',29,132,8,5),(43,'Donovan Mitchell','45','6-3',215,'USA',22,354,11,2),(44,'Draymond Green','23','6-7',230,'USA',29,200,29,4),(45,'Dwight Howard','39','6-11',265,'USA',33,239,30,5),(46,'E\'Twaun Moore','55','6-4',191,'USA',30,358,20,2),(47,'Enes Freedom',NULL,'6-11',250,'Turkey',27,177,13,5),(48,'Eric Bledsoe','5','6-1',205,'USA',29,56,2,1),(49,'Evan Fournier','13','6-7',205,'France',26,172,15,2),(50,'Evan Turner','1','6-7',220,'USA',30,485,28,1),(51,'Gary Harris','14','6-4',210,'USA',24,212,18,2),(52,'George Hill','3','6-3',188,'USA',33,229,4,1),(53,'Giannis Antetokounmpo','34','6-11',242,'Greece',24,20,2,4),(54,'Goran Dragic','9','6-3',190,'Slovenia',33,148,9,1),(55,'Gordon Hayward','20','6-8',225,'USA',29,220,5,4),(56,'Harrison Barnes','40','6-8',225,'USA',27,35,16,4),(57,'Hassan Whiteside','21','7-0',265,'USA',30,509,9,5),(58,'Jabari Parker',NULL,'6-8',245,'USA',24,394,3,5),(59,'Jamal Murray','27','6-4',207,'Canada',22,367,18,1),(60,'James Harden','1','6-5',220,'USA',29,208,23,3),(61,'James Johnson','16','6-8',240,'USA',32,266,9,4),(62,'Jaren Jackson Jr.','13','6-11',242,'USA',19,255,7,3),(63,'Jarrett Allen','31','6-11',237,'USA',21,13,17,4),(64,'JaVale McGee','0','7-0',270,'USA',31,337,14,3),(65,'Jaylen Brown','7','6-7',220,'USA',22,76,5,2),(66,'Jayson Tatum','0','6-8',208,'USA',21,467,5,3),(67,'Jeff Teague','5','6-2',195,'USA',31,468,27,1),(68,'Jeremy Lamb','26','6-5',185,'USA',27,293,10,2),(69,'Joe Ingles','0','6-8',226,'Australia',31,247,11,4),(70,'Joel Embiid','21','7-0',250,'Cameroon',25,157,1,5),(71,'John Collins','20','6-10',235,'USA',21,110,8,4),(72,'John Wall','1','6-4',210,'USA',28,499,30,1),(73,'Jonas Valanciunas','17','7-0',265,'Lithuania',27,489,22,5),(74,'Jonathan Isaac','1','6-10',210,'USA',21,251,15,4),(75,'Josh Richardson','7','6-6',200,'USA',25,421,9,2),(76,'Jrue Holiday','21','6-4',205,'USA',29,231,20,2),(77,'Julius Randle','30','6-9',250,'USA',24,417,20,4),(78,'Justin Holiday','9','6-6',181,'USA',30,232,3,2),(79,'Jusuf Nurkic','27','7-0',275,'Bosnia and He...',24,381,28,5),(80,'Karl-Anthony Towns','32','7-0',248,'USA',23,481,27,5),(81,'Kawhi Leonard','2','6-7',230,'USA',28,301,22,3),(82,'Kemba Walker','8','6-1',184,'USA',29,497,10,1),(83,'Kent Bazemore','9','6-5',201,'USA',29,41,8,2),(84,'Kevin Durant','7','6-9',240,'USA',30,152,29,3),(85,'Kevin Knox II','5','6-9',215,'USA',19,285,13,4),(86,'Kevin Love','0','6-10',251,'USA',30,312,4,4),(87,'Khris Middleton','22','6-8',222,'USA',27,346,2,3),(88,'Klay Thompson','11','6-7',215,'USA',29,477,29,2),(89,'Kris Dunn','18','6-4',205,'USA',25,151,3,1),(90,'Kyle Anderson','1','6-9',230,'USA',25,17,7,3),(91,'Kyle Kuzma','33','6-9',220,'USA',23,291,14,4),(92,'Kyle Lowry','7','6-1',196,'USA',33,313,22,1),(93,'Kyrie Irving','11','6-3',193,'Australia',27,250,5,1),(94,'LaMarcus Aldridge','21','6-11',260,'USA',33,10,24,5),(95,'Lance Thomas','42','6-8',240,'USA',31,476,13,4),(96,'Larry Nance Jr.','22','6-9',230,'USA',26,372,4,5),(97,'LeBron James','6','6-8',250,'USA',34,259,14,3),(98,'Lonzo Ball','2','6-6',190,'USA',21,32,14,1),(99,'Luka Doncic','77','6-7',218,'Slovenia',20,144,16,2),(100,'Malcolm Brogdon','7','6-5',229,'USA',26,72,2,2),(101,'Marc Gasol','14','7-1',255,'Spain',34,183,7,5),(102,'Marcin Gortat',NULL,'6-11',240,'Poland',35,193,6,2),(103,'Markelle Fultz','20','6-4',200,'USA',21,179,1,4),(104,'Markieff Morris','8','6-10',245,'USA',29,362,30,4),(105,'Marquese Chriss','35','6-10',240,'USA',21,106,23,2),(106,'Marvin Bagley III','35','6-11',234,'USA',20,29,12,4),(107,'Marvin Williams','20','6-9',237,'USA',33,516,10,4),(108,'Mike Conley','11','6-1',175,'USA',31,114,7,1),(109,'Myles Turner','33','6-11',250,'USA',23,486,19,5),(110,'Nicolas Batum','33','6-8',200,'France',30,38,10,3),(111,'Nikola Jokic','15','7-0',250,'Serbia',24,270,18,5),(112,'Nikola Mirotic','41','6-10',250,'Montenegro',28,353,20,4),(113,'Nikola Vucevic','9','7-0',260,'Montenegro',28,493,15,5),(114,'Otto Porter Jr.','32','6-8',198,'USA',26,408,30,3),(115,'Patrick Beverley','22','6-1',185,'USA',30,51,6,2),(116,'Patrick Patterson','54','6-9',230,'USA',30,397,26,1),(117,'Patty Mills','8','6-0',180,'Australia',30,350,24,5),(118,'Pau Gasol','16','7-0',250,'Spain',38,184,24,3),(119,'Paul George','13','6-9',220,'USA',29,186,26,4),(120,'Paul Millsap','8','6-8',246,'USA',34,351,18,2),(121,'Reggie Jackson','1','6-3',208,'USA',29,258,21,2),(122,'Ricky Rubio','99','6-4',190,'Spain',28,433,11,5),(123,'Robert Covington','23','6-9',225,'USA',28,118,1,1),(124,'Robin Lopez','33','7-0',275,'USA',31,311,3,5),(125,'Rodney Hood','22','6-8',206,'USA',26,236,4,3),(126,'Rondae Hollis-Jefferson','2','6-7',217,'USA',24,234,17,2),(127,'Rudy Gay','8','6-8',230,'USA',32,185,24,3),(128,'Rudy Gobert','27','7-1',245,'France',27,190,11,4),(129,'Russell Westbrook','0','6-3',200,'USA',30,506,26,5),(130,'Ryan Anderson',NULL,'6-10',240,'USA',31,18,25,4),(131,'Serge Ibaka','25','6-10',235,'Republic of t...',29,244,22,4),(132,'Stanley Johnson\\johnsst04','7','6-6',242,'USA',22,267,21,3),(133,'Stephen Curry','30','6-3',190,'USA',31,126,29,3),(134,'Steven Adams','4','7-0',265,'New Zealand',25,7,26,2),(135,'T.J. Leaf','18','6-10',225,'USA',22,296,19,3),(136,'T.J. Warren','1','6-8',215,'USA',25,502,25,3),(137,'Taj Gibson','67','6-9',232,'USA',34,187,27,2),(138,'Taurean Prince','12','6-8',220,'USA',25,413,8,4),(139,'Tim Hardaway Jr.','11','6-6',205,'USA',27,207,13,1),(140,'Tobias Harris','12','6-9',235,'USA',26,214,6,3),(141,'Trae Young','11','6-2',180,'USA',20,526,8,3),(142,'Trevor Ariza','1','6-8',215,'USA',33,25,25,1),(143,'Trey Burke','3','6-1',175,'USA',26,83,13,3),(144,'Tyler Davis','84','6-10',266,'USA',22,131,26,5),(145,'Tyler Johnson',NULL,'6-4',190,'USA',27,268,9,2),(146,'Victor Oladipo','4','6-4',210,'USA',27,389,19,5),(147,'Wesley Matthews','23','6-5',220,'USA',32,330,16,3),(148,'Will Barton','5','6-6',190,'USA',28,36,18,3),(149,'Willie Cauley-Stein',NULL,'7-0',240,'USA',25,99,12,3),(150,'Zach LaVine','8','6-5',200,'USA',24,294,3,5);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `position_id` int NOT NULL AUTO_INCREMENT,
  `position_name` varchar(45) NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'Point Guard'),(2,'Shooting Guard'),(3,'Small Foward'),(4,'Power Foward'),(5,'Center');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `team_id` int NOT NULL AUTO_INCREMENT,
  `team_name` varchar(45) NOT NULL,
  `cIty` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `conference` varchar(45) NOT NULL,
  `year_established` int DEFAULT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'76ers','Philadelphia','Pennsylvania','East',1949),(2,'Bucks','Milwaukee','Wisconsin','East',1968),(3,'Bulls','Chicago','Illinois','East',1966),(4,'Cavaliers','Cleveland','Ohio','East',1970),(5,'Celtics','Boston','Massachusetts','East',1946),(6,'Clippers','Los Angeles','California','West',1970),(7,'Grizzlies','Memphis','Tennessee','West',1995),(8,'Hawks','Atlanta','Georgia','East',1949),(9,'Heat','Miami ','Florida','East',1988),(10,'Hornets','Charlotte ','North Carolina        ','East',1988),(11,'Jazz','Salt Lake City','Utah','West',1974),(12,'Kings','Sacramento ','California','West',1948),(13,'Knicks','New York','New York','East',1946),(14,'Lakers','Los Angeles','California','West',1948),(15,'Magic','Orlando','Florida','East',1989),(16,'Mavericks','Dallas','Texas','West',1980),(17,'Nets','Brooklyn','New York','East',1976),(18,'Nuggets','Denver','Colorado','West',1976),(19,'Pacers','Indianapolis','Indiana','East',1976),(20,'Pelicans','New Orleans','Louisiana','West',2002),(21,'Pistons','Detroit','Michigan','East',1948),(22,'Raptors','Ontario','Toronto','East',1995),(23,'Rockets','Houston','Texas','West',1967),(24,'Spurs','San Antonio','Texas','West',1976),(25,'Suns','Phoenix','Arizona','West',1968),(26,'Thunder','Oklahoma','Oklahoma','West',1967),(27,'Timberwolves','Minneapolis','Minnesota','West',1989),(28,'Trail Blazers','Portland','Oregon','West',1970),(29,'Warriors','Golden State ','California','West',1946),(30,'Wizards','Washington D.C','N/A','East',1961);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-08 12:23:13
