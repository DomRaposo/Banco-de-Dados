-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: faculdade_imaculada
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `id_aluno` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','f') DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_aluno`),
  KEY `id_curso` (`id_curso`),
  CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'João Silva','2000-01-15','M',16),(2,'Ana Souza','2001-02-20','f',17),(3,'Pedro Santos','2002-03-25','M',18),(4,'Mariana Oliveira','2003-04-30','f',19),(5,'Lucas Pereira','2004-05-05','M',20),(6,'Juliana Costa','2005-06-10','f',17),(7,'Gabriel Martins','2006-07-15','M',18),(8,'Isabela Almeida','2007-08-20','f',19),(9,'Rafael Lima','2008-09-25','M',20),(10,'Fernanda Barbosa','2009-10-30','f',16),(11,'Matheus Gonçalves','2000-11-05','M',17),(12,'Carolina Ribeiro','2001-12-10','f',18),(13,'Bruno Carvalho','2002-01-15','M',19),(14,'Larissa Fernandes','2003-02-20','f',20),(15,'Diego Oliveira','2004-03-25','M',16),(16,'Amanda Sousa','2005-04-30','f',18),(17,'Felipe Santos','2006-05-05','M',19),(18,'Luiza Martins','2007-06-10','f',16),(19,'Rodrigo Almeida','2008-07-15','M',16),(20,'Bianca Lima','2009-08-20','f',18),(21,'Guilherme Barbosa','2010-09-25','M',19),(22,'Vanessa Gonçalves','2011-10-30','f',20),(23,'Thiago Ribeiro','2012-11-05','M',20),(24,'Camila Carvalho','2013-12-10','f',20),(25,'Daniel Fernandes','2014-01-15','M',16),(26,'Fernanda Oliveira','2015-02-20','f',16),(27,'Rafaela Sousa','2016-03-25','f',16),(28,'Gustavo Santos','2017-04-30','M',17),(29,'Patrícia Martins','2018-05-05','f',17),(30,'Lucas Almeida','2019-06-10','M',17),(31,'Juliana Lima','2020-07-15','f',17),(32,'Gabriel Barbosa','2021-08-20','M',18),(33,'Mariana Gonçalves','2022-09-25','f',19),(34,'Pedro Ribeiro','2000-10-30','M',19),(35,'Ana Carolina Carvalho','2001-11-05','f',19),(36,'José Fernandes','2002-12-10','M',19),(37,'Maria Oliveira','2003-01-15','f',20),(38,'Luiz Santos','2004-02-20','M',20),(39,'Helena Martins','2005-03-25','f',20),(40,'Paulo Almeida','2006-04-30','M',20),(41,'Aline Lima','2007-05-05','f',20),(42,'Bruno Barbosa','2008-06-10','M',16),(43,'Carla Gonçalves','2009-07-15','f',16),(44,'Ricardo Ribeiro','2010-08-20','M',16),(45,'Marina Carvalho','2011-09-25','f',17),(46,'Vinícius Fernandes','2012-10-30','M',17),(47,'Laura Oliveira','2013-11-05','f',17),(48,'Diego Santos','2014-12-10','M',17),(49,'Luana Martins','2015-01-15','f',18),(50,'Thiago Almeida','2016-02-20','M',18),(51,'Amanda Lima','2017-03-25','f',18),(52,'Lucas Barbosa','2018-04-30','M',19),(53,'Juliana Gonçalves','2019-05-05','f',19),(54,'Gustavo Ribeiro','2020-06-10','M',18),(55,'Patrícia Carvalho','2021-07-15','f',18),(56,'Matheus Fernandes','2022-08-20','M',18),(57,'Carolina Oliveira','2023-09-25','f',18),(58,'Bruno Santos','2024-10-30','M',17),(59,'Larissa Martins','2025-11-05','f',17),(60,'Diego Almeida','2026-12-10','M',20);
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `descricao` text DEFAULT NULL,
  `carga` int(11) DEFAULT NULL,
  `total_aulas` int(11) NOT NULL,
  `id_aluno` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_curso`),
  KEY `id_aluno` (`id_aluno`),
  CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `alunos` (`id_aluno`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (16,'Engenharia de Software','Curso de Engenharia de Software',40,60,NULL),(17,'Direito','Curso de Direito',50,80,NULL),(18,'Medicina','Curso de Medicina',60,100,NULL),(19,'Administração','Curso de Administração',30,40,NULL),(20,'Arquitetura','Curso de Arquitetura',40,70,NULL);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplinas` (
  `id_disci` int(11) NOT NULL AUTO_INCREMENT,
  `nome_disci` varchar(50) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_disci`),
  KEY `id_curso` (`id_curso`),
  CONSTRAINT `disciplinas_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplinas`
--

LOCK TABLES `disciplinas` WRITE;
/*!40000 ALTER TABLE `disciplinas` DISABLE KEYS */;
INSERT INTO `disciplinas` VALUES (66,'História da Arquitetura',1,20),(67,'Projeto Arquitetônico',2,20),(68,'Urbanismo',3,20),(69,'Conforto Ambiental',4,20),(70,'Legislação Urbana',5,20),(71,'Administração Financeira',1,19),(72,'Marketing Estratégico',2,19),(73,'Gestão de Recursos Humanos',3,19),(74,'Logística Empresarial',4,19),(75,'Empreendedorismo',5,19),(76,'Anatomia Humana',1,18),(77,'Fisiologia',2,18),(78,'Patologia Geral',3,18),(79,'Farmacologia',4,18),(80,'Clínica Médica',5,18),(81,'Introdução ao Direito',1,17),(82,'Direito Civil',2,17),(83,'Direito Penal',3,17),(84,'Direito Constitucional',4,17),(85,'Direito Administrativo',5,17),(86,'Introdução à Engenharia de Software',1,16),(87,'Programação Orientada a Objetos',2,16),(88,'Banco de Dados Avançado',3,16),(89,'Engenharia de Requisitos',4,16),(90,'Testes de Software',5,16),(91,'História da Arquitetura',1,20),(92,'Projeto Arquitetônico',2,20),(93,'Urbanismo',3,20),(94,'Conforto Ambiental',4,20),(95,'Legislação Urbana',5,20),(96,'Administração Financeira',1,19),(97,'Marketing Estratégico',2,19),(98,'Gestão de Recursos Humanos',3,19),(99,'Logística Empresarial',4,19),(100,'Empreendedorismo',5,19),(101,'Anatomia Humana',1,18),(102,'Fisiologia',2,18),(103,'Patologia Geral',3,18),(104,'Farmacologia',4,18),(105,'Clínica Médica',5,18),(106,'Introdução ao Direito',1,17),(107,'Direito Civil',2,17),(108,'Direito Penal',3,17),(109,'Direito Constitucional',4,17),(110,'Direito Administrativo',5,17),(111,'Introdução à Engenharia de Software',1,16),(112,'Programação Orientada a Objetos',2,16),(113,'Banco de Dados Avançado',3,16),(114,'Engenharia de Requisitos',4,16),(115,'Testes de Software',5,16);
/*!40000 ALTER TABLE `disciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matriculas`
--

DROP TABLE IF EXISTS `matriculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matriculas` (
  `id_matricula` int(11) NOT NULL AUTO_INCREMENT,
  `id_aluno` int(11) DEFAULT NULL,
  `id_turma` int(11) DEFAULT NULL,
  `data_matricula` date DEFAULT NULL,
  PRIMARY KEY (`id_matricula`),
  KEY `id_aluno` (`id_aluno`),
  KEY `id_turma` (`id_turma`),
  CONSTRAINT `matriculas_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `alunos` (`id_aluno`),
  CONSTRAINT `matriculas_ibfk_2` FOREIGN KEY (`id_turma`) REFERENCES `turmas` (`id_turma`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriculas`
--

LOCK TABLES `matriculas` WRITE;
/*!40000 ALTER TABLE `matriculas` DISABLE KEYS */;
INSERT INTO `matriculas` VALUES (21,1,116,'2023-01-15'),(22,2,117,'2023-02-20'),(23,3,118,'2023-03-25'),(24,4,119,'2023-04-30'),(25,5,120,'2024-05-05'),(26,6,121,'2023-01-15'),(27,7,122,'2023-02-20'),(28,8,123,'2024-03-25'),(29,9,124,'2024-04-30'),(30,10,125,'2025-05-05'),(31,11,126,'2023-01-15'),(32,12,127,'2023-02-20'),(33,13,128,'2024-03-25'),(34,14,129,'2024-04-30'),(35,15,130,'2025-05-05'),(36,16,131,'2023-02-20'),(37,17,132,'2024-01-15'),(38,18,133,'2025-01-15'),(39,19,134,'2024-04-30'),(40,20,135,'2023-01-15'),(41,21,136,'2023-02-20'),(42,22,137,'2024-03-25'),(43,23,138,'2024-04-30'),(44,24,139,'2025-05-05'),(45,25,140,'2023-01-15'),(46,26,116,'2023-01-15'),(47,27,117,'2023-02-20'),(48,28,118,'2023-03-25'),(49,29,119,'2023-04-30'),(50,30,120,'2024-05-05'),(51,31,121,'2023-01-15'),(52,32,122,'2023-02-20'),(53,33,123,'2024-03-25'),(54,34,124,'2024-04-30'),(55,35,125,'2025-05-05'),(56,36,126,'2023-01-15'),(57,37,127,'2023-02-20'),(58,38,128,'2024-03-25'),(59,39,129,'2024-04-30'),(60,40,130,'2025-05-05'),(61,41,131,'2023-02-20'),(62,42,132,'2024-01-15'),(63,43,133,'2025-01-15'),(64,44,134,'2024-04-30'),(65,45,135,'2023-01-15'),(66,46,136,'2023-02-20'),(67,47,137,'2024-03-25'),(68,48,138,'2024-04-30'),(69,49,139,'2025-05-05'),(70,50,140,'2023-01-15'),(71,51,116,'2023-01-15'),(72,52,117,'2023-02-20'),(73,53,118,'2023-03-25'),(74,54,119,'2023-04-30'),(75,55,120,'2024-05-05'),(76,56,121,'2023-01-15'),(77,57,122,'2023-02-20'),(78,58,123,'2024-03-25'),(79,59,124,'2024-04-30'),(80,60,125,'2025-05-05');
/*!40000 ALTER TABLE `matriculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professores`
--

DROP TABLE IF EXISTS `professores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professores` (
  `id_professor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `endereco` text DEFAULT NULL,
  PRIMARY KEY (`id_professor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professores`
--

LOCK TABLES `professores` WRITE;
/*!40000 ALTER TABLE `professores` DISABLE KEYS */;
INSERT INTO `professores` VALUES (1,'Prof. João Pereira',123456789,'Rua F, 678'),(2,'Prof. Maria Lima',987654321,'Rua G, 901'),(3,'Prof. Pedro Santos',111222333,'Rua H, 234'),(4,'Prof. Ana Rodrigues',444555666,'Rua I, 567'),(5,'Prof. Lucas Almeida',777888999,'Rua J, 890');
/*!40000 ALTER TABLE `professores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turmas`
--

DROP TABLE IF EXISTS `turmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turmas` (
  `id_turma` int(11) NOT NULL AUTO_INCREMENT,
  `id_disci` int(11) DEFAULT NULL,
  `id_professor` int(11) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `ano` year(4) DEFAULT NULL,
  PRIMARY KEY (`id_turma`),
  KEY `id_disci` (`id_disci`),
  KEY `id_professor` (`id_professor`),
  CONSTRAINT `turmas_ibfk_1` FOREIGN KEY (`id_disci`) REFERENCES `disciplinas` (`id_disci`),
  CONSTRAINT `turmas_ibfk_2` FOREIGN KEY (`id_professor`) REFERENCES `professores` (`id_professor`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turmas`
--

LOCK TABLES `turmas` WRITE;
/*!40000 ALTER TABLE `turmas` DISABLE KEYS */;
INSERT INTO `turmas` VALUES (116,86,1,1,2023),(117,87,2,1,2023),(118,88,3,2,2023),(119,89,4,2,2023),(120,90,5,1,2024),(121,81,1,1,2023),(122,82,2,2,2023),(123,83,3,1,2024),(124,84,4,2,2024),(125,85,5,1,2025),(126,76,1,1,2023),(127,77,2,2,2023),(128,78,3,1,2024),(129,79,4,2,2024),(130,80,5,1,2025),(131,71,1,2,2023),(132,72,2,1,2024),(133,73,3,1,2025),(134,74,4,2,2024),(135,75,5,1,2023),(136,66,1,1,2023),(137,67,2,2,2023),(138,68,3,1,2024),(139,69,4,2,2024),(140,70,5,1,2025);
/*!40000 ALTER TABLE `turmas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-28 17:05:49
