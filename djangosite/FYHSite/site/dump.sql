-- MySQL dump 10.13  Distrib 5.1.66, for pc-linux-gnu (x86_64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	5.1.66-log

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
-- Current Database: `cs453db2`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cs453db2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cs453db2`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_fbfc09f1` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add address',8,'add_address'),(23,'Can change address',8,'change_address'),(24,'Can delete address',8,'delete_address'),(25,'Can add registration profile',9,'add_registrationprofile'),(26,'Can change registration profile',9,'change_registrationprofile'),(27,'Can delete registration profile',9,'delete_registrationprofile'),(28,'Can add frequent shopper',10,'add_frequentshopper'),(29,'Can change frequent shopper',10,'change_frequentshopper'),(30,'Can delete frequent shopper',10,'delete_frequentshopper'),(31,'Can add customer',11,'add_customer'),(32,'Can change customer',11,'change_customer'),(33,'Can delete customer',11,'delete_customer'),(34,'Can add address',12,'add_address'),(35,'Can change address',12,'change_address'),(36,'Can delete address',12,'delete_address'),(37,'Can add store',13,'add_store'),(38,'Can change store',13,'change_store'),(39,'Can delete store',13,'delete_store'),(40,'Can add vendor',14,'add_vendor'),(41,'Can change vendor',14,'change_vendor'),(42,'Can delete vendor',14,'delete_vendor'),(43,'Can add brand',15,'add_brand'),(44,'Can change brand',15,'change_brand'),(45,'Can delete brand',15,'delete_brand'),(46,'Can add product type',16,'add_producttype'),(47,'Can change product type',16,'change_producttype'),(48,'Can delete product type',16,'delete_producttype'),(49,'Can add instance of',17,'add_instanceof'),(50,'Can change instance of',17,'change_instanceof'),(51,'Can delete instance of',17,'delete_instanceof'),(52,'Can add product',18,'add_product'),(53,'Can change product',18,'change_product'),(54,'Can delete product',18,'delete_product'),(55,'Can add is a type of',19,'add_isatypeof'),(56,'Can change is a type of',19,'change_isatypeof'),(57,'Can delete is a type of',19,'delete_isatypeof'),(58,'Can add order tracking',20,'add_ordertracking'),(59,'Can change order tracking',20,'change_ordertracking'),(60,'Can delete order tracking',20,'delete_ordertracking'),(61,'Can add ships to',21,'add_shipsto'),(62,'Can change ships to',21,'change_shipsto'),(63,'Can delete ships to',21,'delete_shipsto'),(64,'Can add bills to',22,'add_billsto'),(65,'Can change bills to',22,'change_billsto'),(66,'Can delete bills to',22,'delete_billsto'),(67,'Can add sells to',23,'add_sellsto'),(68,'Can change sells to',23,'change_sellsto'),(69,'Can delete sells to',23,'delete_sellsto'),(70,'Can add sells these',24,'add_sellsthese'),(71,'Can change sells these',24,'change_sellsthese'),(72,'Can delete sells these',24,'delete_sellsthese'),(73,'Can add ordered',25,'add_ordered'),(74,'Can change ordered',25,'change_ordered'),(75,'Can delete ordered',25,'delete_ordered'),(76,'Can add been ordered',26,'add_beenordered'),(77,'Can change been ordered',26,'change_beenordered'),(78,'Can delete been ordered',26,'delete_beenordered'),(79,'Can add restocks',27,'add_restocks'),(80,'Can change restocks',27,'change_restocks'),(81,'Can delete restocks',27,'delete_restocks'),(82,'Can add cart',28,'add_cart'),(83,'Can change cart',28,'change_cart'),(84,'Can delete cart',28,'delete_cart'),(85,'Can add item',29,'add_item'),(86,'Can change item',29,'change_item'),(87,'Can delete item',29,'delete_item');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'cward','','','cward@polaris.cs.wcu.edu','pbkdf2_sha256$10000$pvftuGzHQwJO$WQvP03qVD7TuBmk0dDxzpmY3Ia3TXV61ZipVRdPgu/E=',1,1,1,'2012-12-10 19:54:05','2012-11-16 01:02:57'),(3,'kraken','','','chris.dev.ward@gmail.com','sha1$113f8$20670b3b197f457918a27459b79425f9e67b404a',1,1,1,'2012-11-16 13:36:54','2012-11-16 13:36:47'),(4,'lol','','','chris.dev.ward@gmail.com','sha1$db337$1bd80481004c1b584cce8a01d888e814069a6ad1',0,1,0,'2012-11-16 13:41:40','2012-11-16 13:41:40'),(5,'dieg08','','','yager08@gmail.com','pbkdf2_sha256$10000$xWp6rOKEztRe$uFKXEg9bnHBkkK2zdpo32QMJo1JUSim/9KuxsLlshdk=',0,0,0,'2012-11-26 13:22:23','2012-11-26 13:21:40'),(6,'diego','','','diego.h.gonzalez08@gmail.com','pbkdf2_sha256$10000$Yub3UiyV7MKB$DCBaqAEKhN1gX+8tU/SdnwSAzTkp9/UtWSJ7F7Zg3DA=',0,0,0,'2012-11-26 16:15:42','2012-11-26 16:13:41'),(7,'dgonzalez','','','dgonzalez@polaris.cs.wcu.edu','pbkdf2_sha256$10000$w9rjKEahHpOJ$JAF5sCEO9RJnBwYyZ2rgtyz9bc3/4OlbFv3ZO19h8JA=',1,1,1,'2012-12-05 01:29:13','2012-12-04 19:03:56');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_cart`
--

DROP TABLE IF EXISTS `cart_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime NOT NULL,
  `checked_out` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cart`
--

LOCK TABLES `cart_cart` WRITE;
/*!40000 ALTER TABLE `cart_cart` DISABLE KEYS */;
INSERT INTO `cart_cart` VALUES (1,'2012-12-05 01:49:48',0),(2,'2012-12-05 02:02:41',0);
/*!40000 ALTER TABLE `cart_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `unit_price` decimal(18,2) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_item_129fc6a` (`cart_id`),
  KEY `cart_item_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES (1,2,4,'0.00',18,98329),(2,2,3,'0.00',18,98330),(3,2,4,'0.00',18,98331),(4,2,5,'0.00',18,98332),(5,2,33,'8.00',18,98333);
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2012-11-16 01:07:38',1,17,'98338','Silent Hill 2',1,''),(2,'2012-11-16 01:08:33',1,18,'98338','Silent Hill 2',2,'Changed ProductType.'),(3,'2012-11-16 01:11:17',1,17,'98333','Smokey and the Bandit',1,''),(4,'2012-11-16 01:11:29',1,18,'98333','Smokey and the Bandit',2,'Changed ProductType.'),(5,'2012-11-16 01:12:56',1,17,'98324','Men In Black Soundtrack',1,''),(6,'2012-11-16 01:13:37',1,18,'98324','Men In Black Soundtrack',2,'Changed ProductPrice and ProductType.'),(7,'2012-11-16 01:15:20',1,17,'98326','Carter IV',1,''),(8,'2012-11-16 01:15:29',1,18,'99824','Used GameBoy Color',1,''),(9,'2012-11-16 01:47:28',1,18,'98338','Silent Hill 2',2,'Changed ProductPrice.'),(10,'2012-11-16 01:47:39',1,18,'98333','Smokey and the Bandit',2,'Changed ProductPrice.'),(11,'2012-11-16 01:51:54',1,10,'1','cward',1,''),(12,'2012-11-16 01:52:13',1,11,'1','ChrisWard',1,''),(13,'2012-11-16 01:54:39',1,17,'98338','Games',3,''),(14,'2012-11-16 01:54:50',1,17,'98326','Used',3,''),(15,'2012-11-16 01:55:50',1,17,'98337','Games',1,''),(16,'2012-11-16 01:56:01',1,18,'98337','Frogger',2,'Changed ProductType.'),(17,'2012-11-16 02:11:48',1,17,'98338','Used',1,''),(18,'2012-11-16 02:11:56',1,18,'98338','Used Gameboy Color',2,'No fields changed.'),(19,'2012-11-16 05:59:29',1,3,'2','kraken',3,''),(20,'2012-11-16 13:37:09',3,3,'1','cward',2,'Changed is_active.'),(21,'2012-12-04 15:31:05',1,18,'lasdfjlasdfj','ljdflaskjf',1,''),(22,'2012-12-04 15:31:33',1,18,'8989','kls',1,''),(23,'2012-12-04 19:06:04',7,13,'1','Cullowhee FYH',1,''),(24,'2012-12-04 19:07:18',7,13,'1','Cullowhee FYH',2,'Changed Longitude.'),(25,'2012-12-04 19:08:54',7,13,'2','FYH somewhere',1,''),(26,'2012-12-04 19:32:26',7,13,'2','FYH somewhere',2,'Changed Latitude and Longitude.'),(27,'2012-12-04 19:32:31',7,13,'1','Cullowhee FYH',2,'No fields changed.'),(28,'2012-12-04 19:32:43',7,13,'2','FYH somewhere',2,'Changed Longitude.'),(29,'2012-12-04 19:32:49',7,13,'2','FYH somewhere',2,'No fields changed.'),(30,'2012-12-04 19:32:53',7,13,'1','Cullowhee FYH',2,'No fields changed.'),(31,'2012-12-04 19:32:57',7,13,'2','FYH somewhere',2,'No fields changed.'),(32,'2012-12-04 19:33:07',7,13,'1','Cullowhee FYH',2,'No fields changed.'),(33,'2012-12-04 19:33:14',7,13,'2','FYH somewhere',2,'Changed Latitude and Longitude.'),(34,'2012-12-04 19:45:05',7,13,'1','Cullowhee FYH',2,'No fields changed.'),(35,'2012-12-04 19:45:09',7,13,'2','FYH somewhere',2,'No fields changed.'),(36,'2012-12-04 20:41:03',7,13,'2','FYH somewhere',2,'No fields changed.'),(37,'2012-12-05 01:29:27',7,13,'1','Cullowhee FYH',2,'No fields changed.'),(38,'2012-12-05 04:14:06',1,18,'98332','The Breakfast Club',2,'Changed ProductPrice.'),(39,'2012-12-05 04:14:15',1,18,'98331','Terminator',2,'Changed ProductPrice.'),(40,'2012-12-05 04:14:30',1,18,'98329','Men In Black',2,'Changed ProductPrice.'),(41,'2012-12-05 04:38:16',1,18,'98335','Sonic',2,'Changed ProductPrice.'),(42,'2012-12-05 04:38:22',1,18,'98334','Super Mario Bros.',2,'Changed ProductPrice.'),(43,'2012-12-05 04:38:29',1,18,'98336','Kirby',2,'Changed ProductPrice.'),(44,'2012-12-05 04:38:36',1,18,'98337','Frogger',2,'Changed ProductPrice.'),(45,'2012-12-05 04:38:53',1,18,'98330','Ghostbusters',2,'Changed ProductPrice.'),(46,'2012-12-05 04:38:59',1,18,'98328','Youll Rebel to Anything',2,'Changed ProductPrice.'),(47,'2012-12-05 04:39:13',1,18,'98327','Americana',2,'Changed ProductPrice.'),(48,'2012-12-05 04:39:19',1,18,'98326','Carter IV',2,'Changed ProductPrice.'),(49,'2012-12-05 04:39:24',1,18,'98325','Now Thats what I call Music Vol 993',2,'Changed ProductPrice.'),(50,'2012-12-05 10:38:19',1,13,'3','FYH somewhere d2',1,''),(51,'2012-12-10 20:44:53',1,12,'3','23 Cats Den DriveApt 723CullowheeNC28723',2,'Changed AddressLineOne and AddressLineTwo.'),(52,'2012-12-10 20:51:44',1,21,'4','11',1,''),(53,'2012-12-10 20:54:34',1,21,'4','Customer: 1 Address:1',3,''),(54,'2012-12-10 20:54:38',1,21,'3','Customer: 1 Address:1',3,''),(55,'2012-12-10 20:54:42',1,21,'2','Customer: 1 Address:1',3,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'log entry','admin','logentry'),(8,'address','easy_maps','address'),(9,'registration profile','registration','registrationprofile'),(10,'frequent shopper','site','frequentshopper'),(11,'customer','site','customer'),(12,'address','site','address'),(13,'store','site','store'),(14,'vendor','site','vendor'),(15,'brand','site','brand'),(16,'product type','site','producttype'),(17,'instance of','site','instanceof'),(18,'product','site','product'),(19,'is a type of','site','isatypeof'),(20,'order tracking','site','ordertracking'),(21,'ships to','site','shipsto'),(22,'bills to','site','billsto'),(23,'sells to','site','sellsto'),(24,'sells these','site','sellsthese'),(25,'ordered','site','ordered'),(26,'been ordered','site','beenordered'),(27,'restocks','site','restocks'),(28,'cart','cart','cart'),(29,'item','cart','item');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2da288f76061c2c0ed8594068ab74d7e','MjgyZjMyMmY5YmNlODkyNTFkY2VlNWQ0MDBmMGEwMDhmMDgwNjU1NDqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-11-30 02:39:01'),('40d07f816d53d58c04a27a82a96885fc','MjgyZjMyMmY5YmNlODkyNTFkY2VlNWQ0MDBmMGEwMDhmMDgwNjU1NDqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-11-30 14:16:20'),('2a18eff43abed4e9b9c40803117ab6d6','ODU0MjNhYTNjMjMzM2U3ODY0OGY3OWQxZDIxYTZlM2ZjYzdlNmUxZjqAAn1xAS4=\n','2012-11-30 06:21:10'),('2e24c0ac20abaf7fb827867c9d37cf4d','MjgyZjMyMmY5YmNlODkyNTFkY2VlNWQ0MDBmMGEwMDhmMDgwNjU1NDqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-11-30 02:40:27'),('890cc8fd0ebf0ea52ae7858ef2a1a7e8','OWI1NTJkNzEyNTc2NDQwMjNmNzI2OWI4ZTc4OWI0ZWY0YTBiYzQ1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-11-30 03:41:38'),('87ef6f297ca1de89650c30c9d8392823','MjgyZjMyMmY5YmNlODkyNTFkY2VlNWQ0MDBmMGEwMDhmMDgwNjU1NDqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-12-10 12:41:25'),('096ed5d4b48e14cd487f41cea0df5b74','NjYwYTI5ZDgyYjU0MTJhYTBhY2I1MmY2ZjJiZDA0NWIwZmIyMDcxNDqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-11-30 13:40:54'),('0e4a92db2f54132688d0fbf42ad2724c','OWI1NTJkNzEyNTc2NDQwMjNmNzI2OWI4ZTc4OWI0ZWY0YTBiYzQ1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-11-30 10:49:40'),('5576840affce20ad06a8470fce11d3d6','OWI1NTJkNzEyNTc2NDQwMjNmNzI2OWI4ZTc4OWI0ZWY0YTBiYzQ1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-12-03 18:59:10'),('50e4e1409d21f61ae666bf032cd7caf0','NjYwYTI5ZDgyYjU0MTJhYTBhY2I1MmY2ZjJiZDA0NWIwZmIyMDcxNDqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-12-10 12:44:28'),('b700b8d3c62d7dc516acce9e6f37c21e','MjgyZjMyMmY5YmNlODkyNTFkY2VlNWQ0MDBmMGEwMDhmMDgwNjU1NDqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-12-10 17:03:05'),('958757d51162ecca1ee71ed459e4feca','NjYwYTI5ZDgyYjU0MTJhYTBhY2I1MmY2ZjJiZDA0NWIwZmIyMDcxNDqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-12-10 13:25:01'),('8dd5ac3de92b286e2c054a72449f2104','MjgyZjMyMmY5YmNlODkyNTFkY2VlNWQ0MDBmMGEwMDhmMDgwNjU1NDqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-12-10 16:13:13'),('e27daa733f9682db8671c2cb81e77254','OWI1NTJkNzEyNTc2NDQwMjNmNzI2OWI4ZTc4OWI0ZWY0YTBiYzQ1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-12-10 17:50:05'),('de6bdabdbf7a06fffcbac79da167e600','ZDc4MTE3MjI3MTljODkzZjljNTFhMTQ2MmJjOTRjZjU2MTM1M2NiNzqAAn1xAShVCnRlc3Rjb29r\naWVVBndvcmtlZHECVRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5nby5jb250cmliLmF1dGguYmFj\na2VuZHMuTW9kZWxCYWNrZW5kVQ1fYXV0aF91c2VyX2lkigEGdS4=\n','2012-12-10 16:15:58'),('74a15506979bd002a923403f0e62e196','MjEzNmVmYmQwYjA5ZDY3M2I4MTU1YjBlMDQ1YjJiYzA5ZDc1ZTI2NjqAAn1xAShVBGNhcnR9cQIo\nWAUAAAA5ODMzMnEDKFgSAAAAVGhlIEJyZWFrZmFzdCBDbHViSwhjZGVjaW1hbApEZWNpbWFsCnEE\nVQQ5LjAwhVJxBWgEVQU3Mi4wMIVScQZ0WAUAAAA5ODMzMChYDAAAAEdob3N0YnVzdGVyc0sDaARV\nBDYuNjaFUnEHaARVBTE5Ljk4hVJxCHRYBQAAADk4MzMxKFgKAAAAVGVybWluYXRvcksFaARVBDEu\nMDCFUnEJaARVBDUuMDCFUnEKdHVVDV9hdXRoX3VzZXJfaWSKAQFVEl9hdXRoX3VzZXJfYmFja2Vu\nZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmR1Lg==\n','2012-12-20 17:58:27'),('1adff9dca2902fd46127e042f39c9b0b','OWI1NTJkNzEyNTc2NDQwMjNmNzI2OWI4ZTc4OWI0ZWY0YTBiYzQ1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-12-19 15:51:49'),('f3733fef2088885314935f42de28c783','ODkwYzQwMTVmZWI3MDZkMzlhMjRkMGQ0YjJhOTFhMWU3ZjZkNjAwMDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQd1Lg==\n','2012-12-18 19:04:06'),('d409a2fbc3e1163904df87f25b82b8bc','ODkwYzQwMTVmZWI3MDZkMzlhMjRkMGQ0YjJhOTFhMWU3ZjZkNjAwMDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQd1Lg==\n','2012-12-19 01:29:13'),('88a45e046062ee956885d1e93ae1645a','OWI1NTJkNzEyNTc2NDQwMjNmNzI2OWI4ZTc4OWI0ZWY0YTBiYzQ1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-12-20 17:38:38'),('aae7f6a0816ebedee592ace30d645407','ODU0MjNhYTNjMjMzM2U3ODY0OGY3OWQxZDIxYTZlM2ZjYzdlNmUxZjqAAn1xAS4=\n','2012-12-19 04:58:15'),('7b1cd8f8440c7ce90cfa24c88cfafaeb','OWI1NTJkNzEyNTc2NDQwMjNmNzI2OWI4ZTc4OWI0ZWY0YTBiYzQ1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-12-19 10:23:56'),('0d3d55ce107303a46cecaa8d0f44edb5','MWNkNmUwNjZkZWJjNDVlNjY5NWE3NzUyYTczOGIxMGQ1YWVlNDdkZTqAAn1xAShVBGNhcnR9cQIo\nWAUAAAA5ODMzMChYDAAAAEdob3N0YnVzdGVyc0tZY2RlY2ltYWwKRGVjaW1hbApxA1UENi42NoVS\ncQRoA1UGNTkyLjc0hVJxBXRYBQAAADk4MzMxcQYoWAoAAABUZXJtaW5hdG9ySzZoA1UEMS4wMIVS\ncQdoA1UFNTQuMDCFUnEIdHVVDV9hdXRoX3VzZXJfaWSKAQFVEl9hdXRoX3VzZXJfYmFja2VuZFUp\nZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRVCHdpc2hsaXN0fXEJWAUA\nAAA5ODMzMShYCgAAAFRlcm1pbmF0b3JLCWgDVQQxLjAwhVJxCmgDVQQ5LjAwhVJxC3RzdS4=\n','2012-12-19 10:35:44'),('c604dc3e961ec4d04e758f550aa65377','NWI3ZTdmY2I4NmQ1YjZmNmFkMmI2NzJmMGVmZmViYzE1MmEwMjQ5MjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRVDV9h\ndXRoX3VzZXJfaWSKAQFVBGNhcnR9cQIoWAUAAAA5ODMyOShYDAAAAE1lbiBJbiBCbGFja0siY2Rl\nY2ltYWwKRGVjaW1hbApxA1UENy4wMIVScQRoA1UGMjM4LjAwhVJxBXRYBQAAADk4MzMwcQYoWAwA\nAABHaG9zdGJ1c3RlcnNL+mgDVQQ2LjY2hVJxB2gDVQcxNjY1LjAwhVJxCHR1dS4=\n','2012-12-24 20:26:03');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_maps_address`
--

DROP TABLE IF EXISTS `easy_maps_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_maps_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `computed_address` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `geocode_error` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `easy_maps_address_1d339d38` (`address`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_maps_address`
--

LOCK TABLES `easy_maps_address` WRITE;
/*!40000 ALTER TABLE `easy_maps_address` DISABLE KEYS */;
INSERT INTO `easy_maps_address` VALUES (1,'United States, city, address','City-Asheboro Address, 146 N Church St, Asheboro, NC 27203, USA',35.70704,-79.81631,0),(2,'United States, morganton, 1727 circle dr','1727 Circle Dr, Morganton, NC 28655, USA',35.819626,-81.679399,0),(3,'United States, {city}, {address}','City-Asheboro Address, 146 N Church St, Asheboro, NC 27203, USA',35.70704,-79.81631,0),(4,'United States','United States',37.09024,-95.712891,0),(5,'United States, city','825 12th Ave, New York, NY 10019, USA',40.733592,-73.991404,0),(6,'United States, self.city','Silver City RV Park, 1304 N Bennett St, Silver City, NM 88061, USA',32.778702,-108.2723498,0),(7,'United States, self.city, self.address',NULL,NULL,NULL,1),(8,'United States, city, self.address',NULL,NULL,NULL,1),(9,'United States, {{city}}, {{address}}','City-Asheboro Address, 146 N Church St, Asheboro, NC 27203, USA',35.70704,-79.81631,0),(10,'NoneNone','Le Nonnen, 29252 Plouezoc\'h, France',48.647678,-3.833483,0),(11,'morgantonnc','Morganton, NC 28655, USA',35.7454071,-81.6848188,0),(12,'morganton,nc','Morganton, NC 28655, USA',35.7454071,-81.6848188,0),(13,'hickory,nc','Hickory, NC, USA',35.7331878,-81.3411974,0),(14,'sylva,nc','Sylva, NC 28779, USA',35.3737111,-83.2259803,0),(15,'None,None','10060 None, Province of Turin, Italy',44.9335221,7.5409844,0),(16,'cullowhee,23 cats den drive','23 Cat\'s Den Dr, Nantahala National Forest, Cullowhee, NC 28723, USA',35.3221928,-83.1749563,0),(17,'cullowhee,41 memorial drive','Memorial Dr, Nantahala National Forest, Western Carolina University, Cullowhee, NC 28723, USA',35.3119758,-83.1817651,0),(18,'cullowhee,141 Memorial Dr','141 Memorial Dr, Nantahala National Forest, Western Carolina University, Cullowhee, NC 28723, USA',35.3117467,-83.182953,0),(19,'fayetteville,313 boarshead ct','313 Boarshead Ct, Fayetteville, NC 28311, USA',35.2159989,-78.850682,0),(20,'Cullowhee,210 Cats Den Drive','Cat\'s Den Dr, Nantahala National Forest, Cullowhee, NC 28723, USA',35.3217861,-83.1752665,0),(21,'Fayetteville,6979 Point East Drive','6979 Point E Dr, Fayetteville, NC 28306, USA',34.859029,-78.851003,0),(22,'China Grove,315 State Road','315 State Rd, China Grove, NC 28023, USA',35.518424,-80.565986,0);
/*!40000 ALTER TABLE `easy_maps_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_registrationprofile`
--

DROP TABLE IF EXISTS `registration_registrationprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_registrationprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `activation_key` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_registrationprofile`
--

LOCK TABLES `registration_registrationprofile` WRITE;
/*!40000 ALTER TABLE `registration_registrationprofile` DISABLE KEYS */;
INSERT INTO `registration_registrationprofile` VALUES (2,4,'ALREADY_ACTIVATED'),(3,5,'ALREADY_ACTIVATED'),(4,6,'ALREADY_ACTIVATED');
/*!40000 ALTER TABLE `registration_registrationprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_address`
--

DROP TABLE IF EXISTS `site_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Address_ID` int(11) NOT NULL,
  `AddressLineOne` varchar(50) NOT NULL,
  `AddressLineTwo` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(2) NOT NULL,
  `ZIPCode` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_address`
--

LOCK TABLES `site_address` WRITE;
/*!40000 ALTER TABLE `site_address` DISABLE KEYS */;
INSERT INTO `site_address` VALUES (1,1,'210 Cats Den Drive','nothing','Cullowhee','NC','28723'),(2,1,'210 Cats Den Drive','23','Cullowhee','NC','28723'),(3,1,'23 Cats Den Drive','Apt 723','Cullowhee','NC','28723');
/*!40000 ALTER TABLE `site_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_beenordered`
--

DROP TABLE IF EXISTS `site_beenordered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_beenordered` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UPCCode` varchar(12) NOT NULL,
  `Order_ID` int(11) NOT NULL,
  `NumberOrdered` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_beenordered`
--

LOCK TABLES `site_beenordered` WRITE;
/*!40000 ALTER TABLE `site_beenordered` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_beenordered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_billsto`
--

DROP TABLE IF EXISTS `site_billsto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_billsto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_ID` int(11) NOT NULL,
  `Address_ID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_billsto`
--

LOCK TABLES `site_billsto` WRITE;
/*!40000 ALTER TABLE `site_billsto` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_billsto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_brand`
--

DROP TABLE IF EXISTS `site_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Brand_ID` int(11) NOT NULL,
  `BrandName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_brand`
--

LOCK TABLES `site_brand` WRITE;
/*!40000 ALTER TABLE `site_brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_customer`
--

DROP TABLE IF EXISTS `site_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_ID` int(11) NOT NULL,
  `FS_ID_id` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_customer_c8ecc0a` (`FS_ID_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_customer`
--

LOCK TABLES `site_customer` WRITE;
/*!40000 ALTER TABLE `site_customer` DISABLE KEYS */;
INSERT INTO `site_customer` VALUES (1,1,123,'Chris','Ward');
/*!40000 ALTER TABLE `site_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_frequentshopper`
--

DROP TABLE IF EXISTS `site_frequentshopper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_frequentshopper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Frequent_Shopper_ID` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `PointsGained` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Frequent_Shopper_ID` (`Frequent_Shopper_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_frequentshopper`
--

LOCK TABLES `site_frequentshopper` WRITE;
/*!40000 ALTER TABLE `site_frequentshopper` DISABLE KEYS */;
INSERT INTO `site_frequentshopper` VALUES (1,123,'chris.dev.ward@gmail.com',9999,'cward','lolplaintext');
/*!40000 ALTER TABLE `site_frequentshopper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_instanceof`
--

DROP TABLE IF EXISTS `site_instanceof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_instanceof` (
  `Product_ID_id` varchar(12) NOT NULL,
  `Type_ID_id` int(11) NOT NULL,
  PRIMARY KEY (`Product_ID_id`),
  UNIQUE KEY `Type_ID_id` (`Type_ID_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_instanceof`
--

LOCK TABLES `site_instanceof` WRITE;
/*!40000 ALTER TABLE `site_instanceof` DISABLE KEYS */;
INSERT INTO `site_instanceof` VALUES ('98338',4),('98333',1),('98324',2),('98337',3);
/*!40000 ALTER TABLE `site_instanceof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_isatypeof`
--

DROP TABLE IF EXISTS `site_isatypeof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_isatypeof` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Type_ID` int(11) NOT NULL,
  `Sub_Type_ID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_isatypeof`
--

LOCK TABLES `site_isatypeof` WRITE;
/*!40000 ALTER TABLE `site_isatypeof` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_isatypeof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_ordered`
--

DROP TABLE IF EXISTS `site_ordered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_ordered` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_ID` int(11) NOT NULL,
  `Order_ID` int(11) NOT NULL,
  `DateOrdered` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_ordered`
--

LOCK TABLES `site_ordered` WRITE;
/*!40000 ALTER TABLE `site_ordered` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_ordered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_ordertracking`
--

DROP TABLE IF EXISTS `site_ordertracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_ordertracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Order_ID` int(11) NOT NULL,
  `Store_ID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_ordertracking`
--

LOCK TABLES `site_ordertracking` WRITE;
/*!40000 ALTER TABLE `site_ordertracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_ordertracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_product`
--

DROP TABLE IF EXISTS `site_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_product` (
  `UPCCode` varchar(12) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `ProductSize` varchar(10) NOT NULL,
  `ProductWeight` varchar(10) NOT NULL,
  `ProductDescription` longtext NOT NULL,
  `ProductPrice` decimal(3,2) NOT NULL,
  `ProductType_id` int(11) NOT NULL,
  `Brand_ID` int(11) NOT NULL,
  PRIMARY KEY (`UPCCode`),
  KEY `site_product_d6656c02` (`ProductType_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_product`
--

LOCK TABLES `site_product` WRITE;
/*!40000 ALTER TABLE `site_product` DISABLE KEYS */;
INSERT INTO `site_product` VALUES ('98324','Men In Black Soundtrack','small','12g','The soundtrack from the hit movie!','2.00',2,0),('98325','Now Thats what I call Music Vol 993','small','12g','Surprise! They still make these.','9.93',2,0),('98326','Carter IV','small','12g','President Carter is back with a new hit album','4.00',2,0),('98327','Americana','small','12g','The best Offspring album, ever.','7.76',2,0),('98328','Youll Rebel to Anything','small','12g','Featuring Shut Me up and Straight to Video!','3.45',2,0),('98329','Men In Black','small','12g','The movie from the hit soundtrack!','7.00',1,0),('98330','Ghostbusters','small','12g','Busting ectoplasim one ghost at a time','6.66',1,0),('98331','Terminator','small','12g','The top apocalyptic hit of the 80s!','1.00',1,0),('98332','The Breakfast Club','small','12g','When a group of misguided teens from different walks of life  attend saturday school, they find a lot out about their classmates, and even more baout themselves.','9.00',1,0),('98333','Smokey and the Bandit','small','12g','No matter how many smokies are on his trail the bandit is east bound and down, loaded up and truckin.','8.00',1,0),('98334','Super Mario Bros.','small','12g','The NES classic!','3.50',3,0),('98335','Sonic','small','12g','Who knew hedgehogs could move so fast?!','9.99',3,0),('98336','Kirby','small','12g','Watch him eat everything!','1.00',3,0),('98337','Frogger','small','12g','Help Frogger, the frog, get his friends back!','9.85',3,0),('98338','Used Gameboy Color','small','39g','The best handheld since the calculator!','9.00',4,0),('lasdfjlasdfj','ljdflaskjf','small','88','asldfjl','8.90',1,83),('8989','kls','small','99','laskjdf','3.00',1,393);
/*!40000 ALTER TABLE `site_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_producttype`
--

DROP TABLE IF EXISTS `site_producttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_producttype` (
  `Type_ID` int(11) NOT NULL,
  `Department` varchar(50) NOT NULL,
  PRIMARY KEY (`Type_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_producttype`
--

LOCK TABLES `site_producttype` WRITE;
/*!40000 ALTER TABLE `site_producttype` DISABLE KEYS */;
INSERT INTO `site_producttype` VALUES (1,'Movies'),(2,'Music'),(3,'Games'),(4,'Used');
/*!40000 ALTER TABLE `site_producttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_restocks`
--

DROP TABLE IF EXISTS `site_restocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_restocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Vendor_ID` int(11) NOT NULL,
  `Brand_ID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_restocks`
--

LOCK TABLES `site_restocks` WRITE;
/*!40000 ALTER TABLE `site_restocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_restocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_sellsthese`
--

DROP TABLE IF EXISTS `site_sellsthese`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_sellsthese` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Store_ID` int(11) NOT NULL,
  `UPCCode` varchar(12) NOT NULL,
  `NumberSold` int(11) NOT NULL,
  `Price` varchar(10) NOT NULL,
  `AmountInStock` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_sellsthese`
--

LOCK TABLES `site_sellsthese` WRITE;
/*!40000 ALTER TABLE `site_sellsthese` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_sellsthese` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_sellsto`
--

DROP TABLE IF EXISTS `site_sellsto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_sellsto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Vendor_ID` int(11) NOT NULL,
  `Store_ID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_sellsto`
--

LOCK TABLES `site_sellsto` WRITE;
/*!40000 ALTER TABLE `site_sellsto` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_sellsto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_shipsto`
--

DROP TABLE IF EXISTS `site_shipsto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_shipsto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_ID` int(11) NOT NULL,
  `Address_ID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_shipsto`
--

LOCK TABLES `site_shipsto` WRITE;
/*!40000 ALTER TABLE `site_shipsto` DISABLE KEYS */;
INSERT INTO `site_shipsto` VALUES (1,1,1);
/*!40000 ALTER TABLE `site_shipsto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_store`
--

DROP TABLE IF EXISTS `site_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Store_ID` int(11) NOT NULL,
  `StoreName` varchar(50) NOT NULL,
  `Latitude` varchar(20) NOT NULL,
  `Longitude` varchar(20) NOT NULL,
  `HoursDaysOpen` longtext NOT NULL,
  `Address_ID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_store`
--

LOCK TABLES `site_store` WRITE;
/*!40000 ALTER TABLE `site_store` DISABLE KEYS */;
INSERT INTO `site_store` VALUES (1,1,'Cullowhee FYH','35.3097','-83.1836','8am-3am',1),(2,2,'FYH somewhere','25','25','45',2),(3,3,'FYH somewhere d2','45','45','8am - 8pm',3);
/*!40000 ALTER TABLE `site_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_vendor`
--

DROP TABLE IF EXISTS `site_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_vendor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Vendor_ID` int(11) NOT NULL,
  `VendorName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_vendor`
--

LOCK TABLES `site_vendor` WRITE;
/*!40000 ALTER TABLE `site_vendor` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-12-10 21:16:11
