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
-- Table structure for table `subdivision`
--

DROP TABLE IF EXISTS `subdivision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subdivision` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `actual` bit(1) NOT NULL,
  `sub_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `show_on_home` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subdivision`
--

LOCK TABLES `subdivision` WRITE;
/*!40000 ALTER TABLE `subdivision` DISABLE KEYS */;
INSERT INTO `subdivision` VALUES (1,_binary '','ПУЛЬМОНОЛОГИЯ','Подразделение, занимающееся изучением, диагностикой и лечением заболеваний лёгких и нижних дыхательных.','https://github.com/Koldunova/MedCentre/blob/main/Sub/icon-1.png?raw=true',_binary ''),(2,_binary '','КАРДИОЛОГИЯ','Подразделение, занимающееся изучением сердечно-сосудистой системы человека, строения и развития сердца и сосудов.','https://github.com/Koldunova/MedCentre/blob/main/Sub/icon-2.png?raw=true',_binary ''),(3,_binary '','НЕВРОЛОГИЯ','Подразделение, занимающееся изучением болезней нервной системы, центральной и периферической.','https://github.com/Koldunova/MedCentre/blob/main/Sub/icon-3.png?raw=true',_binary ''),(4,_binary '','СТОМАТОЛОГИЯ','Подразделение, занимающееся изучением зубов, их строения, функционирования и заболеваний, профилактики и лечения.','https://github.com/Koldunova/MedCentre/blob/main/Sub/icon-4.png?raw=true',_binary ''),(5,_binary '','УРОЛОГИЯ','Подразделение, изучающее этиологию, патогенез, а также проведение диагностики заболеваний органов мочевой системы.','https://github.com/Koldunova/MedCentre/blob/main/Sub/icon-5.png?raw=true',_binary ''),(6,_binary '','ОФТАЛЬМОЛОГИЯ','Подразделение, занимающееся изучением глаз, его анатомии, физиологии, а также методов лечения и профилактики глазных болезней.','https://github.com/Koldunova/MedCentre/blob/main/Sub/icon-6.png?raw=true',_binary ''),(7,_binary '','ЭНДОКРИНОЛОГИЯ','Подразделение, изучающее строении и функции желёз внутренней секреции (эндокринных желёз), вырабатываемых в гормонах.','https://github.com/Koldunova/MedCentre/blob/main/Sub/icon-7.png?raw=true',_binary '\0'),(8,_binary '','ГЕМАТОЛОГИЯ','Подразделение, изучающее кровь, органы кроветворения, этиологию, диагностику, лечение, прогнозирование и предотвращение заболеваний.','https://github.com/Koldunova/MedCentre/blob/main/Sub/icon-8.png?raw=true',_binary '\0'),(9,_binary '','ТРАВМОТОЛОГИЯ','Подразделение, изучающее воздействие на организм человека различных травмирующих воздействий, последствия травм, методы их лечения.','https://github.com/Koldunova/MedCentre/blob/main/Sub/icon-9.png?raw=true',_binary '\0');
/*!40000 ALTER TABLE `subdivision` ENABLE KEYS */;
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
