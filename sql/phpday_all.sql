-- MySQL dump 10.13  Distrib 5.1.54, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: phpday
-- ------------------------------------------------------
-- Server version	5.1.54-1ubuntu4

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
-- Table structure for table `minicurso`
--

DROP TABLE IF EXISTS `minicurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minicurso` (
  `id_minicurso` int(11) NOT NULL AUTO_INCREMENT,
  `nome_minicurso` varchar(255) DEFAULT NULL,
  `descricao` text,
  `data_hora` datetime DEFAULT NULL,
  `sala` varchar(32) DEFAULT NULL,
  `duracao` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_minicurso`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minicurso`
--

LOCK TABLES `minicurso` WRITE;
/*!40000 ALTER TABLE `minicurso` DISABLE KEYS */;
INSERT INTO `minicurso` VALUES (1,'CakePHP: Framework para des. WEB ágil',NULL,'2011-06-01 14:00:00','1','4'),(2,'PreparedKata',NULL,'2011-06-01 14:00:00','2','4'),(3,'GIT',NULL,'2011-06-01 08:00:00','1','4');
/*!40000 ALTER TABLE `minicurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minicurso_aluno`
--

DROP TABLE IF EXISTS `minicurso_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minicurso_aluno` (
  `id_minicurso` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minicurso_aluno`
--

LOCK TABLES `minicurso_aluno` WRITE;
/*!40000 ALTER TABLE `minicurso_aluno` DISABLE KEYS */;
INSERT INTO `minicurso_aluno` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `minicurso_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minicurso_tutor`
--

DROP TABLE IF EXISTS `minicurso_tutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minicurso_tutor` (
  `id_minicurso` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minicurso_tutor`
--

LOCK TABLES `minicurso_tutor` WRITE;
/*!40000 ALTER TABLE `minicurso_tutor` DISABLE KEYS */;
INSERT INTO `minicurso_tutor` VALUES (1,5),(2,7),(3,6);
/*!40000 ALTER TABLE `minicurso_tutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `palestra`
--

DROP TABLE IF EXISTS `palestra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `palestra` (
  `id_palestra` int(11) NOT NULL AUTO_INCREMENT,
  `nome_palestra` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data_hora` datetime DEFAULT NULL,
  PRIMARY KEY (`id_palestra`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `palestra`
--

LOCK TABLES `palestra` WRITE;
/*!40000 ALTER TABLE `palestra` DISABLE KEYS */;
INSERT INTO `palestra` VALUES (1,'CodeIgniter','O CodeIgniter é um framework leve de curva de aprendizado muito rápida, inspirado no Ruby on Rails está na versão 2.0.2 e vem crescendo rapidamente como opção para desenvolvimento de sistemas e de websites. Possui um bom conjunto de recursos que otimizam ','2011-05-31 17:00:00'),(2,'SCRUM',NULL,'2011-05-31 11:00:00'),(3,'Drupal',NULL,'2011-05-31 08:00:00'),(4,'Migrando Legado com Zend Framework e Dojo Toolkit',NULL,'2011-05-31 09:00:00'),(5,'PHP Security',NULL,'2011-05-31 10:00:00'),(6,'Desenvolvimento de Redes Sociais e Sites para Grandes Audiências',NULL,'2011-05-31 14:00:00'),(7,'Estrutura e TDD','Visão geral do Zend Framework, suas principais novidades em sua última versão e sua poderosa integração com o phpunit facilitando assim o desenvolvimento baseado em TDD.','2011-05-31 15:00:00'),(8,'GIT',NULL,'2011-05-31 16:00:00'),(9,'Webservices',NULL,'2011-06-01 08:00:00'),(10,'E tem isso no PHP? As novidades no PHP 5.3 e 5.4',NULL,'2011-06-01 09:00:00'),(11,'Coding Dojo',NULL,'2011-06-01 10:00:00'),(12,'Programação Orientada a Aspecto',NULL,'2011-06-01 11:00:00');
/*!40000 ALTER TABLE `palestra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `palestra_palestrante`
--

DROP TABLE IF EXISTS `palestra_palestrante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `palestra_palestrante` (
  `id_palestra` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `palestra_palestrante`
--

LOCK TABLES `palestra_palestrante` WRITE;
/*!40000 ALTER TABLE `palestra_palestrante` DISABLE KEYS */;
/*!40000 ALTER TABLE `palestra_palestrante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participacao_certificado`
--

DROP TABLE IF EXISTS `participacao_certificado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participacao_certificado` (
  `id_user` int(11) NOT NULL,
  `id_participacao_tipo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participacao_certificado`
--

LOCK TABLES `participacao_certificado` WRITE;
/*!40000 ALTER TABLE `participacao_certificado` DISABLE KEYS */;
/*!40000 ALTER TABLE `participacao_certificado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participacao_tipo`
--

DROP TABLE IF EXISTS `participacao_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participacao_tipo` (
  `id_participacao_tipo` int(11) NOT NULL,
  `descricao` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_participacao_tipo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participacao_tipo`
--

LOCK TABLES `participacao_tipo` WRITE;
/*!40000 ALTER TABLE `participacao_tipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `participacao_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `curriculo` text,
  `dt_cadastro` datetime DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `chave` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Alexandre F. Martins','zedmaster@gmail.com','http://uzed.com.br',NULL,NULL,'2011-05-03 23:39:00','Curitiba','PR',NULL),(2,'Ademir Cristiano Gabardo','ademir.gabbardo@gmail.com','http://www.ademirgabardo.com.br',NULL,'Ademir Gabardo é Autor do livro CodeIgniter Framework PHP, Professor e Instrutor, Desenvolvedor web, entusiasta PHP e de software livre. Articulista do site imasters.com.br. Atualmente desenvolvendo sistemas baseados em PHP e MySQL com apoio em frameworks MVC e orientação a objetos. Também ministra cursos nas áreas de Software livre.','2011-05-03 23:39:00','São Bento do Sul','SC',NULL),(3,'Ricardo Delcastanher','delcastanher@gmail.com','http://br.linkedin.com/in/delcastanher','http://twitter.com/delcastanher','Desenvolvedor de Rich Internet Applications (RIA) e Web Services, analista de sistemas e administrador de migração e manutenção de ambientes Linux. Interesse em desenvolver novas ferramentas na internet utilizando metodologia ágil para gerenciamento de projetos.','2011-05-03 23:39:00','Curitibanos','SC',NULL),(4,'Wesley Willians Ramos da Silva','wsilva@schoolofnet.com','http://www.schoolofnet.com',NULL,'Especialista em PHP e Zend Framework. Bacharel em Tecnologia e Mídias Digitais pela PUC-SP, fazendo especialização em Eng. de Software pelo ITA e realizando MBA no Ibmec-RJ (Instituto Brasileiro de Mercados e Capitais) em Gestão de Negócios. Atualmente é sócio da School of Net (www.schoolofnet.com) onde ministra treinamentos voltados para Web.','2011-05-03 23:39:00','Indaiatuba','SP',NULL),(5,'Wesley Klewerton Guez Assunção','wesleyklewerton@gmail.com','http://www.wesleyk.com',NULL,'Graduado em Sistemas de Informação, 2 especializações, Mestrando em Informática pela\nUFPR (Ênfase em Engenharia de Software - Teste de Software), desenvolvedor PHP desde\n2004, colaborador do time de tradução da documentação do CakePHP, participante da tra-\ndução do Ubuntu.','2011-05-04 22:00:00','Toledo','PR',NULL),(6,'Fernando Michelotti','fernando.michelotti@gmail.com','http://www.frustrado.com.br',NULL,'Tenho como formação acadêmica os cursos de Técnico em Desenho Industrial pelo Centro Federal de Educação Técnológica do Paraná (CEFET-PR), atual Universidade Tecnológica Federal do Paraná (UTFPR), bacharelado em gravura pela Escola de Música e Belas Artes do Paraná e especialização em História da Arte do Século XX pela mesma instituição. Atualmente estou concluindo meu mestrado no Programa de Pós-Graduação em Tecnologia da UTFPR. \nAcademicamente tenho desenvolvido pesquisas nas áreas de artes, tecnologia e sociedade, histórias em quadrinhos e design. \nNas comunidades de Software Livre sou mais conhecido como artista.frustrado, apelido que adotei em 2004 ao logar pela primeira vez nos canais de IRC da freenode.net. Sou membro ativo do GUD-BR-PR (Grupo de Usuários Debian do Paraná), membro fundador das comunidades Debian for Dummies e Yguá de pesquisa em Tecnologias Livres. ','2011-05-04 22:00:00','Curitiba','PR',NULL),(7,'Flávio Gomes da Silva Lisboa','flaviogomesdasilvalisboa@gmail.com','http://fgsl.eti.br',NULL,'Bacharel em Ciência da Computação com pós-graduação em Aplicações Corporativas usando Orientação a Objetos e Tecnologia Java pela Universidade Tecnológica Federal do Paraná. Já atuou como programador em empresas privadas de informática e funcionário de carreira do Banco do Brasil, onde chegou a analista na diretoria internacional. Atualmente é consultor tecnológico da Coordenação Estratégica de Tecnologia do Serviço Federal de Processamento de Dados (Serpro). Foi professor na pós-graduação da UNICID e é instrutor de cursos técnicos na Tempo Real Eventos. Foi membro do time oficial de tradução do Zend Framework e autor de três livros sobre o tema. Tem experiência na área de Ciência da Computação, com ênfase em Software Livre, atuando principalmente nos seguintes temas: Java, PHP, padrões, frameworks, MVC e objetos.','2011-05-04 22:00:00','Curitiba','PR',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v_minicurso`
--

DROP TABLE IF EXISTS `v_minicurso`;
/*!50001 DROP VIEW IF EXISTS `v_minicurso`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_minicurso` (
  `id_minicurso` int(11),
  `nome_minicurso` varchar(255),
  `descricao` text,
  `data_hora` datetime,
  `sala` varchar(32),
  `duracao` varchar(64),
  `id_user` int(11),
  `nome` varchar(255),
  `alunos` bigint(21)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_minicurso`
--

/*!50001 DROP TABLE IF EXISTS `v_minicurso`*/;
/*!50001 DROP VIEW IF EXISTS `v_minicurso`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_minicurso` AS select `a`.`id_minicurso` AS `id_minicurso`,`a`.`nome_minicurso` AS `nome_minicurso`,`a`.`descricao` AS `descricao`,`a`.`data_hora` AS `data_hora`,`a`.`sala` AS `sala`,`a`.`duracao` AS `duracao`,`c`.`id_user` AS `id_user`,`c`.`nome` AS `nome`,(select count(0) from `minicurso_aluno` where (`minicurso_aluno`.`id_minicurso` = `a`.`id_minicurso`)) AS `alunos` from ((`minicurso` `a` join `minicurso_tutor` `b` on((`a`.`id_minicurso` = `b`.`id_minicurso`))) join `user` `c` on((`b`.`id_user` = `c`.`id_user`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-05-08  1:32:48
