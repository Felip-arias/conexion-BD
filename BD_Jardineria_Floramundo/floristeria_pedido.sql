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
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `codigo_pedido` int NOT NULL,
  `fecha_pedido` date NOT NULL,
  `fecha_esperada` date NOT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `estado` varchar(15) NOT NULL,
  `comentarios` text,
  `codigo_cliente` int NOT NULL,
  PRIMARY KEY (`codigo_pedido`),
  KEY `fk_cliente_pedido_idx` (`codigo_cliente`),
  CONSTRAINT `fk_cliente_pedido` FOREIGN KEY (`codigo_cliente`) REFERENCES `cliente` (`codigo_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1113,'2023-05-10','2023-05-21','2023-05-23','Pendiente','Esperando confirmación de disponibilidad',4510),(1191,'2023-05-01','2023-05-05','2023-05-04','Entregado','Entrega exitosa',2321),(2207,'2023-05-07','2023-05-14','2023-05-19','Pendiente','Cliente solicita agregar un nuevo producto al pedido',1107),(2319,'2023-05-09','2023-05-19','2023-05-23','Pendiente','Cliente solicita cambio en la cantidad de productos',5509),(6551,'2023-05-04','2023-05-08','2023-05-13','Pendiente','Cliente solicitó cambio en la dirección de entrega',6204),(7656,'2023-05-06','2023-05-10','2023-05-17','Entregado','Entrega realizada en horario acordado',3206),(7903,'2023-05-03','2023-05-07','2023-05-09','Pendiente','Esperando confirmación de disponibilidad',3603),(8765,'2023-02-05','2023-02-09','2023-02-15','Pendiente','Producto temporalmente agotado',5505),(8981,'2023-05-08','2023-05-16','2023-05-21','Entregado','Entrega realizada con retraso debido a problemas de transporte',9808),(9802,'2023-05-02','2023-05-06','2023-05-07','Entregado','Producto en perfectas condiciones',4302);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
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
