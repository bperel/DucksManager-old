-- MySQL dump 10.13  Distrib 5.1.36, for Win32 (ia32)
--
-- Host: localhost    Database: db301759616
-- ------------------------------------------------------
-- Server version	5.1.36-community-log

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
-- Table structure for table `images_myfonts`
--

DROP TABLE IF EXISTS `images_myfonts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images_myfonts` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Font` varchar(150) CHARACTER SET latin1 COLLATE latin1_german2_ci DEFAULT NULL,
  `Color` varchar(10) CHARACTER SET latin1 COLLATE latin1_german2_ci DEFAULT NULL,
  `ColorBG` varchar(10) CHARACTER SET latin1 COLLATE latin1_german2_ci DEFAULT NULL,
  `Width` varchar(7) CHARACTER SET latin1 COLLATE latin1_german2_ci DEFAULT NULL,
  `Texte` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Precision_` varchar(5) CHARACTER SET latin1 COLLATE latin1_german2_ci DEFAULT NULL,
  KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=413 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images_myfonts`
--

LOCK TABLES `images_myfonts` WRITE;
/*!40000 ALTER TABLE `images_myfonts` DISABLE KEYS */;
INSERT INTO `images_myfonts` VALUES (1,'larabie/coolvetica/bold','ffc71c','00005b','1500','SUPER PICSOU G&Eacute;ANT   .','18'),(2,'larabie/coolvetica/bold','ffc71c','00005b','1200','SUPER PICSOU G&Eacute;ANT   .','18'),(3,'larabie/coolvetica/bold','ffc71c','00005b','1300','SUPER PICSOU G&Eacute;ANT   .','18'),(4,'larabie/coolvetica/bold','ffc71c','00005b','1400','SUPER PICSOU G&Eacute;ANT   .','18'),(5,'larabie/coolvetica/bold','ffc71c','00005b','1430','SUPER PICSOU G&Eacute;ANT   .','18'),(6,'itfmecanorma/eurostile/extended-bold','edd8ba','7d96b0','4500','MICKEY PARADE      .','18'),(7,'itfmecanorma/eurostile/extended-bold','edd8ba','7d96b0','2500','MICKEY PARADE      .','18'),(8,'itfmecanorma/eurostile/extended-bold','edd8ba','7d96b0','1500','MICKEY PARADE      .','18'),(9,'itfmecanorma/eurostile/extended-bold','edd8ba','7d96b0','1600','MICKEY PARADE      .','18'),(10,'itfmecanorma/eurostile/extended-bold','edd8ba','7d96b0','1650','MICKEY  PARADE      .','18'),(11,'itfmecanorma/eurostile/extended-bold','000000','f4f400','1650','MICKEY  PARADE      .','18'),(12,'itfmecanorma/eurostile/extended-bold','000000','ffff46','1650','MICKEY  PARADE      .','18'),(13,'itfmecanorma/eurostile/extended-bold','ffeaa3','46378c','1650','MICKEY  PARADE      .','18'),(14,'itfmecanorma/eurostile/extended-bold','fff53c','7ac06a','1650','MICKEY  PARADE      .','18'),(15,'itfmecanorma/eurostile/extended-bold','000000','ff9e79','1650','MICKEY  PARADE      .','18'),(16,'itfmecanorma/eurostile/extended-bold','000000','ffaa21','1650','MICKEY  PARADE      .','18'),(17,'itfmecanorma/eurostile/extended-bold','000000','ffee53','1650','MICKEY  PARADE      .','18'),(18,'itfmecanorma/eurostile/extended-bold','000000','f95846','1650','MICKEY  PARADE      .','18'),(19,'itfmecanorma/eurostile/extended-bold','000000','000000','1650','MICKEY  PARADE      .','18'),(20,'itfmecanorma/eurostile/extended-bold','ffe1aa','ff3c2b','1650','MICKEY  PARADE      .','18'),(21,'itfmecanorma/eurostile/extended-bold','000000','dc3272','1650','MICKEY  PARADE      .','18'),(22,'itfmecanorma/eurostile/extended-bold','000000','3e899f','1650','MICKEY  PARADE      .','18'),(23,'itfmecanorma/eurostile/extended-bold','f0d5aa','303f3d','1650','MICKEY  PARADE      .','18'),(24,'itfmecanorma/eurostile/extended-bold','000000','ff2018','1650','MICKEY  PARADE      .','18'),(25,'itfmecanorma/eurostile/extended-bold','000000','f0f000','1650','MICKEY  PARADE      .','18'),(26,'itfmecanorma/eurostile/extended-bold','000000','e6134d','1650','MICKEY  PARADE      .','18'),(27,'itfmecanorma/eurostile/extended-bold','000000','fbbe59','1650','MICKEY  PARADE      .','18'),(28,'itfmecanorma/eurostile/extended-bold','000000','a29c3a','1650','MICKEY  PARADE      .','18'),(29,'itfmecanorma/eurostile/extended-bold','000000','f3c114','1650','MICKEY  PARADE      .','18'),(30,'itfmecanorma/eurostile/extended-bold','ffea31','ff3352','1650','MICKEY  PARADE      .','18'),(31,'itfmecanorma/eurostile/extended-bold','000000','ff9280','1650','MICKEY  PARADE      .','18'),(32,'itfmecanorma/eurostile/extended-bold','000000','ff2d6b','1650','MICKEY  PARADE      .','18'),(33,'itfmecanorma/eurostile/extended-bold','000000','8c811a','1650','MICKEY  PARADE      .','18'),(34,'itfmecanorma/eurostile/extended-bold','000000','ff9562','1650','MICKEY  PARADE      .','18'),(35,'itfmecanorma/eurostile/extended-bold','000000','ffc026','1650','MICKEY  PARADE      .','18'),(36,'itfmecanorma/eurostile/extended-bold','fbe0b5','582d6a','1650','MICKEY  PARADE      .','18'),(37,'itfmecanorma/eurostile/extended-bold','000000','ffdc0a','1650','MICKEY  PARADE      .','18'),(38,'itfmecanorma/eurostile/extended-bold','000000','414390','1650','MICKEY  PARADE      .','18'),(39,'itfmecanorma/eurostile/extended-bold','d55b84','d55b84','1650','MICKEY  PARADE      .','18'),(40,'itfmecanorma/eurostile/extended-bold','000000','0085c6','1650','MICKEY  PARADE      .','18'),(41,'itfmecanorma/eurostile/extended-bold','000000','8ab4c0','1650','MICKEY  PARADE      .','18'),(42,'itfmecanorma/eurostile/extended-bold','000000','759fb7','1650','MICKEY  PARADE      .','18'),(43,'itfmecanorma/eurostile/extended-bold','000000','92b3bc','1650','MICKEY  PARADE      .','18'),(44,'itfmecanorma/eurostile/extended-bold','000000','188977','1650','MICKEY  PARADE      .','18'),(45,'itfmecanorma/eurostile/extended-bold','ffe8c1','09579d','1650','MICKEY  PARADE      .','18'),(46,'itfmecanorma/eurostile/extended-bold','5c310e','fff639','1650','MICKEY  PARADE      .','18'),(47,'itfmecanorma/eurostile/extended-bold','000000','ffeb24','1650','MICKEY  PARADE      .','18'),(48,'itfmecanorma/eurostile/extended-bold','ff6b51','fff216','1650','MICKEY  PARADE      .','18'),(49,'itfmecanorma/eurostile/extended-bold','000000','ff3746','1650','MICKEY  PARADE      .','18'),(50,'itfmecanorma/eurostile/extended-bold','000000','1c81cc','1650','MICKEY  PARADE      .','18'),(51,'itfmecanorma/eurostile/extended-bold','fff131','5da43e','1650','MICKEY  PARADE      .','18'),(52,'itfmecanorma/eurostile/extended-bold','fffa40','ffa940','1650','MICKEY  PARADE      .','18'),(53,'itfmecanorma/eurostile/extended-bold','ffffff','4ba347','1650','MICKEY  PARADE      .','18'),(54,'itfmecanorma/eurostile/extended-bold','000000','f1aa94','1650','MICKEY  PARADE      .','18'),(55,'itfmecanorma/eurostile/extended-bold','000000','ddb27f','1650','MICKEY  PARADE      .','18'),(56,'itfmecanorma/eurostile/extended-bold','fff42b','23af5f','1650','MICKEY  PARADE      .','18'),(57,'itfmecanorma/eurostile/extended-bold','000000','ff1c1c','1650','MICKEY  PARADE      .','18'),(58,'itfmecanorma/eurostile/extended-bold','750c00','ff2f3f','1650','MICKEY  PARADE      .','18'),(59,'itfmecanorma/eurostile/extended-bold','ffffff','5f4491','1650','MICKEY  PARADE      .','18'),(60,'itfmecanorma/eurostile/extended-bold','ffee2e','ff537e','1650','MICKEY  PARADE      .','18'),(61,'itfmecanorma/eurostile/extended-bold','000000','fa8211','1650','MICKEY  PARADE      .','18'),(62,'itfmecanorma/eurostile/extended-bold','ffde88','31869b','1650','MICKEY  PARADE      .','18'),(63,'itfmecanorma/eurostile/extended-bold','000000','ffe122','1650','MICKEY  PARADE      .','18'),(64,'itfmecanorma/eurostile/extended-bold','000000','ffb09d','1650','MICKEY  PARADE      .','18'),(65,'itfmecanorma/eurostile/extended-bold','000000','208248','1650','MICKEY  PARADE      .','18'),(66,'itfmecanorma/eurostile/extended-bold','000000','ff4524','1650','MICKEY  PARADE      .','18'),(67,'itfmecanorma/eurostile/extended-bold','000000','2082ac','1650','MICKEY  PARADE      .','18'),(68,'itfmecanorma/eurostile/extended-bold','ffe7bd','d55b84','1650','MICKEY  PARADE      .','18'),(69,'itfmecanorma/eurostile/extended-bold','6e0e12','ff3734','1650','MICKEY  PARADE      .','18'),(70,'itfmecanorma/eurostile/extended-bold','000000','219447','1650','MICKEY  PARADE      .','18'),(71,'itfmecanorma/eurostile/extended-bold','000000','d0d7d9','1650','MICKEY  PARADE      .','18'),(72,'itfmecanorma/eurostile/extended-bold','000000','ff645b','1650','MICKEY  PARADE      .','18'),(73,'itfmecanorma/eurostile/extended-bold','000000','d13d69','1650','MICKEY  PARADE      .','18'),(74,'itfmecanorma/eurostile/extended-bold','000000','ffed3d','1650','MICKEY  PARADE      .','18'),(75,'itfmecanorma/eurostile/extended-bold','000000','ff4f3d','1650','MICKEY  PARADE      .','18'),(76,'itfmecanorma/eurostile/extended-bold','fff34d','2d93d1','1650','MICKEY  PARADE      .','18'),(77,'itfmecanorma/eurostile/extended-bold','000000','3ca246','1650','MICKEY  PARADE      .','18'),(78,'itfmecanorma/eurostile/extended-bold','000000','fff234','1650','MICKEY  PARADE      .','18'),(79,'itfmecanorma/eurostile/extended-bold','ffffff','100c0b','1650','MICKEY  PARADE      .','18'),(80,'itfmecanorma/eurostile/extended-bold','000000','2b8979','1650','MICKEY  PARADE      .','18'),(81,'itfmecanorma/eurostile/extended-bold','000000','ffd81d','1650','MICKEY  PARADE      .','18'),(82,'itfmecanorma/eurostile/extended-bold','ccb499','5e1c1a','1650','MICKEY  PARADE      .','18'),(83,'itfmecanorma/eurostile/extended-bold','000000','f9e802','1650','MICKEY  PARADE      .','18'),(84,'itfmecanorma/eurostile/extended-bold','000000','008bea','1650','MICKEY  PARADE      .','18'),(85,'itfmecanorma/eurostile/extended-bold','000000','ffeb2d','1650','MICKEY  PARADE      .','18'),(86,'itfmecanorma/eurostile/extended-bold','000000','333573','1650','MICKEY  PARADE      .','18'),(87,'itfmecanorma/eurostile/extended-bold','000000','96b636','1650','MICKEY  PARADE      .','18'),(88,'fontfont/ff-schulbuch/nord-fett','000000','ffc90f','3700','LE JOU   NAL DE MICKEY    .','48'),(89,'fontbureau/benton-sans/bold','000000','ffc90f','230','R','48'),(90,'fontfont/ff-schulbuch/nord-fett','000000','ffc90f','2700','MICKEY-PA   ADE   .','48'),(91,'fontfont/ff-schulbuch/nord-fett','d8d1d2','0d6fd0','3700','LE JOU   NAL DE MICKEY    .','48'),(92,'fontbureau/benton-sans/bold','d8d1d2','0d6fd0','230','R','48'),(93,'fontfont/ff-schulbuch/nord-fett','d8d1d2','0d6fd0','2700','MICKEY-PA   ADE   .','48'),(94,'fontfont/ff-schulbuch/nord-fett','ffd936','193018','3700','LE JOU   NAL DE MICKEY    .','48'),(95,'fontbureau/benton-sans/bold','ffd936','193018','230','R','48'),(96,'fontfont/ff-schulbuch/nord-fett','ffd936','193018','2700','MICKEY-PA   ADE   .','48'),(97,'fontfont/ff-schulbuch/nord-fett','ffd936','ff3f0f','3700','LE JOU   NAL DE MICKEY    .','48'),(98,'fontbureau/benton-sans/bold','ffd936','ff3f0f','230','R','48'),(99,'fontfont/ff-schulbuch/nord-fett','ffd936','ff3f0f','2700','MICKEY-PA   ADE   .','48'),(100,'fontfont/ff-schulbuch/nord-fett','ffd936','0795be','3700','LE JOU   NAL DE MICKEY    .','48'),(101,'fontbureau/benton-sans/bold','ffd936','0795be','230','R','48'),(102,'fontfont/ff-schulbuch/nord-fett','ffd936','0795be','2700','MICKEY-PA   ADE   .','48'),(103,'fontfont/ff-schulbuch/nord-fett','ffd936','169cd6','3700','LE JOU   NAL DE MICKEY    .','48'),(104,'fontbureau/benton-sans/bold','ffd936','169cd6','230','R','48'),(105,'fontfont/ff-schulbuch/nord-fett','ffd936','169cd6','2700','MICKEY-PA   ADE   .','48'),(106,'fontfont/ff-schulbuch/nord-fett','ffd936','ff1b4c','3700','LE JOU   NAL DE MICKEY    .','48'),(107,'fontbureau/benton-sans/bold','ffd936','ff1b4c','230','R','48'),(108,'fontfont/ff-schulbuch/nord-fett','ffd936','ff1b4c','2700','MICKEY-PA   ADE   .','48'),(109,'fontfont/ff-schulbuch/nord-fett','472000','fff01c','3700','LE JOU   NAL DE MICKEY    .','48'),(110,'fontbureau/benton-sans/bold','472000','fff01c','230','R','48'),(111,'fontfont/ff-schulbuch/nord-fett','472000','fff01c','2700','MICKEY-PA   ADE   .','48'),(112,'fontfont/ff-schulbuch/nord-fett','d8d1d2','2b86d9','3700','LE JOU   NAL DE MICKEY    .','48'),(113,'fontbureau/benton-sans/bold','d8d1d2','2b86d9','230','R','48'),(114,'fontfont/ff-schulbuch/nord-fett','d8d1d2','2b86d9','2700','MICKEY-PA   ADE   .','48'),(115,'fontfont/ff-schulbuch/nord-fett','ffd936','ff352d','3700','LE JOU   NAL DE MICKEY    .','48'),(116,'fontbureau/benton-sans/bold','ffd936','ff352d','230','R','48'),(117,'fontfont/ff-schulbuch/nord-fett','ffd936','ff352d','2700','MICKEY-PA   ADE   .','48'),(118,'fontfont/ff-schulbuch/nord-fett','ffd936','2591cb','3700','LE JOU   NAL DE MICKEY    .','48'),(119,'fontbureau/benton-sans/bold','ffd936','2591cb','230','R','48'),(120,'fontfont/ff-schulbuch/nord-fett','ffd936','2591cb','2700','MICKEY-PA   ADE   .','48'),(121,'fontfont/ff-schulbuch/nord-fett','ffd936','ff323c','3700','LE JOU   NAL DE MICKEY    .','48'),(122,'fontbureau/benton-sans/bold','ffd936','ff323c','230','R','48'),(123,'fontfont/ff-schulbuch/nord-fett','ffd936','ff323c','2700','MICKEY-PA   ADE   .','48'),(124,'fontfont/ff-schulbuch/nord-fett','ffd936','372f5b','3700','LE JOU   NAL DE MICKEY    .','48'),(125,'fontbureau/benton-sans/bold','ffd936','372f5b','230','R','48'),(126,'fontfont/ff-schulbuch/nord-fett','ffd936','372f5b','2700','MICKEY-PA   ADE   .','48'),(127,'fontfont/ff-schulbuch/nord-fett','ffec0a','36ab62','3700','LE JOU   NAL DE MICKEY    .','48'),(128,'fontbureau/benton-sans/bold','ffec0a','36ab62','230','R','48'),(129,'fontfont/ff-schulbuch/nord-fett','ffec0a','36ab62','2700','MICKEY-PA   ADE   .','48'),(130,'fontfont/ff-schulbuch/nord-fett','ffee62','149ee9','3700','LE JOU   NAL DE MICKEY    .','48'),(131,'fontbureau/benton-sans/bold','ffee62','149ee9','230','R','48'),(132,'fontfont/ff-schulbuch/nord-fett','ffee62','149ee9','2700','MICKEY-PA   ADE   .','48'),(133,'fontfont/ff-schulbuch/nord-fett','632d21','ffc584','3700','LE JOU   NAL DE MICKEY    .','48'),(134,'fontbureau/benton-sans/bold','632d21','ffc584','230','R','48'),(135,'fontfont/ff-schulbuch/nord-fett','632d21','ffc584','2700','MICKEY-PA   ADE   .','48'),(136,'fontfont/ff-schulbuch/nord-fett','ff3c28','ffed2c','3700','LE JOU   NAL DE MICKEY    .','48'),(137,'fontbureau/benton-sans/bold','ff3c28','ffed2c','230','R','48'),(138,'fontfont/ff-schulbuch/nord-fett','ff3c28','ffed2c','2700','MICKEY-PA   ADE   .','48'),(139,'fontfont/ff-schulbuch/nord-fett','dddd00','873258','3700','LE JOU   NAL DE MICKEY    .','48'),(140,'fontbureau/benton-sans/bold','dddd00','873258','230','R','48'),(141,'fontfont/ff-schulbuch/nord-fett','dddd00','873258','2700','MICKEY-PA   ADE   .','48'),(142,'fontfont/ff-schulbuch/nord-fett','dddd00','dd3630','3700','LE JOU   NAL DE MICKEY    .','48'),(143,'fontbureau/benton-sans/bold','dddd00','dd3630','230','R','48'),(144,'fontfont/ff-schulbuch/nord-fett','dddd00','dd3630','2700','MICKEY-PA   ADE   .','48'),(145,'fontfont/ff-schulbuch/nord-fett','fff718','ff3d34','3700','LE JOU   NAL DE MICKEY    .','48'),(146,'fontbureau/benton-sans/bold','fff718','ff3d34','230','R','48'),(147,'fontfont/ff-schulbuch/nord-fett','fff718','ff3d34','2700','MICKEY-PA   ADE   .','48'),(148,'fontfont/ff-schulbuch/nord-fett','fff718','4db968','3700','LE JOU   NAL DE MICKEY    .','48'),(149,'fontbureau/benton-sans/bold','fff718','4db968','230','R','48'),(150,'fontfont/ff-schulbuch/nord-fett','fff718','4db968','2700','MICKEY-PA   ADE   .','48'),(151,'fontfont/ff-schulbuch/nord-fett','fff718','507437','3700','LE JOU   NAL DE MICKEY    .','48'),(152,'fontbureau/benton-sans/bold','fff718','507437','230','R','48'),(153,'fontfont/ff-schulbuch/nord-fett','fff718','507437','2700','MICKEY-PA   ADE   .','48'),(154,'fontfont/ff-schulbuch/nord-fett','fff718','44833c','3700','LE JOU   NAL DE MICKEY    .','48'),(155,'fontbureau/benton-sans/bold','fff718','44833c','230','R','48'),(156,'fontfont/ff-schulbuch/nord-fett','fff718','44833c','2700','MICKEY-PA   ADE   .','48'),(157,'fontfont/ff-schulbuch/nord-fett','fff718','ff2726','3700','LE JOU   NAL DE MICKEY    .','48'),(158,'fontbureau/benton-sans/bold','fff718','ff2726','230','R','48'),(159,'fontfont/ff-schulbuch/nord-fett','fff718','ff2726','2700','MICKEY-PA   ADE   .','48'),(160,'bitstream/humanist-777/black','ffffff','d34c50','1850','MICKEY PARADE G&Eacute;ANT','18'),(161,'bitstream/humanist-777/black','ffffff','d34c50','275','318   .','18'),(162,'fontfont/ff-schulbuch/nord-fett','ffed34','ff2020','3700','LE JOU   NAL DE MICKEY    .','48'),(163,'fontbureau/benton-sans/bold','ffed34','ff2020','230','R','48'),(164,'fontfont/ff-schulbuch/nord-fett','ffed34','ff2020','2700','MICKEY-PA   ADE   .','48'),(165,'fontfont/ff-schulbuch/nord-fett','ff2020','ffed34','3700','LE JOU   NAL DE MICKEY    .','48'),(166,'fontbureau/benton-sans/bold','ff2020','ffed34','230','R','48'),(167,'fontfont/ff-schulbuch/nord-fett','ff2020','ffed34','2700','MICKEY-PA   ADE   .','48'),(168,'fontfont/ff-schulbuch/nord-fett','ffed34','362c7e','3700','LE JOU   NAL DE MICKEY    .','48'),(169,'fontbureau/benton-sans/bold','ffed34','362c7e','230','R','48'),(170,'fontfont/ff-schulbuch/nord-fett','ffed34','362c7e','2700','MICKEY-PA   ADE   .','48'),(171,'fontfont/ff-schulbuch/nord-fett','ffed34','2c3696','3700','LE JOU   NAL DE MICKEY    .','48'),(172,'fontbureau/benton-sans/bold','ffed34','2c3696','230','R','48'),(173,'fontfont/ff-schulbuch/nord-fett','ffed34','2c3696','2700','MICKEY-PA   ADE   .','48'),(174,'fontfont/ff-schulbuch/nord-fett','ffffff','182c7e','3700','LE JOU   NAL DE MICKEY    .','48'),(175,'fontbureau/benton-sans/bold','ffffff','182c7e','230','R','48'),(176,'fontfont/ff-schulbuch/nord-fett','ffffff','182c7e','2700','MICKEY-PA   ADE   .','48'),(177,'fontfont/ff-schulbuch/nord-fett','ffed34','182c7e','3700','LE JOU   NAL DE MICKEY    .','48'),(178,'fontbureau/benton-sans/bold','ffed34','182c7e','230','R','48'),(179,'fontfont/ff-schulbuch/nord-fett','ffed34','182c7e','2700','MICKEY-PA   ADE   .','48'),(180,'fontfont/ff-schulbuch/nord-fett','ff2020','ffe73d','3700','LE JOU   NAL DE MICKEY    .','48'),(181,'fontbureau/benton-sans/bold','ff2020','ffe73d','230','R','48'),(182,'fontfont/ff-schulbuch/nord-fett','ff2020','ffe73d','2700','MICKEY-PA   ADE   .','48'),(183,'fontfont/ff-schulbuch/nord-fett','ffe73d','ff2828','3700','LE JOU   NAL DE MICKEY    .','48'),(184,'fontbureau/benton-sans/bold','ffe73d','ff2828','230','R','48'),(185,'fontfont/ff-schulbuch/nord-fett','ffe73d','ff2828','2700','MICKEY-PA   ADE   .','48'),(186,'fontfont/ff-schulbuch/nord-fett','ffe73d','ffe73d','3700','LE JOU   NAL DE MICKEY    .','48'),(187,'fontbureau/benton-sans/bold','ffe73d','ffe73d','230','R','48'),(188,'fontfont/ff-schulbuch/nord-fett','ffe73d','ffe73d','2700','MICKEY-PA   ADE   .','48'),(189,'fontfont/ff-schulbuch/nord-fett','ffea3d','ff2d37','3700','LE JOU   NAL DE MICKEY    .','48'),(190,'fontbureau/benton-sans/bold','ffea3d','ff2d37','230','R','48'),(191,'fontfont/ff-schulbuch/nord-fett','ffea3d','ff2d37','2700','MICKEY-PA   ADE   .','48'),(192,'fontfont/ff-schulbuch/nord-fett','000000','d1d5d0','3700','LE JOU   NAL DE MICKEY    .','48'),(193,'fontbureau/benton-sans/bold','000000','d1d5d0','230','R','48'),(194,'fontfont/ff-schulbuch/nord-fett','000000','d1d5d0','2700','MICKEY-PA   ADE   .','48'),(195,'fontfont/ff-schulbuch/nord-fett','ffea3d','ff353a','3700','LE JOU   NAL DE MICKEY    .','48'),(196,'fontbureau/benton-sans/bold','ffea3d','ff353a','230','R','48'),(197,'fontfont/ff-schulbuch/nord-fett','ffea3d','ff353a','2700','MICKEY-PA   ADE   .','48'),(198,'fontfont/ff-schulbuch/nord-fett','ff353a','ffea3d','3700','LE JOU   NAL DE MICKEY    .','48'),(199,'fontbureau/benton-sans/bold','ff353a','ffea3d','230','R','48'),(200,'fontfont/ff-schulbuch/nord-fett','ff353a','ffea3d','2700','MICKEY-PA   ADE   .','48'),(201,'fontfont/ff-schulbuch/nord-fett','d62966','ffbb90','3700','LE JOU   NAL DE MICKEY    .','48'),(202,'fontbureau/benton-sans/bold','d62966','ffbb90','230','R','48'),(203,'fontfont/ff-schulbuch/nord-fett','d62966','ffbb90','2700','MICKEY-PA   ADE   .','48'),(204,'fontfont/ff-schulbuch/nord-fett','ffffff','272378','3700','LE JOU   NAL DE MICKEY    .','48'),(205,'fontbureau/benton-sans/bold','ffffff','272378','230','R','48'),(206,'fontfont/ff-schulbuch/nord-fett','ffffff','272378','2700','MICKEY-PA   ADE   .','48'),(207,'fontfont/ff-schulbuch/nord-fett','000000','96b221','3700','LE JOU   NAL DE MICKEY    .','48'),(208,'fontbureau/benton-sans/bold','000000','96b221','230','R','48'),(209,'fontfont/ff-schulbuch/nord-fett','000000','96b221','2700','MICKEY-PA   ADE   .','48'),(210,'fontfont/ff-schulbuch/nord-fett','ffe865','ff603d','3700','LE JOU   NAL DE MICKEY    .','48'),(211,'fontbureau/benton-sans/bold','ffe865','ff603d','230','R','48'),(212,'fontfont/ff-schulbuch/nord-fett','ffe865','ff603d','2700','MICKEY-PA   ADE   .','48'),(213,'fontfont/ff-schulbuch/nord-fett','ed1812','e6e600','3700','LE JOU   NAL DE MICKEY    .','48'),(214,'fontbureau/benton-sans/bold','ed1812','e6e600','230','R','48'),(215,'fontfont/ff-schulbuch/nord-fett','ed1812','e6e600','2700','DONALD-PA   ADE   .','48'),(216,'fontfont/ff-schulbuch/nord-fett','e6e600','ea1e27','3700','LE JOU   NAL DE MICKEY    .','48'),(217,'fontbureau/benton-sans/bold','e6e600','ea1e27','230','R','48'),(218,'fontfont/ff-schulbuch/nord-fett','e6e600','ea1e27','2700','PICSOU-PA   ADE   .','48'),(219,'fontfont/ff-schulbuch/nord-fett','5a320f','fbc728','3700','LE JOU   NAL DE MICKEY    .','48'),(220,'fontbureau/benton-sans/bold','5a320f','fbc728','230','R','48'),(221,'fontfont/ff-schulbuch/nord-fett','5a320f','fbc728','2700','MICKEY-PA   ADE   .','48'),(222,'fontfont/ff-schulbuch/nord-fett','ffffff','3d3d7e','3700','LE JOU   NAL DE MICKEY    .','48'),(223,'fontbureau/benton-sans/bold','ffffff','3d3d7e','230','R','48'),(224,'fontfont/ff-schulbuch/nord-fett','ffffff','3d3d7e','2700','MICKEY-PA   ADE   .','48'),(225,'fontfont/ff-schulbuch/nord-fett','ffffff','000000','3700','LE JOU   NAL DE MICKEY    .','48'),(226,'fontbureau/benton-sans/bold','ffffff','000000','230','R','48'),(227,'fontfont/ff-schulbuch/nord-fett','ffffff','000000','2700','MICKEY-PA   ADE   .','48'),(231,'agfa/futura/extra-bold','ffcc33','5c2372','1300','MICKEY JEUX     .','48'),(230,'agfa/futura/extra-bold','ffcc33','ff3823','600','N°143   .','48'),(228,'agfa/futura/extra-bold','ffcc33','ff3823','1300','MICKEY JEUX     .','48'),(229,'agfa/futura/extra-bold','ffcc33','ff3823','500','N°143   .','48'),(232,'agfa/futura/extra-bold','ffcc33','5c2372','600','N°142   .','48'),(233,'fontfont/zwo/bold-lf-sc','546d65','f1e805','225','277','18'),(234,'fontfont/zwo/bold-lf-sc','ffffff','ffffff','225','274','18'),(235,'fontfont/zwo/bold-lf-sc','ffffff','ff8945','225','274','18'),(236,'fontfont/zwo/bold-lf-sc','ffffff','fd530b','225','287','18'),(237,'fontfont/zwo/bold-lf-sc','f6ea24','a8359c','225','282','18'),(238,'agfa/futura/extra-bold','402171','fee332','1300','MICKEY JEUX     .','48'),(239,'agfa/futura/extra-bold','402171','fee332','600','N°141   .','48'),(240,'agfa/futura/extra-bold','000000','ffffff','1300','MICKEY JEUX     .','48'),(241,'agfa/futura/extra-bold','000000','ffffff','600','N°126   .','48'),(242,'agfa/futura/extra-bold','ffe327','ff4149','1300','MICKEY JEUX     .','48'),(243,'agfa/futura/extra-bold','ffe327','ff4149','600','N°126   .','48'),(244,'agfa/futura/extra-bold','ffe327','ff4149','600','N° 126   .','48'),(245,'agfa/futura/extra-bold','ffe327','ff4149','650','N° 126   .','48'),(246,'agfa/futura/extra-bold','ffffff','ff4149','650','N° 126   .','48'),(247,'agfa/futura/extra-bold','fd382f','fbdc29','1300','MICKEY JEUX     .','48'),(248,'agfa/futura/extra-bold','fd382f','fbdc29','650','N° 120   .','48'),(249,'agfa/futura/extra-bold','f53737','fff229','1300','MICKEY JEUX     .','48'),(250,'agfa/futura/extra-bold','f53737','fff229','650','N° 122   .','48'),(251,'agfa/futura/extra-bold','ffe327','ff372d','1300','MICKEY JEUX     .','48'),(252,'agfa/futura/extra-bold','ffffff','ff372d','650','N° 126   .','48'),(253,'agfa/futura/extra-bold','fee394','4d3293','1300','MICKEY JEUX     .','48'),(254,'agfa/futura/extra-bold','fee394','4d3293','650','N° 111   .','48'),(255,'agfa/futura/extra-bold','ce9a53','54305a','1300','MICKEY JEUX     .','48'),(256,'agfa/futura/extra-bold','ce9a53','54305a','650','N° 114   .','48'),(257,'agfa/futura/extra-bold','000000','4d3293','1300','MICKEY JEUX     .','48'),(258,'agfa/futura/extra-bold','000000','4d3293','650','N° 111   .','48'),(259,'agfa/futura/extra-bold','000000','54305a','1300','MICKEY JEUX     .','48'),(260,'agfa/futura/extra-bold','000000','54305a','650','N° 114   .','48'),(261,'agfa/futura/extra-bold','ffffff','4d3293','1300','MICKEY JEUX     .','48'),(262,'agfa/futura/extra-bold','ffffff','4d3293','650','N° 111   .','48'),(263,'agfa/futura/extra-bold','ffffff','54305a','1300','MICKEY JEUX     .','48'),(264,'agfa/futura/extra-bold','ffffff','54305a','650','N° 114   .','48'),(265,'agfa/futura/extra-bold','ffffff','cb2150','1300','MICKEY JEUX     .','48'),(266,'agfa/futura/extra-bold','ffe99b','cb2150','650','N° 106   .','48'),(267,'agfa/futura/extra-bold','ffffff','5459b8','1300','MICKEY JEUX     .','48'),(268,'agfa/futura/extra-bold','ffe54a','5459b8','650','N° 109   .','48'),(269,'agfa/futura/extra-bold','ffffff','8ca259','1300','MICKEY JEUX     .','48'),(270,'agfa/futura/extra-bold','fedc5e','8ca259','650','N° 107   .','48'),(271,'agfa/futura/extra-bold','ffffff','fe9c43','1300','MICKEY JEUX     .','48'),(272,'agfa/futura/extra-bold','000000','fe9c43','650','N° 79   .','48'),(273,'agfa/futura/extra-bold','ffffff','7869c0','1300','MICKEY JEUX     .','48'),(274,'agfa/futura/extra-bold','000000','7869c0','650','N° 81   .','48'),(275,'agfa/futura/extra-bold','ffffff','ff702b','1300','MICKEY JEUX     .','48'),(276,'agfa/futura/extra-bold','000000','ff702b','650','N° 87   .','48'),(277,'agfa/futura/extra-bold','ffffff','fe9c43','650','N° 79   .','48'),(278,'agfa/futura/extra-bold','ffffff','7869c0','650','N° 81   .','48'),(279,'agfa/futura/extra-bold','ffffff','ff702b','650','N° 87   .','48'),(280,'agfa/futura/extra-bold','ffe327','ff372d','650','N° 126   .','48'),(281,'storm/zeppelin/53-bold-italic','ffffff','f0f000','800','4 6 6 ','18'),(297,'ortizlopez/ol-london/ollondon-black','ffffff','b5d374','4900','1893-1896 Le r','18'),(296,'ortizlopez/ol-london/ollondon-black','ffffff','b5d374','4900','1893-1896 Le r','18'),(295,'ortizlopez/ol-london/ollondon-black','ffffff','b5d374','4900','1893-1896 Le r','18'),(294,'ortizlopez/ol-london/ollondon-black','ffffff','e36c2d','2000','du Never Never                                                                                      .','18'),(293,'ortizlopez/ol-london/ollondon-black','ffffff','b5d374','4900','1893-1896 Le r','18'),(292,'ortizlopez/ol-london/ollondon-black','ffffff','e36c2d','1000','du Never Never                                                                                      .','18'),(291,'ortizlopez/ol-london/ollondon-black','ffffff','b5d374','4900','1893-1896 Le r','18'),(290,'ortizlopez/ol-london/ollondon-black','ffffff','e36c2d','4900','du Never Never                                                                                      .','18'),(289,'ortizlopez/ol-london/ollondon-black','ffffff','b5d374','4900','1893-1896 Le r','18'),(288,'ortizlopez/ol-london/ollondon-black','ffffff','e36c2d','4900','1893-1896 Le r','18'),(287,'ortizlopez/ol-london/ollondon-black','ffffff','b5d374','4900','1893-1896 Le r','18'),(286,'ortizlopez/ol-london/ollondon-black','ffffff','e36c2d','4900','1893-1896 Le r','18'),(285,'ortizlopez/ol-london/ollondon-black','ffffff','b5d374','4900','1893-1896 Le r','18'),(284,'ortizlopez/ol-london/ollondon-black','ffffff','b5d374','4900','1893-1896 Le r','18'),(283,'ortizlopez/ol-london/ollondon-black','ffffff','b5d374','4900','1893-1896 Le r','18'),(282,'storm/zeppelin/53-bold-italic','000000','b5d374','800','4 6 6 ','18'),(298,'ortizlopez/ol-london/ollondon-black','ffffff','b5d374','4900','1893-1896 Le r','18'),(299,'ortizlopez/ol-london/ollondon-black','ffffff','b5d374','4900','1893-1896 Le r','18'),(300,'ortizlopez/ol-london/ollondon-black','ffffff','b5d374','4900','1893-1896 Le r','18'),(301,'storm/zeppelin/53-bold-italic','ffffff','d2465f','800','4 6 5 ','18'),(302,'ortizlopez/ol-london/ollondon-black','000000','76e586','4900','1890 Le Protecteur de Pizen Bluff                                                                   .','18'),(303,'urw/kipp-clean/one','fe0000','c06040','1850','HISTOIRES DE COW-BOYS','18'),(304,'urw/kipp-clean/one','fec967','c06040','1850','HISTOIRES DE COW-BOYS','18'),(305,'urw/kipp-clean/one','fec967','c06040','1000','HISTOIRES DE COW-BOYS    .','18'),(306,'urw/kipp-clean/one','fec967','c06040','1050','HISTOIRES DE COW-BOYS    .','18'),(307,'urw/kipp-clean/one','fec967','c06040','1100','HISTOIRES DE COW-BOYS    .','18'),(308,'agfa/futura/extra-bold','ffffff','ffff51','1300','MICKEY JEUX     .','48'),(309,'agfa/futura/extra-bold','ffffff','ffff51','650','N','48'),(310,'agfa/futura/extra-bold','ffffff','ffff51','650','N','48'),(311,'agfa/futura/extra-bold','ffffff','7ca2c0','1300','MICKEY JEUX     .','48'),(312,'agfa/futura/extra-bold','a9cf84','7ca2c0','650','N','48'),(313,'agfa/futura/extra-bold','a9cf84','7ca2c0','1300','MICKEY JEUX     .','48'),(314,'agfa/futura/extra-bold','a9cf84','7ca2c0','650','N','48'),(315,'agfa/futura/extra-bold','c8bb4d','a668a5','1300','MICKEY JEUX     .','48'),(316,'agfa/futura/extra-bold','c8bb4d','a668a5','650','N','48'),(317,'agfa/futura/extra-bold','bdad51','6751a8','1300','MICKEY JEUX     .','48'),(318,'agfa/futura/extra-bold','bdad51','6751a8','650','N','48'),(319,'agfa/futura/extra-bold','fedc5e','8ca259','650','N','48'),(320,'agfa/futura/extra-bold','ffffff','d02b40','1300','MICKEY JEUX     .','48'),(321,'agfa/futura/extra-bold','dab832','d02b40','650','N','48'),(322,'agfa/futura/extra-bold','ffffff','cd1b28','1300','MICKEY JEUX     .','48'),(323,'agfa/futura/extra-bold','ffffff','cd1b28','650','N','48'),(324,'agfa/futura/extra-bold','ffffff','cd1b28','650','N','48'),(325,'agfa/futura/extra-bold','ffffff','cd1b28','650','N','48'),(326,'agfa/futura/extra-bold','ffffff','ce373c','1300','MICKEY JEUX     .','48'),(327,'agfa/futura/extra-bold','ffffff','ce373c','650','N','48'),(328,'agfa/futura/extra-bold','ffffff','ce373c','650','N','48'),(329,'redrooster/block-gothic-rr/demi-extra-condensed','000000','ffffff','1650','DU JOURNAL DE      .','18'),(330,'redrooster/block-gothic-rr/demi-extra-condensed','000000','ffffff','650','DU JOURNAL DE      .','18'),(331,'redrooster/block-gothic-rr/demi-extra-condensed','000000','ffffff','500','DU JOURNAL DE      .','18'),(332,'redrooster/block-gothic-rr/demi-extra-condensed','000000','ffffff','800','D U  J O U R N A L   D E      .','18'),(333,'redrooster/block-gothic-rr/demi-extra-condensed','000000','ffffff','700','D U  J O U R N A L   D E      .','18'),(334,'redrooster/block-gothic-rr/demi-extra-condensed','000000','ffffff','700','D U   J O U R N A L    D E      .','18'),(335,'redrooster/block-gothic-rr/demi-extra-condensed','000000','ffffff','70','1965','18'),(336,'redrooster/block-gothic-rr/demi-extra-condensed','000000','ffffff','150','1965','18'),(337,'redrooster/block-gothic-rr/demi-extra-condensed','000000','ffffff','150','1965   .','18'),(338,'redrooster/block-gothic-rr/demi-extra-condensed','000000','ffffff','100','1965   .','18'),(339,'redrooster/block-gothic-rr/demi-extra-condensed','000000','ffffff','120','1965   .','18'),(340,'redrooster/block-gothic-rr/demi-extra-condensed','000000','ffffff','200','1965   .','18'),(341,'redrooster/block-gothic-rr/demi-extra-condensed','000000','ffffff','200','1968   .','18'),(342,'fontfont/zwo/bold-lf-sc','ffdb48','b7390f','225','272','18'),(343,'fontfont/zwo/bold-lf-sc','ffffff','fd530b','225','289','18'),(344,'agfa/itc-kabel/itc-book','000000','ffffff','4600','WALT DISNEY TREASURES     UNCLE SCROOGE: 75 YEARS OF INNOVATION     .','84'),(345,'agfa/itc-kabel/itc-book','000000','dee0e4','4600','WALT DISNEY TREASURES     UNCLE SCROOGE: 75 YEARS OF INNOVATION     .','84'),(346,'agfa/itc-kabel/itc-book','000000','dee0e4','4600','WALT DISNEY TREASURES     DISNEY COMICS: 75 YEARS OF INNOVATION     .','84'),(347,'agfa/itc-kabel/itc-book','000000','dee0e4','4600','WALT DISNEY TREASURES     DISNEY COMICS: 75 YEARS OF INNOVATION       .','84'),(348,'agfa/itc-kabel/itc-book','000000','dee0e4','4600','WALT DISNEY TREASURES         DISNEY COMICS: 75 YEARS OF INNOVATION       .','84'),(349,'itfmecanorma/eurostile/extended-bold','000000','c10000','1650','MICKEY  PARADE      .','18'),(350,'itfmecanorma/eurostile/extended-bold','000000','e60000','1650','MICKEY  PARADE      .','18'),(351,'itfmecanorma/eurostile/extended-bold','000000','0e5b69','1650','MICKEY  PARADE      .','18'),(352,'samuelstype/andrew-samuels/light-italic','000000','168505','1400','COLLECION BIBLIOTHEQUE   .','18'),(353,'samuelstype/andrew-samuels/light-italic','000000','168505','700','COLLECTION    .','18'),(354,'samuelstype/andrew-samuels/light-italic','000000','168505','1000','COLLECTION    .','18'),(355,'samuelstype/andrew-samuels/light-italic','000000','168505','1000','BIBLIOTHEQUE','18'),(356,'samuelstype/andrew-samuels/light-italic','000000','ed7803','1000','COLLECTION    .','18'),(357,'samuelstype/andrew-samuels/light-italic','000000','ed7803','1000','BIBLIOTHEQUE','18'),(358,'fontfont/ff-schulbuch/nord-fett','e6e600','b62821','3700','LE JOU   NAL DE MICKEY    .','48'),(359,'fontbureau/benton-sans/bold','e6e600','b62821','230','R','48'),(360,'fontfont/ff-schulbuch/nord-fett','e6e600','b62821','2700','MICKEY-PA   ADE   .','48'),(361,'fontfont/ff-schulbuch/nord-fett','ed1812','e6e600','2700','MICKEY-PA   ADE   .','48'),(362,'fontfont/ff-schulbuch/nord-fett','533211','fbc011','3700','LE JOU   NAL DE MICKEY    .','48'),(363,'fontbureau/benton-sans/bold','533211','fbc011','230','R','48'),(364,'fontfont/ff-schulbuch/nord-fett','533211','fbc011','2700','MICKEY-PA   ADE   .','48'),(365,'fontfont/ff-schulbuch/nord-fett','533211','e6e600','3700','LE JOU   NAL DE MICKEY    .','48'),(366,'fontbureau/benton-sans/bold','533211','e6e600','230','R','48'),(367,'fontfont/ff-schulbuch/nord-fett','533211','e6e600','2700','MICKEY-PA   ADE   .','48'),(368,'fontfont/ff-schulbuch/nord-fett','e6e600','000082','3700','LE JOU   NAL DE MICKEY    .','48'),(369,'fontbureau/benton-sans/bold','e6e600','000082','230','R','48'),(370,'fontfont/ff-schulbuch/nord-fett','e6e600','000082','2700','MICKEY-PA   ADE   .','48'),(371,'fontfont/ff-schulbuch/nord-fett','000000','d7c755','3700','LE JOU   NAL DE MICKEY    .','48'),(372,'fontbureau/benton-sans/bold','000000','d7c755','230','R','48'),(373,'fontfont/ff-schulbuch/nord-fett','000000','d7c755','2700','MICKEY-PA   ADE   .','48'),(374,'storm/zeppelin/53-bold-italic','ffffff','6223a0','800','4 5 8 ','18'),(375,'ortizlopez/ol-london/ollondon-black','1f2b3d','62b2ef','4900','La jeunesse de Picsou n%C2%B01                                                                      .','18'),(376,'efscangraphic/compacta-sh/bold','ab3f47','d2d200','1500','SUPER PICSOU GEANT    .','18'),(377,'efscangraphic/compacta-sh/bold','ab3f47','d2d200','1200','SUPER PICSOU GEANT    .','18'),(378,'efscangraphic/compacta-sh/bold','ab3f47','d2d200','1000','SUPER PICSOU G','18'),(379,'efscangraphic/compacta-sh/bold','ab3f47','d2d200','1000','SUPER PICSOU G','18'),(380,'efscangraphic/compacta-sh/bold','ab3f47','d2d200','1000','SUPER PICSOU G','18'),(381,'efscangraphic/compacta-sh/bold','ab3f47','d2d200','1000','SUPER PICSOU GEANT    .','18'),(382,'paratype/futura-book/bold','000000','ffffff','50','3    .','18'),(383,'paratype/futura-book/bold','000000','ffffff','75','3    .','18'),(384,'paratype/futura-book/bold','000000','ffffff','85','3    .','18'),(385,'ef-typeshop/montreal/bold','ffffff','000000','1000','LE JOURNAL DE MICKEY    .','18'),(386,'ef-typeshop/montreal/bold','f2ca40','f0302b','1000','LE JOURNAL DE MICKEY    .','18'),(387,'ef-typeshop/montreal/bold','f2ca40','f0302b','1500','LE JOURNAL DE MICKEY    .','18'),(388,'ef-typeshop/montreal/bold','f2ca40','f0302b','1700','LE JOURNAL DE MICKEY    .','18'),(389,'ef-typeshop/montreal/bold','ffffff','f0302b','1200','N  2463-64/2464       .','18'),(390,'ef-typeshop/montreal/bold','ffffff','f0302b','1200','N  2463/2464       .','18'),(391,'ef-typeshop/montreal/bold','ffffff','f0302b','1200','N   2463/2464       .','18'),(392,'ef-typeshop/montreal/bold','ffffff','f0302b','200','os       .','18'),(393,'ef-typeshop/montreal/bold','ffffff','f0302b','1200','N    2463/2464       .','18'),(394,'paratype/futura-book/heavy','f2ca40','f0302b','1200','NUM','18'),(395,'paratype/futura-book/heavy','ffffff','f0302b','200','os       .','18'),(396,'paratype/futura-book/heavy','f2ca40','f0302b','1200','NUM','18'),(397,'paratype/futura-book/heavy','f2ca40','f0302b','1200','NUM','18'),(398,'paratype/futura-book/heavy','f2ca40','f0302b','1200','NUM','18'),(399,'ef-typeshop/montreal/bold','d6a552','4e9fcb','1700','LE JOURNAL DE MICKEY    .','18'),(400,'ef-typeshop/montreal/bold','ffffff','4e9fcb','1200','N    2454/2455       .','18'),(401,'ef-typeshop/montreal/bold','ffffff','4e9fcb','200','os       .','18'),(402,'ef-typeshop/montreal/bold','dfcca4','0465bd','1700','LE JOURNAL DE MICKEY    .','18'),(403,'ef-typeshop/montreal/bold','dfcca4','0465bd','1200','N    2411/2412       .','18'),(404,'ef-typeshop/montreal/bold','dfcca4','0465bd','200','os       .','18'),(405,'urw/engschrift/austria-d','ee3e39','ffffff','3000','LE JOURNAL DE MICKEY N%C2%B0 2715/2716    .','18'),(406,'urw/engschrift/austria-d','ee3e39','ffffff','2500','LE JOURNAL DE MICKEY N','18'),(407,'urw/engschrift/d-2377','ee3e39','ffffff','1700','LE JOURNAL DE MICKEY N','18'),(408,'urw/engschrift/d-2377','ee3e39','ffffff','1700','LE JOURNAL DE MICKEY N','18'),(409,'urw/engschrift/d-2377','ee3e39','ffffff','1700','LE JOURNAL DE MICKEY N','18'),(410,'ef-typeshop/montreal/bold','ffffff','000000','1700','LE JOURNAL DE MICKEY    .','18'),(411,'ef-typeshop/montreal/bold','ffffff','000000','1200','N    2506/2507       .','18'),(412,'ef-typeshop/montreal/bold','ffffff','000000','200','os       .','18');
/*!40000 ALTER TABLE `images_myfonts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-11-26 12:15:35
