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
-- Table structure for table `gama_producto`
--

DROP TABLE IF EXISTS `gama_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gama_producto` (
  `gama` varchar(50) NOT NULL,
  `descripcion_texto` text,
  `descripcion_html` text,
  `imagen` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`gama`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gama_producto`
--

LOCK TABLES `gama_producto` WRITE;
/*!40000 ALTER TABLE `gama_producto` DISABLE KEYS */;
INSERT INTO `gama_producto` VALUES ('Accesorios','Mini invernadero para semillas','<p>El mini invernadero para semillas proporciona un ambiente controlado y propicio para la germinación de tus semillas, ayudando a asegurar el éxito de tus cultivos.</p>','ruta-imagen-6.jpg'),('Árboles','Árbol de olivo en maceta','<p>El árbol de olivo en maceta es una hermosa adición a tu jardín. Además de su atractivo estético, también puedes obtener aceitunas frescas de tus propios olivos.</p>','ruta-imagen-7.jpg'),('Decoración','Fuente de agua con luces LED','<p>La fuente de agua con luces LED es un elemento decorativo que añade un toque de relajación y tranquilidad a tu jardín. Las luces LED crean un efecto visual impresionante durante la noche.</p>','ruta-imagen-10.jpg'),('Fertilizantes','Abono líquido para plantas de interior','<p>El abono líquido específico para plantas de interior es rico en nutrientes esenciales que promoverán un crecimiento saludable y un follaje exuberante en tus plantas.</p>','ruta-imagen-5.jpg'),('Flores','Ramificación de tulipanes multicolores','<p>Esta hermosa ramificación de tulipanes multicolores agregará un toque vibrante y primaveral a cualquier arreglo floral.</p>','ruta-imagen-1.jpg'),('Herramienta','Set de herramientas de jardín','<p>Este completo set de herramientas de jardín incluye una pala, un rastrillo y una podadora, todo lo que necesitas para mantener tu jardín en excelente estado.</p>','ruta-imagen-9.jpg'),('Herramientas','Regadera de acero inoxidable','<p>La regadera de acero inoxidable es duradera y resistente a la corrosión, perfecta para regar tus plantas de manera eficiente y mantener la humedad adecuada.</p>','ruta-imagen-3.jpg'),('Macetas','Maceta colgante de mimbre','<p>La maceta colgante de mimbre es ideal para colgar tus plantas y crear un atractivo visual en espacios limitados. Su diseño trenzado añade un toque rústico y encantador.</p>','ruta-imagen-4.jpg'),('Plantas','Cactus de espinas doradas','<p>Los cactus de espinas doradas son plantas suculentas de bajo mantenimiento que añadirán un toque de brillo y exotismo a tu jardín o interior.</p>','ruta-imagen-2.jpg'),('Sustratos','Sustrato orgánico para huerto','<p>El sustrato orgánico especial para huerto es rico en nutrientes y materia orgánica, proporcionando las condiciones ideales para el cultivo de hortalizas y verduras.</p>','ruta-imagen-8.jpg');
/*!40000 ALTER TABLE `gama_producto` ENABLE KEYS */;
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
