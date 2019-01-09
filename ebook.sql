-- MySQL dump 10.16  Distrib 10.3.9-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ebook
-- ------------------------------------------------------
-- Server version	10.3.9-MariaDB

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `book_No` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(50) NOT NULL,
  `book_price` varchar(50) NOT NULL,
  `book_own` varchar(50) NOT NULL,
  `book_owner` varchar(50) NOT NULL,
  PRIMARY KEY (`book_No`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'책1','free','o','kym'),(2,'책2','free','o','kym'),(3,'책3','free','o','kym'),(4,'책4','free','o','kym'),(5,'책5','free','o','kym'),(6,'책6','free','o','kym'),(7,'책7','free','o','kym'),(8,'책8','free','o','kym'),(9,'책9','free','o','kym'),(10,'책10','free','o','kym'),(11,'책11','no_free','o','kym'),(12,'책12','no_free','x','x'),(13,'책13','no_free','x','x'),(14,'책14','no_free','x','x'),(15,'책15','no_free','x','x'),(16,'책16','no_free','x','x'),(17,'책17','no_free','x','x'),(18,'책18','no_free','x','x'),(19,'책19','no_free','x','x'),(20,'책20','no_free','x','x'),(21,'책21','no_free','x','x'),(22,'책22','no_free','x','x'),(23,'책23','no_free','x','x'),(24,'책24','no_free','x','x'),(25,'책25','no_free','x','x'),(26,'책26','no_free','x','x'),(27,'책27','no_free','x','x'),(28,'책28','no_free','x','x'),(29,'책29','no_free','x','x'),(30,'책30','no_free','x','x'),(31,'책31','no_free','x','x'),(32,'책32','no_free','x','x'),(33,'책33','no_free','x','x'),(34,'책34','no_free','x','x'),(35,'책35','no_free','x','x'),(36,'책36','no_free','x','x'),(37,'책37','no_free','x','x'),(38,'책38','no_free','x','x'),(39,'책39','no_free','x','x'),(40,'책40','no_free','x','x'),(41,'책41','no_free','x','x'),(42,'책42','no_free','x','x'),(43,'책43','no_free','x','x'),(44,'책44','no_free','x','x'),(45,'책45','no_free','x','x'),(46,'책46','no_free','x','x'),(47,'책47','no_free','x','x'),(48,'책48','no_free','x','x'),(49,'책49','no_free','x','x'),(50,'책50','no_free','x','x'),(51,'책51','no_free','x','x'),(52,'책52','no_free','x','x'),(53,'책53','no_free','x','x'),(54,'책54','no_free','x','x'),(55,'책55','no_free','x','x'),(56,'책56','no_free','x','x'),(57,'책57','no_free','x','x'),(58,'책58','no_free','x','x'),(59,'책59','no_free','x','x'),(60,'책60','no_free','x','x'),(61,'책61','no_free','x','x'),(62,'책62','no_free','x','x'),(63,'책63','no_free','x','x'),(64,'책64','no_free','x','x'),(65,'책65','no_free','x','x'),(66,'책66','no_free','x','x'),(67,'책67','no_free','x','x'),(68,'책68','no_free','x','x'),(69,'책69','no_free','x','x'),(70,'책70','no_free','x','x'),(71,'책71','no_free','x','x'),(72,'책72','no_free','x','x'),(73,'책73','no_free','x','x'),(74,'책74','no_free','x','x'),(75,'책75','no_free','x','x'),(76,'책76','no_free','x','x'),(77,'책77','no_free','o','kym'),(78,'책78','no_free','x','x'),(79,'책79','no_free','x','x'),(80,'책80','no_free','x','x'),(81,'책81','no_free','x','x'),(82,'책82','no_free','x','x'),(83,'책83','no_free','x','x'),(84,'책84','no_free','x','x'),(85,'책85','no_free','x','x'),(86,'책86','no_free','x','x'),(87,'책87','no_free','x','x'),(88,'책88','no_free','x','x'),(89,'책89','no_free','x','x'),(90,'책90','no_free','x','x'),(91,'책91','no_free','x','x'),(92,'책92','no_free','x','x'),(93,'책93','no_free','x','x'),(94,'책94','no_free','x','x'),(95,'책95','no_free','x','x'),(96,'책96','no_free','x','x'),(97,'책97','no_free','x','x'),(98,'책98','no_free','x','x'),(99,'책99','no_free','o','kym'),(100,'책100','no_free','x','x');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` varchar(50) NOT NULL,
  `user_pwd` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('kym','1');
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

-- Dump completed on 2019-01-09 15:07:41
