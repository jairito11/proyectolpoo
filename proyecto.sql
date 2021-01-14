-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: proyecto
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asociaciones`
--

DROP TABLE IF EXISTS `asociaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asociaciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(5) NOT NULL,
  `acronimo` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `objetivos` varchar(50) NOT NULL,
  `fundacion` date NOT NULL,
  `fundador` varchar(50) NOT NULL,
  `sede` varchar(50) NOT NULL,
  `operacion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asociaciones`
--

LOCK TABLES `asociaciones` WRITE;
/*!40000 ALTER TABLE `asociaciones` DISABLE KEYS */;
INSERT INTO `asociaciones` VALUES (1,'20001','ASALE','Lingüistica editar','Integridad, difusión y crecimiento del idioma','1951-01-01','Congreso de academias de la lengua Española','Madrid España','Internacional');
/*!40000 ALTER TABLE `asociaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `paterno` varchar(50) NOT NULL,
  `materno` varchar(50) NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `lengua` varchar(30) NOT NULL,
  `religion` varchar(30) NOT NULL,
  `distinciones` varchar(50) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'Gabriel','García','Márquez','Colombiano','Español','Ninguna','Nobel Literatura 1982','2021-01-13');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carreras`
--

DROP TABLE IF EXISTS `carreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carreras` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clave` int NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `campus` varchar(30) NOT NULL,
  `municipio` varchar(30) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `pais` varchar(30) NOT NULL,
  `coordinador_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coordinador_id` (`coordinador_id`),
  CONSTRAINT `carreras_ibfk_1` FOREIGN KEY (`coordinador_id`) REFERENCES `coordinadores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreras`
--

LOCK TABLES `carreras` WRITE;
/*!40000 ALTER TABLE `carreras` DISABLE KEYS */;
INSERT INTO `carreras` VALUES (1,5002,'Ingeniería en computación','Actualizado','Uaemex','Toluca','Estado de México','México',1);
/*!40000 ALTER TABLE `carreras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coordinadores`
--

DROP TABLE IF EXISTS `coordinadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coordinadores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `correo` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `paterno` varchar(50) NOT NULL,
  `materno` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefonoCelular` varchar(10) NOT NULL,
  `telefonoCasa` varchar(10) NOT NULL,
  `especialidad` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordinadores`
--

LOCK TABLES `coordinadores` WRITE;
/*!40000 ALTER TABLE `coordinadores` DISABLE KEYS */;
INSERT INTO `coordinadores` VALUES (1,'marcelo@mail.com','Marcelo ','Romero','Huertas','Toluca ','5555555555','1234567890','Servidores');
/*!40000 ALTER TABLE `coordinadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edificios`
--

DROP TABLE IF EXISTS `edificios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edificios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(5) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `pagina` varchar(50) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `horaAbre` varchar(5) NOT NULL,
  `horaCierre` varchar(5) NOT NULL,
  `numeroSalones` int NOT NULL,
  `numeroCubiculos` int NOT NULL,
  `proveedor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proveedor_id` (`proveedor_id`),
  CONSTRAINT `edificios_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edificios`
--

LOCK TABLES `edificios` WRITE;
/*!40000 ALTER TABLE `edificios` DISABLE KEYS */;
INSERT INTO `edificios` VALUES (1,'1000','Toluca','edificio1.com','0987654321','07:00','19:00',25,10,1);
/*!40000 ALTER TABLE `edificios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editoriales`
--

DROP TABLE IF EXISTS `editoriales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editoriales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `isin` varchar(12) NOT NULL,
  `industria` varchar(30) NOT NULL,
  `formaLegal` varchar(30) NOT NULL,
  `fundador` varchar(30) NOT NULL,
  `sede` varchar(30) NOT NULL,
  `fundacion` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editoriales`
--

LOCK TABLES `editoriales` WRITE;
/*!40000 ALTER TABLE `editoriales` DISABLE KEYS */;
INSERT INTO `editoriales` VALUES (1,'Editorial Sudamericana','Editorial','GB0033147751','Editorial','Sociedad de capital variable','Victoria Ocampo','Argentina','2021-01-13');
/*!40000 ALTER TABLE `editoriales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clave` int NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `carrera_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carrera_id` (`carrera_id`),
  CONSTRAINT `especialidades_ibfk_1` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades`
--

LOCK TABLES `especialidades` WRITE;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
INSERT INTO `especialidades` VALUES (1,12345,'Desarrollo de software edicion','Expertos en software',1);
/*!40000 ALTER TABLE `especialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `genero` varchar(10) NOT NULL,
  `subgenero` varchar(30) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `semantica` varchar(30) NOT NULL,
  `sintactica` varchar(30) NOT NULL,
  `fonologia` varchar(30) NOT NULL,
  `contexto` varchar(30) NOT NULL,
  `historia` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Novela','Narracion','Genero literario','prueba','prueba','prueba','Este es un contexto','Siglo XVI');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idiomas`
--

DROP TABLE IF EXISTS `idiomas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `idiomas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `region` varchar(50) NOT NULL,
  `hablantes` int NOT NULL,
  `puesto` int NOT NULL,
  `familia` varchar(50) NOT NULL,
  `dialectos` varchar(50) NOT NULL,
  `escritura` varchar(50) NOT NULL,
  `asociacion_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `asociacion_id` (`asociacion_id`),
  CONSTRAINT `idiomas_ibfk_1` FOREIGN KEY (`asociacion_id`) REFERENCES `asociaciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idiomas`
--

LOCK TABLES `idiomas` WRITE;
/*!40000 ALTER TABLE `idiomas` DISABLE KEYS */;
INSERT INTO `idiomas` VALUES (1,'Español','España, hispanoamerica',100000,4,'Romance','catalán','alfabeto latino',1);
/*!40000 ALTER TABLE `idiomas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `isbn` varchar(13) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `autor_id` int DEFAULT NULL,
  `editorial_id` int DEFAULT NULL,
  `genero_id` int DEFAULT NULL,
  `idioma_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `autor_id` (`autor_id`),
  KEY `editorial_id` (`editorial_id`),
  KEY `genero_id` (`genero_id`),
  KEY `idioma_id` (`idioma_id`),
  CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `autores` (`id`),
  CONSTRAINT `libros_ibfk_2` FOREIGN KEY (`editorial_id`) REFERENCES `editoriales` (`id`),
  CONSTRAINT `libros_ibfk_3` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`),
  CONSTRAINT `libros_ibfk_4` FOREIGN KEY (`idioma_id`) REFERENCES `idiomas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'9788423919001',' años de soledad',1,1,1,1);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `curp` varchar(18) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `paterno` varchar(50) NOT NULL,
  `materno` varchar(50) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `password_digest` varchar(50) NOT NULL,
  `rol_id` int NOT NULL,
  `especialidad_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rol_id` (`rol_id`),
  KEY `especialidad_id` (`especialidad_id`),
  CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `personas_ibfk_2` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'MEAJ930109HMCNRR02','Jairo edición','Mendoza','Arreola','H','1234567890','La teresona','12345',2,1);
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presidentes`
--

DROP TABLE IF EXISTS `presidentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presidentes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `predecesor` varchar(50) NOT NULL,
  `nacimiento` date NOT NULL,
  `residencia` varchar(50) NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `educadoEn` varchar(50) NOT NULL,
  `ocupacion` varchar(50) NOT NULL,
  `distinciones` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presidentes`
--

LOCK TABLES `presidentes` WRITE;
/*!40000 ALTER TABLE `presidentes` DISABLE KEYS */;
INSERT INTO `presidentes` VALUES (1,'Carlos Slim','1940-01-28','Ciudad de México','Mexicano edición','Catolica','UNAM1','Empresario','Golden Plate Award');
/*!40000 ALTER TABLE `presidentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamos`
--

DROP TABLE IF EXISTS `prestamos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fechaPrestamo` date NOT NULL,
  `horaPrestamo` varchar(5) NOT NULL,
  `tipo` varchar(40) NOT NULL,
  `fechaEntrega` date NOT NULL,
  `horaEntrega` varchar(5) NOT NULL,
  `libro_id` int DEFAULT NULL,
  `persona_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `libro_id` (`libro_id`),
  KEY `persona_id` (`persona_id`),
  CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`libro_id`) REFERENCES `libros` (`id`),
  CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamos`
--

LOCK TABLES `prestamos` WRITE;
/*!40000 ALTER TABLE `prestamos` DISABLE KEYS */;
INSERT INTO `prestamos` VALUES (2,'2020-01-01','05:00','Prestamo en sala','2020-01-01','07:00',1,1);
/*!40000 ALTER TABLE `prestamos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `industria` varchar(50) NOT NULL,
  `formaLegal` varchar(50) NOT NULL,
  `fundacion` varchar(4) NOT NULL,
  `servicio` varchar(50) NOT NULL,
  `matriz` varchar(50) NOT NULL,
  `sitioweb` varchar(50) NOT NULL,
  `empleados` int NOT NULL,
  `presidente_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `presidente_id` (`presidente_id`),
  CONSTRAINT `proveedores_ibfk_1` FOREIGN KEY (`presidente_id`) REFERENCES `presidentes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'10001','Sector privado edición','Telmex','Sociedad por acciones','1947','Telefonía e internet','America Movil edición','telmex.com',46247,1);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rol` varchar(20) NOT NULL,
  `descripcion` varchar(40) NOT NULL,
  `zonaEstacionamiento` varchar(1) NOT NULL,
  `fechaIngreso` date NOT NULL,
  `horaIngreso` varchar(5) NOT NULL,
  `edificio_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `edificio_id` (`edificio_id`),
  CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`edificio_id`) REFERENCES `edificios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (2,'Actualización','Toma clases de 7 a 9 am','B','2012-01-03','09:00',1);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-13 19:35:01
