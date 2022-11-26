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
-- Table structure for table `booking_visit`
--

DROP TABLE IF EXISTS `booking_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_visit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_visit` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fio` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `time_visit` time DEFAULT NULL,
  `subdivision_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh1pigf74triqug0wi4f1arkru` (`subdivision_id`),
  CONSTRAINT `FKh1pigf74triqug0wi4f1arkru` FOREIGN KEY (`subdivision_id`) REFERENCES `subdivision` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_visit`
--

LOCK TABLES `booking_visit` WRITE;
/*!40000 ALTER TABLE `booking_visit` DISABLE KEYS */;
INSERT INTO `booking_visit` VALUES (1,'2022-10-09','casavkk@gmail.com','123','+375336784439','08:22:00',1),(2,'2021-12-31','casavkk@gmail.com','123','+375336784439','11:22:00',1),(3,'2021-12-31','casavkk@gmail.com','123','+375336784439','10:10:00',1),(4,'2001-02-28','casavkk@gmail.com','123','+375336784439','11:22:00',1),(5,'2001-12-31','casavkk@gmail.com','123','+375336784439','12:02:00',1),(6,'2000-12-31','casavkk@gmail.com','123','+375336784439','11:22:00',1);
/*!40000 ALTER TABLE `booking_visit` ENABLE KEYS */;
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
