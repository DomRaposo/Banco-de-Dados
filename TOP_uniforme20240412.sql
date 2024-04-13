-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: top_uniformes
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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cli` int(11) NOT NULL AUTO_INCREMENT,
  `nomefantasia_cli` varchar(50) DEFAULT NULL,
  `cidade_cli` varchar(50) DEFAULT NULL,
  `estado_cli` varchar(50) DEFAULT NULL,
  `cli_tipopessoa` enum('f','J') DEFAULT NULL,
  `cli_status` varchar(10) DEFAULT NULL,
  `cli_bairro` varchar(50) DEFAULT NULL,
  `cli_pais` varchar(50) DEFAULT NULL,
  `cli_inscrestadual` varchar(50) DEFAULT NULL,
  `cli_cep` decimal(10,0) DEFAULT NULL,
  `cli_cnpj_cpf` varchar(14) DEFAULT NULL,
  `cli_endere` varchar(50) DEFAULT NULL,
  `cli_razaosocial` varchar(50) DEFAULT NULL,
  `cli_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_cli`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'ronaldo da silva','campinas','sp','f','ativo','jardim colina','brasil','isento',670009,'096.654.965-22','rua joao de barro 66','ronaldo da silva','rode@teste.com'),(2,'mercado rede cidade','maringá','PR','J','ativo','zona1','brasil','123.123.123.321',87009,'73.486.451/000','av. brasil 1005','mercado rede cidade LTDA','adm@teste.com.br');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `prod_chave` int(11) NOT NULL AUTO_INCREMENT,
  `prod_famili` varchar(50) DEFAULT NULL,
  `prod_descri` varchar(50) DEFAULT NULL,
  `prod_unidade` varchar(50) DEFAULT NULL,
  `prod_preco` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`prod_chave`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'escritorio','nobreak','und',200.00),(2,'escritório','notebook','un',2500.00),(3,'limpeza','sabão em po','un',9.00),(4,'escritório','notebook','un',2500.00),(5,'limpeza','sabão em po','un',9.00);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `id_vend` int(11) NOT NULL AUTO_INCREMENT,
  `datamovto_vda` date DEFAULT NULL,
  `vrecebidos_vda` decimal(5,2) DEFAULT NULL,
  `vdesconto_vda` decimal(5,2) DEFAULT NULL,
  `vtotal_vda` decimal(5,2) DEFAULT NULL,
  `codcli_vda_cli` int(11) NOT NULL,
  PRIMARY KEY (`id_vend`),
  KEY `codcli_vda_cli` (`codcli_vda_cli`),
  CONSTRAINT `codcli_vda_cli` FOREIGN KEY (`codcli_vda_cli`) REFERENCES `vendedor` (`vend_cod`),
  CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`codcli_vda_cli`) REFERENCES `clientes` (`id_cli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda_itens`
--

DROP TABLE IF EXISTS `venda_itens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda_itens` (
  `vdi_chave_vda` int(11) NOT NULL AUTO_INCREMENT,
  `vdi_nsequen` int(11) DEFAULT NULL,
  `vdi_qquanti` int(11) DEFAULT NULL,
  `vdi_preuni` decimal(7,2) DEFAULT NULL,
  `vdi_total` decimal(7,2) DEFAULT NULL,
  `vdi_codpro_prod` int(11) DEFAULT NULL,
  PRIMARY KEY (`vdi_chave_vda`),
  KEY `vdi_codpro_prod` (`vdi_codpro_prod`),
  CONSTRAINT `vdi_chave_vda` FOREIGN KEY (`vdi_chave_vda`) REFERENCES `venda` (`id_vend`),
  CONSTRAINT `vdi_codpro_prod` FOREIGN KEY (`vdi_codpro_prod`) REFERENCES `produtos` (`prod_chave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda_itens`
--

LOCK TABLES `venda_itens` WRITE;
/*!40000 ALTER TABLE `venda_itens` DISABLE KEYS */;
/*!40000 ALTER TABLE `venda_itens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `vend_cod` int(11) NOT NULL AUTO_INCREMENT,
  `ven_nome` varchar(50) DEFAULT NULL,
  `ven_fone` varchar(14) DEFAULT NULL,
  `ven_cidade` varchar(50) DEFAULT NULL,
  `ven_uf` varchar(30) DEFAULT NULL,
  `vda_codven_ven` int(11) NOT NULL,
  `ven_cnpj_cpf` varchar(11) DEFAULT NULL,
  `ven_tipopessoa` enum('f','j') DEFAULT NULL,
  `ven_inscrestadual` varchar(20) DEFAULT NULL,
  `ven_status` varchar(20) DEFAULT NULL,
  `ven_email` varchar(50) DEFAULT NULL,
  `ven_vpercent_comis` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`vend_cod`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (1,'Jordânia da Graças',NULL,NULL,NULL,0,'302.302.302','f','isento','ativo','venda@hotmail.com',1.50),(2,'Malu Representaões',NULL,NULL,NULL,0,'428.852.556','j','isento','ativo','comercial@malurepresente.com.br',2.00);
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-12 21:30:59
