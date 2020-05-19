-- MySQL dump 10.10
--
-- Host: localhost    Database: connectglobe
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `uname` varchar(30) default NULL,
  `upass` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--


/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
LOCK TABLES `admin` WRITE;
INSERT INTO `admin` VALUES ('HARSH','SHAH'),('KUSHAL','NANAVATI');
UNLOCK TABLES;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `regdate` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--


/*!40000 ALTER TABLE `members` DISABLE KEYS */;
LOCK TABLES `members` WRITE;
INSERT INTO `members` VALUES (1,'harsh','shah','harsh32@yahoo.co.in','harsh','shah','2015-03-28'),(2,'kushal','nanavati','kushal33@gmail.com','kushal','nanavati','2015-03-28'),(10,'kathan','raj','kathan33@gmail.com','kathan','12345','2015-04-27');
UNLOCK TABLES;
/*!40000 ALTER TABLE `members` ENABLE KEYS */;

--
-- Table structure for table `postreport`
--

DROP TABLE IF EXISTS `postreport`;
CREATE TABLE `postreport` (
  `state` varchar(30) default NULL,
  `district` varchar(30) default NULL,
  `taluka` varchar(30) default NULL,
  `your_report` varchar(100) default NULL,
  `your_status` varchar(30) default NULL,
  `picture` blob,
  `post_id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postreport`
--


/*!40000 ALTER TABLE `postreport` DISABLE KEYS */;
LOCK TABLES `postreport` WRITE;
INSERT INTO `postreport` VALUES ('Kerala','Ahmednagar','A','hiiiiiii','pending','post.jpg',6),('Maharashtra','Ahmednagar','A','Good','pending','post.jpg',7),('Kerala','Ahmednagar','B','Hiiiiiiii','pending','checked.gif',8),('Jarkhand','Pune','C','Good','executed','post.jpg',9),('Goa','Mumbai','A','Very Good','executed','unchecked.gif',10),('Jammu & Kashmir','Mumbai','C','hiiiiii','pending','post.jpg',11),('Maharashtra','Pune','B','Good','pending','post.jpg',12),('Karnataka','Solapur','D','some type of hareshment like kidding everytime.','executed','alteros.ico',14);
UNLOCK TABLES;
/*!40000 ALTER TABLE `postreport` ENABLE KEYS */;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `topicname` varchar(30) default NULL,
  `email` varchar(50) default NULL,
  `discuss` varchar(200) default NULL,
  `date` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic`
--


/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
LOCK TABLES `topic` WRITE;
INSERT INTO `topic` VALUES ('CCC','kushal33@gmail.com','Hellllooooooooo','2015-04-27'),('Hahaha','aaa@gmail.com','Good',''),('Hahaha','aaa@gmail.com','Good','2015-04-27'),('kkk','anil23@gmail.com','hahaha','2015-04-27');
UNLOCK TABLES;
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

