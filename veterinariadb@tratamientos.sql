-- MySQLShell dump 2.0.1  Distrib Ver 8.0.43 for Win64 on x86_64 - for MySQL 8.0.43 (MySQL Community Server (GPL)), for Win64 (x86_64)
--
-- Host: localhost    Database: veterinariadb    Table: tratamientos
-- ------------------------------------------------------
-- Server version	8.0.43

--
-- Table structure for table `tratamientos`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `tratamientos` (
  `id_tratamiento` int NOT NULL AUTO_INCREMENT,
  `descripcion` text,
  `medicamento` varchar(150) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `id_mascota` int DEFAULT NULL,
  PRIMARY KEY (`id_tratamiento`),
  KEY `id_mascota` (`id_mascota`),
  CONSTRAINT `tratamientos_ibfk_1` FOREIGN KEY (`id_mascota`) REFERENCES `mascotas` (`id_mascota`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
