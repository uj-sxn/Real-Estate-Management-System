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
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `properties` (
  `pid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip_code` varchar(20) NOT NULL,
  `property_type` varchar(255) DEFAULT NULL,
  `listing_type` varchar(255) DEFAULT NULL,
  `price` int NOT NULL,
  `rooms` int DEFAULT NULL,
  `square_feet` int DEFAULT NULL,
  `year_built` int DEFAULT NULL,
  `additional_info` json DEFAULT NULL,
  `property_image_url` varchar(500) DEFAULT NULL,
  `available` tinyint(1) DEFAULT NULL,
  `owner_email` varchar(255) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `ix_properties_pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES ('6cd171af-d9ef-4d4b-ba58-4b7516a4ac41','Modern Apartment in Downtown','Apartment','A stylish and modern 2-bedroom apartment located in the heart of downtown. Features include a fully equipped kitchen, spacious living area, and a balcony with stunning city views. Perfect for professionals or small families','101 Pine Street','Miami','Florida','USA','33101','Apartment','Sale',1500,2,1300,2020,'[\"Near by school\", \"Safe locality\"]','https://plus.unsplash.com/premium_photo-1684175656320-5c3f701c082c?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YXBhcnRtZW50fGVufDB8fDB8fHww',1,'user@agent.com','2025-05-01','2025-08-30'),('8db10a4b-8e60-4c11-8f9f-b31a12a613ec','Cozy Suburban Home','House','A charming 3-bedroom home in a quiet suburban neighborhood. Includes a large backyard, modern kitchen, and a two-car garage. Ideal for families looking for a peaceful environment.','456 Elm Street','Chicago','Illinois','USA','60601','House','Standard House',2500,2,1800,2015,'[\"Modern Kitchen\", \"Amusement Park Nearby\"]','https://images.unsplash.com/photo-1502672023488-70e25813eb80?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8YXBhcnRtZW50fGVufDB8fDB8fHww',1,'user@agent.com','2025-06-01','2027-06-30'),('8efa7ab6-932b-401f-ae83-11898d983384','Spacious Family Home','House','A spacious 4-bedroom family home with a large backyard and a finished basement. Located in a top-rated school district, this home is perfect for growing families.','101 Pine Street','Houston','Texas','USA','77001','House','Rentals',2500,3,1800,2020,'[\"Large backyard\"]','https://images.unsplash.com/photo-1583847268964-b28dc8f51f92?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGFwYXJ0bWVudHxlbnwwfHwwfHx8MA%3D%3D',1,'test@agent.com','2025-05-01','2026-12-10');
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
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
