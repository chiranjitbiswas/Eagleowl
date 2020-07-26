-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: eagleowl
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Current Database: `eagleowl`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `eagleowl` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `eagleowl`;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `Date` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Amount` decimal(4,0) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2016-04-29','9455622241','Shankara Narasimhan',260),(2,'2016-04-29','9597628723','Sulya Gupta',90),(3,'2016-04-29','9640338121','Brahma Swamy',80),(4,'2016-04-29','9383568793','Vaibhav Mulye',240),(5,'2016-04-29','9455622241','Shankara Narasimhan',230),(6,'2016-04-29','9521737322','Riddhi Nair',70),(7,'2016-04-29','9389644210','Brahma Swamy',80),(8,'2016-04-29','9603660688','Dhenuka Dhawan',250),(9,'2016-04-29','9451926724','Sahan Sibal',260),(10,'2016-04-29','9699939066','Haripriya Nayak',270),(11,'2016-04-29','9590146908','Sachi Loliyekar',110),(12,'2016-04-29','9389644210','Brahma Swamy',100),(13,'2016-04-29','9640338121','Brahma Swamy',240),(14,'2016-04-29','9236367267','Takshaka Sandal',70),(15,'2016-04-30','9969345730','Kavi Edwin',210),(16,'2016-04-30','9389644210','Brahma Swamy',280),(17,'2016-04-30','9971276037','Pramlocha Comar',210),(18,'2016-04-30','9241664018','Utathya Ghate',260),(19,'2016-04-30','9248936762','Arpana Raja',260),(20,'2016-04-30','9640338121','Brahma Swamy',200),(21,'2016-04-30','9895408016','Mukul Krishna',180),(22,'2016-04-30','9241664018','Utathya Ghate',260),(23,'2016-04-30','9920950009','Rohan Sarma',110),(24,'2016-04-30','9820224845','Tanika Philip',90),(25,'2016-04-30','9383568793','Vaibhav Mulye',200),(26,'2016-04-30','9732082404','Kali Chaudry',290),(27,'2016-04-30','9534474777','Daeva Tata',70),(28,'2016-05-01','9389644210','Brahma Swamy',160),(29,'2016-05-01','9572464275','Salmalin Mehta',100),(30,'2016-05-01','9688156631','Sahan Oak',200),(31,'2016-05-01','9236367267','Takshaka Sandal',250),(32,'2016-05-01','9979209995','Atman Mathur',140),(33,'2016-05-01','9521737322','Riddhi Nair',140),(34,'2016-05-01','9265205814','Daeva Peri',180),(35,'2016-05-01','9267357082','Muni Wasgare',210),(36,'2016-05-01','9267357082','Muni Wasgare',290),(37,'2016-05-01','9590146908','Sachi Loliyekar',190),(38,'2016-05-01','9389644210','Brahma Swamy',290),(39,'2016-05-01','9241664018','Utathya Ghate',180),(40,'2016-05-02','9971276037','Pramlocha Comar',80),(41,'2016-05-02','9920950009','Rohan Sarma',140),(42,'2016-05-02','9705384480','Latif Chia',70),(43,'2016-05-02','9252350612','Anushka Mody',150),(44,'2016-05-02','9688156631','Sahan Oak',290),(45,'2016-05-02','9359394987','Tarun Mapkar',260),(46,'2016-05-02','9747425720','Markandeya Barad',100),(47,'2016-05-02','9389644210','Brahma Swamy',180),(48,'2016-05-02','9699939066','Haripriya Nayak',110),(49,'2016-05-02','9590146908','Sachi Loliyekar',220),(50,'2016-05-02','9820224845','Tanika Philip',220),(51,'2016-05-02','9747425720','Markandeya Barad',90),(52,'2016-05-03','9910042819','Shanti Bajwa',100),(53,'2016-05-03','9518195948','Indra Chaudry',110),(54,'2016-05-03','9389644210','Brahma Swamy',80),(55,'2016-05-03','9236367267','Takshaka Sandal',100),(56,'2016-05-03','9640338121','Brahma Swamy',100),(57,'2016-05-03','9389644210','Brahma Swamy',120),(58,'2016-05-03','9453085874','Manu Oza',120),(59,'2016-05-03','9976945538','Amitabha Kothari',270),(60,'2016-05-03','9910042819','Shanti Bajwa',280),(61,'2016-05-03','9389644210','Brahma Swamy',200),(62,'2016-05-03','9405883814','Gauri Som',220),(63,'2016-05-03','9252350612','Anushka Mody',170),(64,'2016-05-04','9453085874','Manu Oza',120),(65,'2016-05-04','9640338121','Brahma Swamy',150),(66,'2016-05-04','9927277067','Ranjan Khare',80),(67,'2016-05-04','9910042819','Shanti Bajwa',250),(68,'2016-05-04','9389644210','Brahma Swamy',200),(69,'2016-05-04','9293117791','Kumara Nayak',250),(70,'2016-05-04','9976945538','Amitabha Kothari',110),(71,'2016-05-04','9518195948','Indra Chaudry',200),(72,'2016-05-04','9518195948','Indra Chaudry',130),(73,'2016-05-04','9389644210','Brahma Swamy',140),(74,'2016-05-04','9521737322','Riddhi Nair',120),(75,'2016-05-04','9920950009','Rohan Sarma',120),(76,'2016-05-04','9597628723','Sulya Gupta',140),(77,'2016-05-04','9534474777','Daeva Tata',70),(78,'2016-05-04','9009381182','Mira Reddy',240),(79,'2016-05-04','9009381182','Mira Reddy',160),(80,'2016-05-04','9236367267','Takshaka Sandal',150),(81,'2016-05-04','9265205814','Daeva Peri',180),(82,'2016-05-05','9451926724','Sahan Sibal',170),(83,'2016-05-05','9504662177','Tara Menon',230),(84,'2016-05-05','9455622241','Shankara Narasimhan',200),(85,'2016-05-05','9927277067','Ranjan Khare',110),(86,'2016-05-05','9521737322','Riddhi Nair',90),(87,'2016-05-05','9252350612','Anushka Mody',120),(88,'2016-05-05','9699939066','Haripriya Nayak',70),(89,'2016-05-05','9150159527','Leya Sankaran',270),(90,'2016-05-05','9389644210','Brahma Swamy',240),(91,'2016-05-05','9733555024','Nirav Khalsa',110),(92,'2016-05-05','9236367267','Takshaka Sandal',200),(93,'2016-05-05','9241664018','Utathya Ghate',260),(94,'2016-05-06','9455622241','Shankara Narasimhan',210),(95,'2016-05-06','9389644210','Brahma Swamy',250),(96,'2016-05-06','9705384480','Latif Chia',160),(97,'2016-05-06','9359394987','Tarun Mapkar',100),(98,'2016-05-06','9688156631','Sahan Oak',210),(99,'2016-05-06','9688156631','Sahan Oak',280),(100,'2016-05-06','9389644210','Brahma Swamy',110),(101,'2016-05-06','9699939066','Haripriya Nayak',130),(102,'2016-05-06','9389644210','Brahma Swamy',110),(103,'2016-05-06','9389644210','Brahma Swamy',90),(104,'2016-05-06','9597628723','Sulya Gupta',190),(105,'2016-05-06','9521737322','Riddhi Nair',140),(106,'2016-05-06','9451926724','Sahan Sibal',230),(107,'2016-05-06','9403313898','Adri Dave',210),(108,'2016-05-06','9895408016','Mukul Krishna',240),(109,'2016-05-06','9504662177','Tara Menon',140),(110,'2016-05-07','9389644210','Brahma Swamy',140),(111,'2016-05-07','9699939066','Haripriya Nayak',280),(112,'2016-05-07','9732082404','Kali Chaudry',130),(113,'2016-05-07','9150159527','Leya Sankaran',250),(114,'2016-05-07','9820224845','Tanika Philip',290),(115,'2016-05-07','9248936762','Arpana Raja',260),(116,'2016-05-07','9293117791','Kumara Nayak',200),(117,'2016-05-07','9640338121','Brahma Swamy',200),(118,'2016-05-07','9732082404','Kali Chaudry',280),(119,'2016-05-07','9265205814','Daeva Peri',70),(120,'2016-05-07','9534474777','Daeva Tata',160),(121,'2016-05-07','9252350612','Anushka Mody',80),(122,'2016-05-07','9389644210','Brahma Swamy',220),(123,'2016-05-07','9153022424','Hastin Mangal',180),(124,'2016-05-07','9920950009','Rohan Sarma',160),(125,'2016-05-07','9534474777','Daeva Tata',230),(126,'2016-05-07','9359394987','Tarun Mapkar',260),(127,'2016-05-07','9969345730','Kavi Edwin',100),(128,'2016-05-08','9389644210','Brahma Swamy',130),(129,'2016-05-08','9389644210','Brahma Swamy',120),(130,'2016-05-08','9504662177','Tara Menon',220),(131,'2016-05-08','9455622241','Shankara Narasimhan',150),(132,'2016-05-08','9389644210','Brahma Swamy',90),(133,'2016-05-08','9236367267','Takshaka Sandal',110),(134,'2016-05-08','9330107696','Nipa Naidu',70),(135,'2016-05-08','9927277067','Ranjan Khare',180),(136,'2016-05-08','9140356318','Ballari Upadhyay',270),(137,'2016-05-08','9389644210','Brahma Swamy',70),(138,'2016-05-08','9518195948','Indra Chaudry',180),(139,'2016-05-08','9976945538','Amitabha Kothari',270),(140,'2016-05-08','9534474777','Daeva Tata',210),(141,'2016-05-08','9504662177','Tara Menon',210),(142,'2016-05-08','9293117791','Kumara Nayak',200),(143,'2016-05-08','9293117791','Kumara Nayak',140),(144,'2016-05-08','9248936762','Arpana Raja',110),(145,'2016-05-08','9960294002','Mitra Gounder',240),(146,'2016-05-08','9150159527','Leya Sankaran',140),(147,'2016-05-08','9236367267','Takshaka Sandal',250),(148,'2016-05-09','9732082404','Kali Chaudry',100),(149,'2016-05-09','9521737322','Riddhi Nair',140),(150,'2016-05-09','9293117791','Kumara Nayak',190),(151,'2016-05-09','9590146908','Sachi Loliyekar',150),(152,'2016-05-09','9688156631','Sahan Oak',220),(153,'2016-05-09','9895408016','Mukul Krishna',230),(154,'2016-05-09','9261697610','Niloufer Handa',130),(155,'2016-05-09','9927277067','Ranjan Khare',170),(156,'2016-05-09','9640338121','Brahma Swamy',230),(157,'2016-05-09','9485132704','Sohalia Das',250),(158,'2016-05-09','9330107696','Nipa Naidu',240),(159,'2016-05-09','9389644210','Brahma Swamy',180),(160,'2016-05-09','9389644210','Brahma Swamy',210);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-26 22:56:55
