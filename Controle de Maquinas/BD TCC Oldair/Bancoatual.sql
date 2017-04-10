-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_controle
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `ID_DEPTO` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`ID_DEPTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `ID_EMPRESA` int(11) NOT NULL AUTO_INCREMENT,
  `DOC_EMPRESA` char(18) NOT NULL,
  `NOME_EMPRESA` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_EMPRESA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipamento`
--

DROP TABLE IF EXISTS `equipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipamento` (
  `ID_EQUIPAMENTO` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(45) DEFAULT NULL,
  `MODELO` varchar(45) DEFAULT NULL,
  `MARCA` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_EQUIPAMENTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipamento`
--

LOCK TABLES `equipamento` WRITE;
/*!40000 ALTER TABLE `equipamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estoque` (
  `PATRIMONIO` int(11) NOT NULL,
  `ID_EQUIPAMENTO` int(11) DEFAULT NULL,
  `ID_SOFTWARE` int(11) DEFAULT NULL,
  `QUANTIDADE` int(11) DEFAULT NULL,
  `DATA_ENTRADA` date DEFAULT NULL,
  `DATA_SAIDA` date DEFAULT NULL,
  PRIMARY KEY (`PATRIMONIO`),
  KEY `fk_ESTOQUE_SOFTWARE1_idx` (`ID_SOFTWARE`),
  KEY `fk_ESTOQUE_EQUIPAMENTO1_idx` (`ID_EQUIPAMENTO`),
  CONSTRAINT `fk_ESTOQUE_EQUIPAMENTO1` FOREIGN KEY (`ID_EQUIPAMENTO`) REFERENCES `equipamento` (`ID_EQUIPAMENTO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ESTOQUE_SOFTWARE1` FOREIGN KEY (`ID_SOFTWARE`) REFERENCES `software` (`ID_SOFTWARE`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedor` (
  `ID_FORN` int(11) NOT NULL AUTO_INCREMENT,
  `DOC_FORN` char(18) DEFAULT NULL,
  `NOME` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID_FORN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `ID_FUNC` int(11) NOT NULL AUTO_INCREMENT,
  `ID_DEPTO` int(11) NOT NULL,
  `NOME_FUNC` varchar(80) NOT NULL,
  `ID_EMPRESA` int(11) NOT NULL,
  PRIMARY KEY (`ID_FUNC`),
  KEY `fk_FUNCIONARIO_EMPRESA1_idx` (`ID_EMPRESA`),
  KEY `fk_FUNCIONARIO_DEPARTAMENTO1_idx` (`ID_DEPTO`),
  CONSTRAINT `fk_FUNCIONARIO_DEPARTAMENTO1` FOREIGN KEY (`ID_DEPTO`) REFERENCES `departamento` (`ID_DEPTO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FUNCIONARIO_EMPRESA1` FOREIGN KEY (`ID_EMPRESA`) REFERENCES `empresa` (`ID_EMPRESA`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota`
--

DROP TABLE IF EXISTS `nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota` (
  `ID_NOTA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_EQUIPAMENTO` int(11) NOT NULL,
  `ID_FORN` int(11) NOT NULL,
  `DATA_COMPRA` date DEFAULT NULL,
  `VALOR` float NOT NULL,
  PRIMARY KEY (`ID_NOTA`),
  KEY `fk_NOTA_EQUIPAMENTO1_idx` (`ID_EQUIPAMENTO`),
  KEY `fk_NOTA_FORNECEDOR1_idx` (`ID_FORN`),
  CONSTRAINT `fk_NOTA_EQUIPAMENTO1` FOREIGN KEY (`ID_EQUIPAMENTO`) REFERENCES `equipamento` (`ID_EQUIPAMENTO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_NOTA_FORNECEDOR1` FOREIGN KEY (`ID_FORN`) REFERENCES `fornecedor` (`ID_FORN`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota`
--

LOCK TABLES `nota` WRITE;
/*!40000 ALTER TABLE `nota` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software`
--

DROP TABLE IF EXISTS `software`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `software` (
  `ID_SOFTWARE` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(150) DEFAULT NULL,
  `NUM_LICENCA` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_SOFTWARE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software`
--

LOCK TABLES `software` WRITE;
/*!40000 ALTER TABLE `software` DISABLE KEYS */;
/*!40000 ALTER TABLE `software` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `troca`
--

DROP TABLE IF EXISTS `troca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `troca` (
  `ID_TROCA` int(11) NOT NULL AUTO_INCREMENT,
  `PATRIMONIO` int(11) DEFAULT NULL,
  `ID_FUNC` int(11) DEFAULT NULL,
  `ID_EQUIPAMENTO` int(11) DEFAULT NULL,
  `DT_ULTIMA_TROCA` date DEFAULT NULL,
  `DT_PROXIMA_TROCA` date DEFAULT NULL,
  PRIMARY KEY (`ID_TROCA`),
  KEY `fk_TROCA_FUNCIONARIO1_idx` (`ID_FUNC`),
  KEY `fk_TROCA_ESTOQUE1_idx` (`PATRIMONIO`),
  KEY `fk_TROCA_EQUIPAMENTO1_idx` (`ID_EQUIPAMENTO`),
  CONSTRAINT `fk_TROCA_EQUIPAMENTO1` FOREIGN KEY (`ID_EQUIPAMENTO`) REFERENCES `equipamento` (`ID_EQUIPAMENTO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_TROCA_ESTOQUE1` FOREIGN KEY (`PATRIMONIO`) REFERENCES `estoque` (`PATRIMONIO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_TROCA_FUNCIONARIO1` FOREIGN KEY (`ID_FUNC`) REFERENCES `funcionario` (`ID_FUNC`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `troca`
--

LOCK TABLES `troca` WRITE;
/*!40000 ALTER TABLE `troca` DISABLE KEYS */;
/*!40000 ALTER TABLE `troca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(16) NOT NULL,
  `PASSWORD` varchar(32) NOT NULL,
  `TIPO` int(11) NOT NULL,
  PRIMARY KEY (`ID_USUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin','1234',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-05 11:45:00
