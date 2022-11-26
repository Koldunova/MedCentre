-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: med
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `id` bigint NOT NULL,
  `room` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `person_id` bigint DEFAULT NULL,
  `post_id` bigint DEFAULT NULL,
  `order_num` varchar(255) DEFAULT NULL,
  `actual` bit(1) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `show_on_home` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3n5eqc9t8tgwshjh7113xbtvr` (`category_id`),
  KEY `FKjac3wynvf4efdxytrn6p8fkai` (`person_id`),
  KEY `FKkdwklbtuc9y5gxk7cr4a2rbun` (`post_id`),
  CONSTRAINT `FK3n5eqc9t8tgwshjh7113xbtvr` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FKjac3wynvf4efdxytrn6p8fkai` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`),
  CONSTRAINT `FKkdwklbtuc9y5gxk7cr4a2rbun` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'101','1999-01-01',1,1,1,NULL,_binary '','https://github.com/Koldunova/MedCentre/blob/main/Doc/doctor-1.jpg?raw=true',_binary ''),(2,'201','2001-02-01',1,2,2,NULL,_binary '','https://github.com/Koldunova/MedCentre/blob/main/Doc/doctor-2.jpg?raw=true',_binary ''),(3,'301','2002-01-03',1,3,3,NULL,_binary '','https://github.com/Koldunova/MedCentre/blob/main/Doc/doctor-3.jpg?raw=true',_binary ''),(4,'401','2010-01-01',1,4,4,NULL,_binary '','https://github.com/Koldunova/MedCentre/blob/main/Doc/doctor-4.jpg?raw=true',_binary '\0');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 12:31:22
