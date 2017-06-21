-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: strict
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (1,'banner.jpg','STRICT 1','Strict 1 is a responsive theme with & a clean and minimal look.','show'),(2,'banner1.2.jpg','STRICT 2','Strict 2 is a responsive theme with & a clean and minimal look.','show'),(6,'banner1.3.jpg','STRICT 3','Strict 3 is a responsive theme with & a clean and minimal look.','show');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `time_cmt` datetime NOT NULL,
  `subscribe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (92,'Nguyen Van Toi','dinhmanh96@gmail.com','Designers everywhere gush with admiration upon seeing a web design and exclaim s beautiful, its so clean!','2017-06-19 11:45:42','Yes'),(93,'Nguyen Dinh Manh','toinguyenvan@gmail.com','Contact me if you like my work','2017-06-19 11:48:51','No'),(94,'Nguyen Van Nam','namnguyen96@gmail.com','This multipurpose theme is espacially created to be used for different projects.\r\n','2017-06-19 11:49:47','Yes'),(95,'Trinh Xuan Vinh','vinhvinhtrinh@gmail.com','This multipurpose theme is espacially created to be used for different projects, can be easy to spot a good example of clean design.','2017-06-19 11:50:41','No'),(96,'Hoang Thuy Linh','linhlinh@gmail.com','Than be easy to spot a good example of clean design.','2017-06-19 11:55:09','No'),(97,'Nguyen Van Tuan','tuannguyenvan@gmail.com','Hello Message\r\n','2017-06-19 11:55:42','No');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showcase`
--

DROP TABLE IF EXISTS `showcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showcase` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name_project` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_project` text COLLATE utf8_unicode_ci NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showcase`
--

LOCK TABLES `showcase` WRITE;
/*!40000 ALTER TABLE `showcase` DISABLE KEYS */;
INSERT INTO `showcase` VALUES (1,'Project 1','Lorem ipsum dolor sit amet, consectetur adipisicing elit.','pic1.jpg','http:/abc.xyz1','2017-06-14 00:00:00'),(2,'Project 2','Description project 2','pic2.jpg','http:/abc.xyz2','2017-06-15 00:00:00'),(4,'Project 3','Description project 3','pic3.jpg','http:abc.xyz3','2017-06-14 00:00:00'),(7,'Project 4','Description project 4','pic4.jpg','http:abc.xyz4','2017-06-14 02:40:05'),(8,'Project 5','Description project 5','pic5.jpg','http:abc.xyz5','2017-06-14 02:40:46'),(11,'Project 6','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','pic6.jpg','http:abc.xyz6','2017-06-16 12:52:13');
/*!40000 ALTER TABLE `showcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple`
--

DROP TABLE IF EXISTS `simple`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time_add` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple`
--

LOCK TABLES `simple` WRITE;
/*!40000 ALTER TABLE `simple` DISABLE KEYS */;
INSERT INTO `simple` VALUES (1,'Optimized for all devices','STRICT has been design to be fully responsive on all devices.','icon1.jpg','2017-06-21 00:00:00'),(2,'Clean & Minimal Design','This multipurpose theme is espacially created to be used for different projects.','icon2.jpg','2017-06-14 00:00:00'),(8,'STRICT 5','Strict 5 is a responsive theme with & a clean and minimal look.','icon3.jpg','2017-06-16 14:39:58');
/*!40000 ALTER TABLE `simple` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social`
--

DROP TABLE IF EXISTS `social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social`
--

LOCK TABLES `social` WRITE;
/*!40000 ALTER TABLE `social` DISABLE KEYS */;
INSERT INTO `social` VALUES (1,'Facebook','https://www.facebook.com/manh.nguyendinh.948','facebook'),(2,'Google+','https://www.google.com','google-plus'),(3,'Twitter','https://twitter.com','twitter'),(4,'Linkedin','https://linkdin.com','linkedin');
/*!40000 ALTER TABLE `social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Nguyễn Đình Mạnh','dinhmanh96@gmail.com','12345'),(2,'Nguyen Van Toi','toinv@gmail.com','123'),(3,'admin','admin@admin','admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-21 15:10:48
