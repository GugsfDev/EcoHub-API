CREATE DATABASE  IF NOT EXISTS `rh-db-devlab` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rh-db-devlab`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: rh-db-devlab.c9coueoi41gi.sa-east-1.rds.amazonaws.com    Database: rh-db-devlab
-- ------------------------------------------------------
-- Server version	8.0.42

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `alternativas`
--

DROP TABLE IF EXISTS `alternativas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alternativas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `questao_id` int NOT NULL,
  `texto` text NOT NULL,
  `correta` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `questao_id` (`questao_id`),
  CONSTRAINT `alternativas_ibfk_1` FOREIGN KEY (`questao_id`) REFERENCES `questoes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alternativas`
--

LOCK TABLES `alternativas` WRITE;
/*!40000 ALTER TABLE `alternativas` DISABLE KEYS */;
INSERT INTO `alternativas` VALUES (19,6,'a',1,'2025-09-22 16:54:11'),(20,6,'b',0,'2025-09-22 16:54:11'),(21,6,'c',0,'2025-09-22 16:54:11'),(22,6,'d',0,'2025-09-22 16:54:11'),(23,7,'a',1,'2025-09-22 16:54:11'),(24,7,'b',0,'2025-09-22 16:54:11'),(25,7,'c',0,'2025-09-22 16:54:11'),(26,7,'d',0,'2025-09-22 16:54:11'),(27,8,'b',1,'2025-09-23 12:45:54'),(28,8,'c',0,'2025-09-23 12:45:54'),(29,8,'d',0,'2025-09-23 12:45:54'),(30,8,'e',0,'2025-09-23 12:45:54'),(31,9,'i',1,'2025-09-23 15:15:27'),(32,9,'o',0,'2025-09-23 15:15:27'),(33,9,'p',0,'2025-09-23 15:15:27'),(34,9,'q',0,'2025-09-23 15:15:27'),(35,10,'Processar imagens em tempo real',0,'2025-09-23 15:45:45'),(36,10,'Expor endpoints para comunicação entre sistemas',1,'2025-09-23 15:45:45'),(37,10,'Compilar código Java em bytecode',0,'2025-09-23 15:45:45'),(38,10,'Gerar relatórios de banco de dados',0,'2025-09-23 15:45:45'),(39,11,'Renderizar a interface gráfica',0,'2025-09-23 15:45:45'),(40,11,'Gerenciar regras de negócio e acesso a dados',1,'2025-09-23 15:45:45'),(41,11,'Executar animações no navegador',0,'2025-09-23 15:45:45'),(42,11,'Validar apenas inputs visuais',0,'2025-09-23 15:45:45'),(43,12,'Única e não nula',1,'2025-09-23 15:45:45'),(44,12,'Sempre composta',0,'2025-09-23 15:45:45'),(45,12,'Obrigatoriamente um número inteiro',0,'2025-09-23 15:45:45'),(46,12,'Opcional',0,'2025-09-23 15:45:45'),(47,13,'@Service',0,'2025-09-23 15:45:45'),(48,13,'@Autowired',0,'2025-09-23 15:45:45'),(49,13,'@RestController',1,'2025-09-23 15:45:45'),(50,13,'@Entity',0,'2025-09-23 15:45:45'),(51,14,'b',1,'2025-09-24 12:44:46'),(52,14,'c',0,'2025-09-24 12:44:46'),(53,14,'d',0,'2025-09-24 12:44:46'),(54,14,'t',0,'2025-09-24 12:44:46'),(55,15,'u',1,'2025-09-24 13:03:01'),(56,15,'k',0,'2025-09-24 13:03:01'),(57,15,'o',0,'2025-09-24 13:03:01'),(58,15,'l',0,'2025-09-24 13:03:01'),(59,16,'r',1,'2025-09-24 13:45:06'),(60,16,'d',0,'2025-09-24 13:45:06'),(61,16,' tv',0,'2025-09-24 13:45:06'),(62,16,'vd',0,'2025-09-24 13:45:06'),(63,17,'v',1,'2025-09-25 13:14:10'),(64,17,'d',0,'2025-09-25 13:14:10'),(65,17,'è ',0,'2025-09-25 13:14:10'),(66,17,'v',0,'2025-09-25 13:14:10'),(67,18,'v',1,'2025-09-25 13:27:43'),(68,18,'b',0,'2025-09-25 13:27:43'),(69,18,'g',0,'2025-09-25 13:27:43'),(70,18,'j',0,'2025-09-25 13:27:43'),(71,19,'1',0,'2025-09-26 14:02:00'),(72,19,'2',1,'2025-09-26 14:02:00'),(73,19,'3',0,'2025-09-26 14:02:00'),(74,19,'4',0,'2025-09-26 14:02:00'),(75,20,'b',1,'2025-09-26 15:25:46'),(76,20,'t',0,'2025-09-26 15:25:46'),(77,20,'b',0,'2025-09-26 15:25:46'),(78,20,'y',0,'2025-09-26 15:25:46'),(79,21,' Ele se referiu àquelas pessoas que estavam na festa.',1,'2025-09-29 14:47:33'),(80,21,'Obrigado à todos pela presença.',0,'2025-09-29 14:47:33'),(81,21,'Vou à uma reunião importante agora.',0,'2025-09-29 14:47:33'),(82,21,'Começou à chover no final da tarde.',0,'2025-09-29 14:47:33'),(83,22,'A maioria dos alunos chegou atrasada.',0,'2025-09-29 14:47:33'),(84,22,'Houveram muitos problemas durante a implementação do projeto.',1,'2025-09-29 14:47:33'),(85,22,' Fazem dois anos que não viajo para o exterior.',0,'2025-09-29 14:47:33'),(86,22,'Mais de um funcionário pediu demissão.',0,'2025-09-29 14:47:33'),(87,23,'mas / e',0,'2025-09-29 14:47:33'),(88,23,'mais / mais',0,'2025-09-29 14:47:33'),(89,23,'mas / mas',1,'2025-09-29 14:47:33'),(90,23,'mais / mas',0,'2025-09-29 14:47:33'),(91,24,'ekmfkwmfr',1,'2025-10-09 14:01:02'),(92,24,'enfcwekcmvrekv',0,'2025-10-09 14:01:02'),(93,24,'dmfkmrv',0,'2025-10-09 14:01:02'),(94,24,'dmkmrkvmrv',0,'2025-10-09 14:01:02'),(95,25,'É permitido o uso de condutor neutro comum a dois circuitos diferentes desde que a seção seja dobrada.',0,'2025-10-10 12:45:56'),(96,25,'O condutor de proteção (PE) pode ser utilizado como neutro em instalações temporárias.',0,'2025-10-10 12:45:56'),(97,25,'O condutor de fase deve ser sempre identificado pela cor azul-clara.',0,'2025-10-10 12:45:56'),(98,25,'O condutor de proteção deve ter continuidade elétrica e não deve ser utilizado para outra função.',1,'2025-10-10 12:45:56'),(99,26,'Ajustar o projeto elétrico por conta própria e enviar para execução.',0,'2025-10-10 12:45:56'),(100,26,'Solicitar a remoção da viga à equipe estrutural.',0,'2025-10-10 12:45:56'),(101,26,'Abrir uma RFI (Request for Information) formal, comunicando as disciplinas envolvidas e propondo uma solução conjunta.',1,'2025-10-10 12:45:56'),(102,26,'Corrigir manualmente o desenho e arquivar a versão ajustada.',0,'2025-10-10 12:45:56'),(103,27,'Ignorar o atraso e seguir o cronograma original.',0,'2025-10-10 12:45:56'),(104,27,'Replanejar o cronograma e comunicar imediatamente o impacto ao gestor e ao cliente.',1,'2025-10-10 12:45:56'),(105,27,'Esperar o fornecedor enviar e reagendar depois.',0,'2025-10-10 12:45:56'),(106,27,'Incluir horas extras na equipe sem comunicar o cliente.',0,'2025-10-10 12:45:56'),(107,28,'8,5 A',1,'2025-10-10 12:45:56'),(108,28,'11,8 A',0,'2025-10-10 12:45:56'),(109,28,'13,2 A',0,'2025-10-10 12:45:56'),(110,28,'17,5 A',0,'2025-10-10 12:45:56'),(111,29,'Cada disciplina trabalha isolada e só integra no final do projeto.',0,'2025-10-10 12:45:56'),(112,29,'Utilizar o mesmo modelo central e sincronizar periodicamente as alterações.',1,'2025-10-10 12:45:56'),(113,29,'Exportar os modelos em DWG diariamente e sobrepor manualmente.',0,'2025-10-10 12:45:56'),(114,29,'Usar layers diferentes dentro de um único arquivo DWG.',0,'2025-10-10 12:45:56'),(115,30,'a',1,'2025-10-24 13:05:45'),(116,30,'a',0,'2025-10-24 13:05:45'),(117,30,'a',0,'2025-10-24 13:05:45'),(118,30,'a',0,'2025-10-24 13:05:45');
/*!40000 ALTER TABLE `alternativas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidaturas`
--

DROP TABLE IF EXISTS `candidaturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidaturas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `candidato_id` int NOT NULL,
  `vaga_id` int NOT NULL,
  `status` enum('Aguardando Teste','Teste Disponível','Entrevista com RH','Entrevista com Gestor','Manual','Envio de Documentos','Finalizado') NOT NULL DEFAULT 'Aguardando Teste',
  `data_inscricao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `curriculo` varchar(255) DEFAULT NULL,
  `endereco` varchar(250) DEFAULT NULL,
  `pontuacao_teste` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `candidato_id` (`candidato_id`,`vaga_id`),
  KEY `vaga_id` (`vaga_id`),
  CONSTRAINT `candidaturas_ibfk_1` FOREIGN KEY (`candidato_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `candidaturas_ibfk_2` FOREIGN KEY (`vaga_id`) REFERENCES `vagas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidaturas`
--

LOCK TABLES `candidaturas` WRITE;
/*!40000 ALTER TABLE `candidaturas` DISABLE KEYS */;
INSERT INTO `candidaturas` VALUES (25,11,26,'Envio de Documentos','2025-09-26 14:11:41','/uploads/11-26-1758895901326-curriculo_teste.pdf','Rua das Adálias, 223, Casa - Jardim Bebedouro, Guarulhos - SP, CEP: 07091140',0.00),(37,18,29,'Envio de Documentos','2025-10-02 12:52:04','/uploads/18-29-1759409525575-Mateus - CurrÃ­culo .pdf','Rua Antônio Gomes, 135, ap 12 - Vila Santo Antônio, Guarulhos - SP, CEP: 07093090',66.67),(41,11,29,'Finalizado','2025-10-09 13:20:48','/uploads/11-29-1760016050222-curriculo_teste.pdf','Rua das Adálias, 223, casa - Jardim Bebedouro, Guarulhos - SP, CEP: 07091140',66.67);
/*!40000 ALTER TABLE `candidaturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos`
--

DROP TABLE IF EXISTS `documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `candidatura_id` int NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `caminho` varchar(255) NOT NULL,
  `data_envio` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `candidatura_id` (`candidatura_id`),
  CONSTRAINT `documentos_ibfk_1` FOREIGN KEY (`candidatura_id`) REFERENCES `candidaturas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos`
--

LOCK TABLES `documentos` WRITE;
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
INSERT INTO `documentos` VALUES (4,37,'RG','/uploads/37-RG-1760015294184-documento_exemplo_nao_valido.pdf','2025-10-09 13:08:12'),(5,37,'ComprovanteResidencia','/uploads/37-ComprovanteResidencia-1760015294191-documento_exemplo_nao_valido.pdf','2025-10-09 13:08:12'),(6,37,'CPF','/uploads/37-CPF-1760015294197-documento_exemplo_nao_valido.pdf','2025-10-09 13:08:12'),(7,41,'RG','/uploads/41-RG-1760016145289-Rafael de AssunÃ§Ã£o Mazaro - Certificado - FeirÃ£o de Empregos-Assinado.pdf','2025-10-09 13:22:23'),(8,41,'ComprovanteResidencia','/uploads/41-ComprovanteResidencia-1760016145269-documento_exemplo_nao_valido.pdf','2025-10-09 13:22:23'),(9,41,'CPF','/uploads/41-CPF-1760016145273-documento_exemplo_nao_valido.pdf','2025-10-09 13:22:23');
/*!40000 ALTER TABLE `documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questoes`
--

DROP TABLE IF EXISTS `questoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questoes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enunciado` text NOT NULL,
  `area_conhecimento` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questoes`
--

LOCK TABLES `questoes` WRITE;
/*!40000 ALTER TABLE `questoes` DISABLE KEYS */;
INSERT INTO `questoes` VALUES (6,'1','1','2025-09-22 16:54:11'),(7,'2','2','2025-09-22 16:54:11'),(8,'a','a','2025-09-23 12:45:54'),(9,'s','s','2025-09-23 15:15:27'),(10,'Qual é a função principal de uma API RESTful?','Conceitos Gerais','2025-09-23 15:45:44'),(11,'No modelo cliente-servidor, o Backend é responsável por:','Conceitos gerais','2025-09-23 15:45:45'),(12,'Em bancos de dados relacionais, a chave primária (Primary Key) deve ser:\n\n','Conceitos gerais','2025-09-23 15:45:45'),(13,'Em uma aplicação Java com Spring Boot, qual anotação define um endpoint REST?','Conceitos gerais','2025-09-23 15:45:45'),(14,'v','r','2025-09-24 12:44:46'),(15,'h','g','2025-09-24 13:03:01'),(16,'g','h','2025-09-24 13:45:06'),(17,'f','g','2025-09-25 13:14:10'),(18,'d','t','2025-09-25 13:27:43'),(19,'Quanto é 1 + 1?\n\n\n\n','matematica','2025-09-26 14:02:00'),(20,'g','e','2025-09-26 15:25:46'),(21,'Qual das frases abaixo utiliza a crase de forma correta?\n','Português','2025-09-29 14:47:33'),(22,'Assinale a alternativa em que a concordância verbal está INCORRETA.','Português','2025-09-29 14:47:33'),(23,'Complete a frase corretamente: \"Ele estudou muito, _____ não conseguiu a nota desejada, _____ sim a que precisava para passar.\"','Português','2025-09-29 14:47:33'),(24,'jswdnkjenkfkf','menwkfnekf','2025-10-09 14:01:01'),(25,'De acordo com a ABNT NBR 5410, que trata de instalações elétricas de baixa tensão, qual das alternativas está correta?','Engenharia','2025-10-10 12:45:56'),(26,'Durante a compatibilização entre os projetos estrutural e elétrico, observa-se que um eletroduto passa por dentro de uma viga. Qual deve ser a conduta correta do engenheiro responsável?','Leitura e coordenação de projetos','2025-10-10 12:45:56'),(27,'Um dos entregáveis do projeto está atrasado devido a um fornecedor que não enviou informações técnicas no prazo. Qual a melhor ação a ser tomada?','Gerenciamento e cronograma','2025-10-10 12:45:56'),(28,'Em um circuito monofásico 127 V que alimenta uma carga de 1500 W, qual é aproximadamente a corrente nominal?','Dimensionamento Elétrico','2025-10-10 12:45:56'),(29,'No ambiente de projeto colaborativo BIM (Revit), qual é a melhor prática para garantir consistência entre disciplinas?','Uso de AutoCAD/Revit','2025-10-10 12:45:56'),(30,'a','a','2025-10-24 13:05:45');
/*!40000 ALTER TABLE `questoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testes`
--

DROP TABLE IF EXISTS `testes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vaga_id` int NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `vaga_id` (`vaga_id`),
  CONSTRAINT `testes_ibfk_1` FOREIGN KEY (`vaga_id`) REFERENCES `vagas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testes`
--

LOCK TABLES `testes` WRITE;
/*!40000 ALTER TABLE `testes` DISABLE KEYS */;
INSERT INTO `testes` VALUES (15,26,'d','','2025-09-25 13:27:43'),(18,29,'Português','Teste de Português básico','2025-09-29 14:47:33'),(20,31,'Teste de Conhecimentos Técnicos','Teste de conhecimento técnico','2025-10-10 12:45:56');
/*!40000 ALTER TABLE `testes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testes_questoes`
--

DROP TABLE IF EXISTS `testes_questoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testes_questoes` (
  `teste_id` int NOT NULL,
  `questao_id` int NOT NULL,
  PRIMARY KEY (`teste_id`,`questao_id`),
  KEY `questao_id` (`questao_id`),
  CONSTRAINT `testes_questoes_ibfk_1` FOREIGN KEY (`teste_id`) REFERENCES `testes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `testes_questoes_ibfk_2` FOREIGN KEY (`questao_id`) REFERENCES `questoes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testes_questoes`
--

LOCK TABLES `testes_questoes` WRITE;
/*!40000 ALTER TABLE `testes_questoes` DISABLE KEYS */;
INSERT INTO `testes_questoes` VALUES (15,18),(18,21),(18,22),(18,23),(20,25),(20,26),(20,27),(20,28),(20,29);
/*!40000 ALTER TABLE `testes_questoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf` char(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `data_cadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `telefone` varchar(20) NOT NULL DEFAULT '',
  `genero` enum('Masculino','Feminino','Outro') NOT NULL DEFAULT 'Outro',
  `tipo` enum('CANDIDATO','RH','ADMIN') NOT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `resetPasswordExpires` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (10,'João Silva','12345678914','joao@gmail.com','$2b$10$/QaSIOXP0iZihwaJ7bXaSe/WKpsVErzYeTVdgWqZSf3SCkpWFJiDi','2025-09-16 19:08:30','1191239456','Masculino','ADMIN',NULL,NULL),(11,'Rafael de Assunção Mazaro','52855089832','rafael@gmail.com','$2b$10$bHfUuywv6x6ahDi3fwapiulNDz.ZkUoTsnBeBPOcTjuHUKbZfyXSC','2025-09-16 19:22:12','11942985673','Masculino','ADMIN',NULL,NULL),(12,'Mateus ','123.000.901','mateus@email.com','$2b$10$O.cB.DWCVxbbJzItGwx5J.uUKaVWhRP8Tku06/qXdnabIe9D9E2zq','2025-09-17 12:32:43','11 98765-4321','Masculino','ADMIN',NULL,NULL),(13,'Walter','12345678900','201622023@eniac.edu.br','$2b$10$90fS/nLQ0bvn3iGGAeHUJu4zMO/uvDhqaEzyVaV4fd3QraoT2yLs6','2025-09-17 12:35:05','(00) 00000-0000','Masculino','ADMIN',NULL,NULL),(14,'ismael','000.000.000','usuario@email.com','$2b$10$80Ur0x5eDXvuWNAo61pkWekWDdgr2KyLrW5BTrRVBd.v7yBE42Q5a','2025-09-17 12:39:01','11973746576','Masculino','ADMIN',NULL,NULL),(17,'José Junior','12345678901','jose@gmail.com','$2b$10$iag0j52hkxKoGcRahX8zmeU38touE7BW7noLo.sWa.REBAHNN/qkO','2025-09-17 14:07:34','11987654321','Masculino','CANDIDATO',NULL,NULL),(18,'Lucas Freitas','123.000.000','Lucas@email.com','$2b$10$vgzUfo3e8m.vS9L6IkLYjOANbWJEm8V2oI8Xi7APtBQKNrJ79Hlwe','2025-09-17 14:45:37','11 97543-2970','Masculino','CANDIDATO',NULL,NULL),(25,'Walter','123456789','walter.ara.souza2@hotmail.com','$2b$10$PkmJGKjDhDLPYY0s7wicJOZBTXMFTXhZztWH3Oao.PR9OROz1YjCm','2025-09-23 13:49:05','00000000000','Masculino','CANDIDATO',NULL,NULL),(26,'José','123.678.000','jose@email.com','$2b$10$cTN7cOyhLXin1.edf6mjMeueYHMQ9HW.nTvY3GRkohTsp4XnX6Gb.','2025-09-25 12:50:04','11 97543-2970','Masculino','RH',NULL,NULL),(30,'Rafael Mazaro','12345678122','rafamaza07@gmail.com','$2b$10$77mGyWOXFZu82SPIWikxlOfRJIDeNIXACxX.e5tqHOslVroln324i','2025-10-27 15:25:26','11942985673','Masculino','CANDIDATO',NULL,NULL),(32,'Walter','1594134848','walter.ara.souza@hotmail.com','$2b$10$GPwWMruXbCh9IJ3sFCDcDOuTm0zlD0g048y28NirdDbsm3..7tv6G','2025-10-28 14:10:33','0115648181','Masculino','ADMIN',NULL,NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vagas`
--

DROP TABLE IF EXISTS `vagas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vagas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rh_id` int NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `area` enum('Saúde','Tecnologia','Engenharia','Ciências Humanas e Sociais','Gestão e Negócios','Artes e Design') NOT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `descricao` text,
  `data_abertura` datetime DEFAULT NULL,
  `escala_trabalho` varchar(100) DEFAULT NULL,
  `data_fechamento` datetime DEFAULT NULL,
  `beneficios` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vagas_usuarios` (`rh_id`),
  CONSTRAINT `fk_vagas_usuarios` FOREIGN KEY (`rh_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vagas`
--

LOCK TABLES `vagas` WRITE;
/*!40000 ALTER TABLE `vagas` DISABLE KEYS */;
INSERT INTO `vagas` VALUES (26,25,'Desenvolvedor Frontend','Tecnologia',4200.00,'d','2025-12-12 00:00:00','5x2','2026-12-12 00:00:00','Vale-refeição, Vale-transporte'),(29,12,'Marketing','Tecnologia',5000.00,'Buscamos um(a) Assistente de Marketing proativo(a) e com muita vontade de aprender para dar suporte à nossa equipe. Você participará da execução de diversas tarefas operacionais, contribuindo para o sucesso das nossas campanhas e para o crescimento da nossa marca.\n\nPrincipais Responsabilidades:\n\n- Auxiliar na criação e agendamento de posts para redes sociais (Instagram, Facebook, LinkedIn, etc.).\n\n- Apoiar a organização de eventos, webinars e outras ações de marketing.\n\n- Contribuir com a redação de textos para blog, e-mail marketing e outros canais.\n\n- Realizar pesquisas de mercado e análise de concorrentes.\n\n- Prestar suporte na atualização de relatórios de desempenho das campanhas.\n\n- Organizar materiais de marketing e contato com fornecedores.\n\nRequisitos e Qualificações:\n\n- Cursando ou recém-formado em Marketing, Publicidade e Propaganda, Jornalismo, Relações Públicas ou áreas correlatas.\n\n- Excelente comunicação oral e escrita.\n\n- Familiaridade com as principais redes sociais.\n\n- Conhecimento básico do Pacote Office (Word, Excel, PowerPoint).\n\n- Ser uma pessoa organizada, criativa e com forte espírito de equipe.\n\nDiferenciais (Habilidades Desejáveis):\n\n- Conhecimento em ferramentas de design (ex: Canva).\n\n- Noções de SEO (Search Engine Optimization).\n\n- Experiência anterior (estágio ou projetos acadêmicos) na área.','2025-09-29 00:00:00','5x2','2025-10-10 00:00:00','Vale-refeição, Vale-transporte, Plano de saúde'),(31,11,'Engenheiro(a) de Projetos','Engenharia',9000.00,'Buscamos um(a) Engenheiro(a) de Projetos para atuar na elaboração e gestão de projetos técnicos em escritório, coordenando interfaces entre disciplinas, realizando revisão técnica de desenhos, e acompanhando processos de aprovação junto a clientes e órgãos competentes. A posição exige boa comunicação, organização e experiência com softwares CAD/BIM.\n\nPrincipais responsabilidades:\n\n- Elaborar e revisar desenhos executivos (CAD/BIM) e especificações técnicas.\n- Coordenar interfaces entre disciplinas (elétrica, mecânica, estrutural, arquitetura).\n- Desenvolver memoriais, planilhas de dimensionamento e listas de materiais.\n- Participar de reuniões com clientes, fornecedores e equipe de obra para alinhamento de projeto.\n- Garantir conformidade com normas técnicas aplicáveis (NRs, ABNT e normas específicas setoriais).\n- Acompanhar cronograma e controlar entregas técnicas.\n- Apoiar estimativas de custo e escopo quando necessário.\n\nRequisitos obrigatórios:\n\n- Graduação em Engenharia (Civil, Mecânica, Elétrica, de Produção ou correlata).\n- Experiência mínima de 3 anos em projetos de escritório.\n- Conhecimento avançado em AutoCAD; desejável Revit / BIM.\n- Familiaridade com normas ABNT e processos de aprovação técnica.\n- Habilidades de comunicação e trabalho em equipe.\n- Inglês técnico intermediário (leitura de especificações e normas).\n\nDiferenciais (valorizados):\n\n- Experiência em projetos industriais (linha de produção, utilidades).\n- Curso/experiência em gestão de projetos (PMI, Scrum adaptado a engenharia).\n- Conhecimento em softwares de cálculo (Eberick, TQS, Promob Técnico — conforme disciplina).\n- Experiência com coordenação de commissioning e comissionamento.\n','2025-10-10 00:00:00','3 dias remoto e 2 dias presencial','2025-12-15 00:00:00','Vale-transporte, Plano de saúde, Vale-refeição, Home office');
/*!40000 ALTER TABLE `vagas` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-07  9:54:47
