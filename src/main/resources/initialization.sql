-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: localhost    Database: my_fitness_partner_lite
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
-- Table structure for table `exercise`
--

DROP TABLE IF EXISTS `exercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `creation_date` datetime NOT NULL,
  `description` varchar(1500) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `muscular_group_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdhly9nwp8agqc8e1k4e1h2vt6` (`muscular_group_id`),
  CONSTRAINT `FKdhly9nwp8agqc8e1k4e1h2vt6` FOREIGN KEY (`muscular_group_id`) REFERENCES `muscular_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise`
--

LOCK TABLES `exercise` WRITE;
/*!40000 ALTER TABLE `exercise` DISABLE KEYS */;
INSERT INTO `exercise` VALUES (1,'2022-03-21 14:53:37','Allongé sur un banc, les pieds bien calés au sol, le bas du dos légèrement cambré, les mains espacées d’une largeur supérieure à celle des épaules, il s’agit de pousser la barre après que celle-ci soit arrivée au contact de vos pectoraux.\r\n\r\nIl est bon de noter que comme lors de tous les exercices pour les pectoraux, votre cage thoracique doit être “sortie”. Vous ne devez à aucun moment vous retrouver à plat.','Développé couché à la barre',1),(2,'2022-03-21 14:53:45','Pour réaliser cet exercice, vous devez...','Développé couché incliné à la barre',1),(3,'2022-03-21 14:53:50','Pour réaliser cet exercice, vous devez...','Développé couché décliné à la barre',1),(4,'2022-03-21 15:28:22','Pour réaliser cet exercice, vous devez...','Développé incliné aux haltères avec rotation',1),(5,'2022-03-21 15:28:34','Pour réaliser cet exercice, vous devez...','Développé incliné aux haltères (neutre)',1),(6,'2022-03-21 15:28:55','Pour réaliser cet exercice, vous devez...','Développé couché aux poids libres',1),(7,'2022-03-21 16:16:29','Pour bien réaliser cet exercice...','Curl aux haltères',11);
/*!40000 ALTER TABLE `exercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muscular_group`
--

DROP TABLE IF EXISTS `muscular_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muscular_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muscular_group`
--

LOCK TABLES `muscular_group` WRITE;
/*!40000 ALTER TABLE `muscular_group` DISABLE KEYS */;
INSERT INTO `muscular_group` VALUES (1,'Pectoraux'),(2,'Quadriceps'),(3,'Epaules'),(4,'Lombaires'),(5,'Dorsaux'),(6,'Fessiers'),(7,'Triceps'),(8,'Ischios'),(9,'Mollets'),(10,'Trapèzes'),(11,'Biceps'),(12,'Abdominaux'),(13,'Adducteurs'),(14,'Abducteurs'),(15,'Avant-bras');
/*!40000 ALTER TABLE `muscular_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-22 16:04:14
