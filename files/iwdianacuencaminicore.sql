CREATE DATABASE  IF NOT EXISTS `iwdcminicore` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `iwdcminicore`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: iwdcminicore
-- ------------------------------------------------------
-- Server version	5.7.40-log

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cli` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cli` varchar(250) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cli`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Supermaxi','2023-01-17 13:30:29'),(2,'Marathon','2023-01-17 13:30:29'),(3,'SanaSana','2023-01-17 13:30:29'),(4,'KIA','2023-01-17 13:30:29'),(5,'Chevrolet','2023-01-17 13:30:29');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_contratos`
--

DROP TABLE IF EXISTS `clientes_contratos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes_contratos` (
  `id_con` int(11) NOT NULL AUTO_INCREMENT,
  `id_cli` int(11) NOT NULL,
  `nombre_con` varchar(250) NOT NULL,
  `monto_con` float NOT NULL,
  `fecha_con` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_con`),
  KEY `ID_CLI_FK` (`id_cli`),
  CONSTRAINT `ID_CLI_FK` FOREIGN KEY (`id_cli`) REFERENCES `clientes` (`id_cli`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_contratos`
--

LOCK TABLES `clientes_contratos` WRITE;
/*!40000 ALTER TABLE `clientes_contratos` DISABLE KEYS */;
INSERT INTO `clientes_contratos` VALUES (1,1,'con1_supermaxi',6000,'2023-01-17 05:00:00'),(2,1,'lala',2000,'2023-01-18 05:00:00'),(3,1,'supermaxi 3',1000,'2023-01-22 05:00:00'),(4,2,'marathon 1',1000,'2023-01-22 05:00:00'),(5,2,'marathon 2',200,'2023-01-01 05:00:00'),(6,2,'marathon 3',50,'2023-01-03 05:00:00'),(7,2,'marathon 4',5000,'2023-01-22 05:00:00'),(8,3,'sanasana 1',100,'2023-01-02 05:00:00'),(9,3,'sanasana 2',1526,'2023-01-01 05:00:00'),(10,3,'sanasana 3',11230,'2023-01-03 05:00:00'),(11,3,'sanasana 4',1000,'2023-01-10 05:00:00'),(12,3,'sanasana 5',223,'2023-01-10 05:00:00'),(13,4,'KIA 1',2000,'2023-01-01 05:00:00'),(14,4,'KIA 2',3300,'2023-01-09 05:00:00'),(15,4,'KIA 3',58956,'2023-01-10 05:00:00'),(16,4,'KIA 4',1000,'2023-01-13 05:00:00'),(17,4,'KIA 5',144,'2023-01-12 05:00:00'),(18,4,'KIA 6',3300,'2023-01-11 05:00:00'),(19,5,'Chevrolet 1',2000,'2023-01-01 05:00:00'),(20,5,'Chevrolet 2',4410,'2023-01-03 05:00:00'),(21,5,'Chevrolet 3',3362,'2023-01-18 05:00:00'),(22,5,'Chevrolet 4',2201,'2023-01-22 05:00:00'),(23,5,'Chevrolet 5',44785,'2023-01-03 05:00:00'),(24,5,'Chevrolet 6',2223,'2023-01-18 05:00:00'),(25,5,'Chevrolet 7',6696,'2023-01-03 05:00:00');
/*!40000 ALTER TABLE `clientes_contratos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorials`
--

DROP TABLE IF EXISTS `tutorials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutorials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorials`
--

LOCK TABLES `tutorials` WRITE;
/*!40000 ALTER TABLE `tutorials` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutorials` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-24  0:17:00
