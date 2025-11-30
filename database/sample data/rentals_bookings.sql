-- MySQL dump 10.13  Distrib 8.0.41, for macos15 (arm64)
--
-- Host: localhost    Database: rentals
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `bid` varchar(255) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `price` int NOT NULL,
  `status` enum('booked','cancelled') NOT NULL,
  `owner_email` varchar(255) NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `pid` (`pid`),
  KEY `email` (`email`),
  KEY `card_id` (`card_id`),
  KEY `ix_bookings_bid` (`bid`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `properties` (`pid`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`email`) REFERENCES `users` (`email`),
  CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`card_id`) REFERENCES `credit_cards` (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES ('4f842c4b-53ea-47b7-89db-cf5b2d9e0b4f','6cd171af-d9ef-4d4b-ba58-4b7516a4ac41','user@renter.com','c97b5821-2cb3-41a6-b288-2fc54cd25466','2025-07-01','2025-08-01',7500,'cancelled','user@agent.com'),('9881b443-8aa3-426a-bab9-eee69f44114b','8efa7ab6-932b-401f-ae83-11898d983384','test@renter.com','20e49289-1206-4c2d-9435-552d809bb126','2025-06-01','2025-07-01',12500,'cancelled','test@agent.com'),('cead2127-c1de-478f-a3f0-36153fecbbc3','8db10a4b-8e60-4c11-8f9f-b31a12a613ec','test@renter.com','20e49289-1206-4c2d-9435-552d809bb126','2025-08-01','2025-11-01',35000,'cancelled','user@agent.com');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-10  8:26:12
