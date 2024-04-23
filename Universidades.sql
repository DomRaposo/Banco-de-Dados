-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: universidades
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
  `mat` int(11) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `id_alunos` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_alunos`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (2015010101,'JOSE DE ALENCAR','RUA DAS ALMAS','NATAL',1),(2015010102,'JOÃO JOSÉ','AVENIDA RUY CARNEIRO','JOÃO PESSOA',2),(2015010103,'MARIA JOAQUINA','RUA CARROSSEL','RECIFE',3),(2015010104,'MARIA DAS DORES','RUA DAS LADEIRAS','FORTALEZA',4),(2015010105,'JOSUÉ CLAUDINO DOS SANTOS','CENTRO','NATAL',5),(2015010106,'JOSUÉLISSON CLAUDINO DOS SANTOS','CENTRO','NATAL',6);
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplinas` (
  `cod_disc` varchar(50) DEFAULT NULL,
  `nome_disc` varchar(50) DEFAULT NULL,
  `carga_hor` int(11) DEFAULT NULL,
  `id_disciplina` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_disciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplinas`
--

LOCK TABLES `disciplinas` WRITE;
/*!40000 ALTER TABLE `disciplinas` DISABLE KEYS */;
INSERT INTO `disciplinas` VALUES ('BD','BANCO DE DADOS',100,1),('POO','PROGRAMAÇÃO COM ACESSO A BANCO DE DADOS',100,2),('WEB','AUTORIA WEB',50,3),('ENG','ENGENHARIA DE SOFTWARE',80,4);
/*!40000 ALTER TABLE `disciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `mat` int(11) DEFAULT NULL,
  `cod_disc` varchar(50) DEFAULT NULL,
  `cod_turma` int(11) DEFAULT NULL,
  `cod_prof` int(11) DEFAULT NULL,
  `ano` year(4) DEFAULT NULL,
  `frequencia` varchar(60) DEFAULT NULL,
  `nota` decimal(4,2) DEFAULT NULL,
  `historico_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_alunos` int(11) DEFAULT NULL,
  `id_disciplina` int(11) DEFAULT NULL,
  `id_turma` int(11) DEFAULT NULL,
  `id_professores` int(11) DEFAULT NULL,
  PRIMARY KEY (`historico_id`),
  KEY `id_alunos_fk` (`id_alunos`),
  KEY `id_disciplinafk` (`id_disciplina`),
  KEY `id_turmafk` (`id_turma`),
  KEY `id_professorefk` (`id_professores`),
  CONSTRAINT `id_alunos_fk` FOREIGN KEY (`id_alunos`) REFERENCES `alunos` (`id_alunos`),
  CONSTRAINT `id_disciplinafk` FOREIGN KEY (`id_disciplina`) REFERENCES `disciplinas` (`id_disciplina`),
  CONSTRAINT `id_professorefk` FOREIGN KEY (`id_professores`) REFERENCES `professores` (`id_professores`),
  CONSTRAINT `id_turmafk` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
INSERT INTO `historico` VALUES (2015010101,NULL,NULL,NULL,2015,NULL,NULL,1,NULL,NULL,NULL,NULL),(2015010102,NULL,NULL,NULL,2015,NULL,NULL,2,NULL,NULL,NULL,NULL),(2015010103,NULL,NULL,NULL,2015,NULL,NULL,3,NULL,NULL,NULL,NULL),(NULL,'BD',NULL,NULL,2015,NULL,NULL,4,NULL,NULL,NULL,NULL),(NULL,'POO',NULL,NULL,2015,NULL,NULL,5,NULL,NULL,NULL,NULL),(NULL,'web',NULL,NULL,2015,NULL,NULL,6,NULL,NULL,NULL,NULL),(NULL,'eng',NULL,NULL,2015,NULL,NULL,7,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,2015,NULL,NULL,8,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,2015,NULL,NULL,9,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,2015,NULL,NULL,10,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,2015,NULL,NULL,11,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,2015,NULL,NULL,12,NULL,NULL,NULL,NULL),(2015010101,'BD',NULL,NULL,2015,NULL,0.05,13,NULL,NULL,NULL,NULL),(2015010101,'POO',NULL,NULL,2015,NULL,5.85,14,NULL,NULL,NULL,NULL),(2015010101,'WEB',NULL,NULL,2015,NULL,9.10,15,NULL,NULL,NULL,NULL),(2015010101,'ENG',NULL,NULL,2015,NULL,7.96,16,NULL,NULL,NULL,NULL),(2015010102,'BD',NULL,NULL,2015,NULL,2.50,17,NULL,NULL,NULL,NULL),(2015010102,'POO',NULL,NULL,2015,NULL,8.62,18,NULL,NULL,NULL,NULL),(2015010102,'WEB',NULL,NULL,2015,NULL,5.61,19,NULL,NULL,NULL,NULL),(2015010102,'ENG',NULL,NULL,2015,NULL,2.20,20,NULL,NULL,NULL,NULL),(2015010103,'BD',NULL,NULL,2015,NULL,4.16,21,NULL,NULL,NULL,NULL),(2015010103,'POO',NULL,NULL,2015,NULL,4.21,22,NULL,NULL,NULL,NULL),(2015010103,'WEB',NULL,NULL,2015,NULL,8.57,23,NULL,NULL,NULL,NULL),(2015010103,'ENG',NULL,NULL,2015,NULL,0.24,24,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professores`
--

DROP TABLE IF EXISTS `professores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professores` (
  `cod_prof` int(11) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `endereco` varchar(80) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `id_professores` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_professores`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professores`
--

LOCK TABLES `professores` WRITE;
/*!40000 ALTER TABLE `professores` DISABLE KEYS */;
INSERT INTO `professores` VALUES (212131,'NICKERSON FERREIRA','RUA MANAÍRA','JOÃO PESSOA',1),(122135,'ADORILSON BEZERRA','AVENIDA SALGADO FILHO','NATAL',2),(192011,'DIEGO OLIVEIRA','AVENIDA ROBERTO FREIRE','NATAL',3);
/*!40000 ALTER TABLE `professores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `COD_DISC` varchar(50) DEFAULT NULL,
  `COD_TURMA` int(11) DEFAULT NULL,
  `COD_PROF` int(11) DEFAULT NULL,
  `ano` year(4) DEFAULT NULL,
  `horario` varchar(50) DEFAULT NULL,
  `id_turma` int(11) NOT NULL AUTO_INCREMENT,
  `id_alunos` int(11) DEFAULT NULL,
  `id_disciplina` int(11) DEFAULT NULL,
  `id_professores` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_turma`),
  KEY `id_alunos` (`id_alunos`),
  KEY `id_disciplina` (`id_disciplina`),
  KEY `id_professores` (`id_professores`),
  CONSTRAINT `id_alunos` FOREIGN KEY (`id_alunos`) REFERENCES `alunos` (`id_alunos`),
  CONSTRAINT `id_disciplina` FOREIGN KEY (`id_disciplina`) REFERENCES `disciplinas` (`id_disciplina`),
  CONSTRAINT `id_professores` FOREIGN KEY (`id_professores`) REFERENCES `professores` (`id_professores`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES ('BD',1,212131,0000,'11H-12H',1,NULL,NULL,NULL),('BD',2,212131,0000,'13H-14H',2,NULL,NULL,NULL),('POO',1,192011,0000,'08H-09H',3,NULL,NULL,NULL),('WEB',1,192011,0000,'07H-08H',4,NULL,NULL,NULL),('ENG',1,122135,0000,'10H-11H',5,NULL,NULL,NULL),('BD',1,212131,2015,'11H-12H',6,NULL,NULL,NULL),('BD',2,212131,2015,'13H-14H',7,NULL,NULL,NULL),('POO',1,192011,2015,'08H-09H',8,NULL,NULL,NULL),('WEB',1,192011,2015,'07H-08H',9,NULL,NULL,NULL),('ENG',1,122135,2015,'10H-11H',10,NULL,NULL,NULL);
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-22 22:09:37
