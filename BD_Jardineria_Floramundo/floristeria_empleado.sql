-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: floristeria
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
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `codigo_empleado` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) DEFAULT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `codigo_oficina` varchar(10) NOT NULL,
  `codigo_jefe` int DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo_empleado`),
  KEY `fk_empleado_empleado_idx` (`codigo_jefe`),
  KEY `fk_oficina_empleado_idx` (`codigo_oficina`),
  CONSTRAINT `fk_empleado_empleado` FOREIGN KEY (`codigo_jefe`) REFERENCES `empleado` (`codigo_empleado`),
  CONSTRAINT `fk_oficina_empleado` FOREIGN KEY (`codigo_oficina`) REFERENCES `oficina` (`codigo_oficina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (2345,'Carlos','Ramírez','Vargas','654','carlos@example.com','2345',NULL,'Ventas'),(3456,'Isabel','Mendoza','Guerrero','765','isabel@example.com','5432',NULL,'Recursos Humanos'),(4321,'Pablo','Torres','Lara','543','pablo@example.com','7890',NULL,'Analista de Datos'),(5432,'Laura','Fernández','Hernández','321','laura@example.com','8765',NULL,'Diseñadora'),(5678,'María','López','García','456','maria@example.com','8765',NULL,'Analista'),(6789,'Sofía','Ortega','Navarro','876','sofia@example.com','5678',NULL,'Marketing'),(7890,'Alejandro','Silva','Rojas','987','alejandro@example.com','2345',NULL,'Finanzas'),(8765,'Ana','Sánchez','Jiménez','987','ana@example.com','6789',NULL,'Administrativo'),(9876,'Juan','Gómez','Pérez','123','juan@example.com','5678',9876,'Gerente'),(9906,'Pedro','Martínez','Rodríguez','789','pedro@example.com','2345',NULL,'Desarrollador');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-09 11:55:36
