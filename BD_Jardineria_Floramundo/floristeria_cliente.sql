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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `codigo_cliente` int NOT NULL,
  `nombre_cliente` varchar(50) NOT NULL,
  `nombre_contacto` varchar(30) DEFAULT NULL,
  `apellido_contacto` varchar(30) DEFAULT NULL,
  `telefono` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `linea_direccion1` varchar(50) NOT NULL,
  `linea_direccion2` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) NOT NULL,
  `region` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `codigo_empleado_rep_ventas` int DEFAULT NULL,
  `limete_credito` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`codigo_cliente`),
  KEY `fk_empleado_cliente_idx` (`codigo_empleado_rep_ventas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1107,'Garden Paradise','Roberto','Gómez','987894321','123453214','CRA 22 - # 54-22','B. Elena','Bucaramanga','Santander','Colombia','78542',1007,28000.00),(2321,'Jardines Flores','Juan','García','104456989','982177321','CALLE 7 # 2-24','Las Asturias','Cali','Valle del Cauca','Colombia','94342',9001,100.00),(3206,'Jardines Tropicales','Elena','Sánchez','321456987','654789321','CRA 66 - # 45-32','AV. Palmas','Medellin','Antioquia','Colombia','98765',7006,25000.00),(3603,'Flores y Plantas','Pedro','Martínez','456789123','321654987','CALLE 44 # 5B','Centro','Popayan','Cauca','Colombia','98765',5003,12000.00),(4302,'Plantas Exóticas','María','López','987673221','120076789','CRA 2 - # 12-16','El Premio','Tambo','Cauca','Colombia','31321',2002,10000.00),(4510,'Plantas del Mundo','Isabel','Luna','654921987','496789113','CRA 15 # 27-89','Segundo piso','Florencia','Caqueta','Colombia','54321',2210,43000.00),(5505,'Plantas Decorativas','Luis','Hernández','654321987','456789123','Torre I','Apartamento 202','Bogota','Cundinamarca','Colombia','87654',6505,20000.00),(5509,'Jardines Elegantes','Carlos','Vargas','321987654','789456123','Calle 62 # 48-52','Las Americas','Ibague','Tolima','Colombia','88404',1509,35000.00),(6204,'Jardinería Verde','Ana','Pérez','321987654','789456123','CRA 66 #32-14','Parque del perro','Cali','Valle del Cauca','Colombia','54786',6004,18000.00),(9808,'Plantas y Más','Laura','Rodríguez','456789123','321654987','Calle 19 # 2-18','B. El Altico','Neiva','Huila','Colombia','27056',3208,32000.00);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-09 11:55:37
