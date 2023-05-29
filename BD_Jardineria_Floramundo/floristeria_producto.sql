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
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `codigo_producto` varchar(15) NOT NULL,
  `nombre` varchar(70) NOT NULL,
  `gama` varchar(50) NOT NULL,
  `dimensiones` varchar(25) DEFAULT NULL,
  `proveedor` varchar(50) DEFAULT NULL,
  `descripcion` text,
  `cantidad_en_stock` smallint DEFAULT NULL,
  `precio_venta` decimal(15,2) NOT NULL,
  `precio_proveedor` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`codigo_producto`),
  KEY `fk_gama_producto_producto_idx` (`gama`),
  CONSTRAINT `fk_gama_producto_producto` FOREIGN KEY (`gama`) REFERENCES `gama_producto` (`gama`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES ('0213','Set de herramientas de poda (Poda E Injertos)','Herramientas','Variadas','Ferreteria la 12','Kit de herramientas de poda profesionales para el cuidado preciso de tus plantas e injertos.',6,275.00,186.50),('0423','Sustrato universal','Sustratos','5 kg','Vivero Paraiso','Sustrato de alta calidad y nutrientes para mejorar la calidad del suelo en tu jardín.',25,80.00,55.00),('2789','Bonsai','Arboles','90-120 cm','Vivero Paraiso','Arbol Bonsai para decorar el jardin, interior o exteriores',77,65.00,45.00),('3166','Cinta o Malambre','Plantas','15-75 cm','Vivero Paraiso','Buena opción para decorar una repisa del baño o incluso de la cocina',55,25.00,12.00),('3407','Abono orgánico','Fertilizantes','1 kg','Vivero Paraiso','Abono orgánico de alta calidad para nutrir tus plantas de manera natural.',15,50.90,25.50),('4308','Cortacésped eléctrico','Herramientas','50x40x30 cm','Ferreteria la 12','Potente cortacésped eléctrico para mantener tu césped impecable.',5,1500.00,1300.00),('5576','Fuente de agua solar','Decoración','60x40 cm','Solen Technology','Fuente de agua con sistema solar, perfecta para crear un ambiente relajante en tu jardín.',3,151.00,85.75),('7401','Medidor de PH','Accesorios','50 x 174 x 21 mm','Ferreteria la 12','Importante para la unidad de medida que describe el grado de acidez o alcalinidad y es medido en una escala que va de 0 a 14',21,105.00,50.00),('9012','Maceta colgante','Macetas','25 cm','Ferreteria la 12','Maceta colgante de diseño moderno para embellecer tus plantas.',20,36.00,20.00),('9877','Camelia','Flores','20 cm','Vivero Paraiso','Hermosa planta de interior ideal para decorar cualquier espacio.',10,29.99,13.00);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
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
