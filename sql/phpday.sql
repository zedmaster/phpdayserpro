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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `v_grade_palestra`
--

DROP TABLE IF EXISTS `v_grade_palestra`;
/*!50001 DROP VIEW IF EXISTS `v_grade_palestra`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_grade_palestra` (
  `data_hora` datetime,
  `id_palestra` int(11),
  `id_user` int(11),
  `dia` varchar(5),
  `hora` varchar(7),
  `nome_palestra` varchar(255),
  `nome` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

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
-- Final view structure for view `v_grade_palestra`
--

/*!50001 DROP TABLE IF EXISTS `v_grade_palestra`*/;
/*!50001 DROP VIEW IF EXISTS `v_grade_palestra`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_grade_palestra` AS select `a`.`data_hora` AS `data_hora`,`a`.`id_palestra` AS `id_palestra`,`palestra_palestrante`.`id_user` AS `id_user`,date_format(`a`.`data_hora`,'%d/%m') AS `dia`,date_format(`a`.`data_hora`,'%H') AS `hora`,`a`.`nome_palestra` AS `nome_palestra`,`c`.`nome` AS `nome` from ((`palestra` `a` join `palestra_palestrante` on((`a`.`id_palestra` = `palestra_palestrante`.`id_palestra`))) join `user` `c` on((`palestra_palestrante`.`id_user` = `c`.`id_user`))) order by `a`.`data_hora` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

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

-- Dump completed on 2011-05-17  1:27:46
