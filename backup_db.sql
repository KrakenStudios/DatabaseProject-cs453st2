-- MySQL dump 10.13  Distrib 5.1.62, for pc-linux-gnu (x86_64)
--
-- Host: localhost    Database: cs453db2
-- ------------------------------------------------------
-- Server version	5.1.62-log

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
-- Table structure for table `Admins`
--

DROP TABLE IF EXISTS `Admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Admins` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `LastName` varchar(14) DEFAULT NULL,
  `FirstName` varchar(14) DEFAULT NULL,
  `Username` varchar(18) DEFAULT NULL,
  `Password` varchar(18) DEFAULT NULL,
  `Salt` varchar(5) DEFAULT NULL,
  `AdminRights` varchar(4) DEFAULT NULL,
  `IsSuperAdmin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admins`
--

LOCK TABLES `Admins` WRITE;
/*!40000 ALTER TABLE `Admins` DISABLE KEYS */;
INSERT INTO `Admins` VALUES (1,'Ward','Chris','cward','lolplaintext','12$','777',1),(2,'Gonzalez','Diego','dgonzalez','lolplaintext','12$','777',1),(3,'Stender','Matt','mstender','lolplaintext','12$','777',1);
/*!40000 ALTER TABLE `Admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Brands`
--

DROP TABLE IF EXISTS `Brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Brands` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductBrand` varchar(18) DEFAULT NULL,
  `ProductsSold` varchar(18) DEFAULT NULL,
  `ProductSizes` varchar(18) DEFAULT NULL,
  `ProductWeight` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Brands`
--

LOCK TABLES `Brands` WRITE;
/*!40000 ALTER TABLE `Brands` DISABLE KEYS */;
INSERT INTO `Brands` VALUES (1,'Sony','CD, DVD, Bluray','Small','10'),(2,'Warner Brothers','DVD, Bluray','Small','10'),(3,'Epic','Games','Small','10'),(4,'Capitol','CD','Small','10');
/*!40000 ALTER TABLE `Brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customers` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FrequentShopperNumber` int(11) DEFAULT NULL,
  `LastName` varchar(14) DEFAULT NULL,
  `FirstName` varchar(14) DEFAULT NULL,
  `ShippingAddress` varchar(50) DEFAULT NULL,
  `ShippingAddress2` varchar(50) DEFAULT NULL,
  `ShippingCity` varchar(18) DEFAULT NULL,
  `ShippingState` char(2) DEFAULT NULL,
  `ShippingZIPCode` varchar(9) DEFAULT NULL,
  `BillingAddress` varchar(50) DEFAULT NULL,
  `BillingAddress2` varchar(50) DEFAULT NULL,
  `BillingCity` varchar(18) DEFAULT NULL,
  `BillingState` char(2) DEFAULT NULL,
  `BillingZIPCode` varchar(9) DEFAULT NULL,
  `EmailAddress` varchar(30) DEFAULT NULL,
  `PointsGained` int(11) DEFAULT NULL,
  `Username` varchar(18) DEFAULT NULL,
  `Password` varchar(18) DEFAULT NULL,
  `Salt` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,920302112,'Montana','Antonio','323 Cockroach Ave','','Miami','FL','33101','323 Cockroach Ave','','Miami','FL','33101','tonytheboss@gmail.com',900000,'tonyMontana','myLittleFriend','13$'),(2,920302113,'Castle','Frank','1414 32nd St','Apartment 7','New York','NY','10453','1414 32nd St','Apartment 7','New York','NY','10453','FCastle@gmail.com',100,'thePunisher','justice','13$'),(3,920302114,'Schwarzenegger','Arnold','12989 Chalon Rd','','Los Angeles','CA','90049','12989 Chalon Rd','','Los Angeles','CA','90049','theGovernator@gmail.com',7500,'arnoldT1000','illBeBack','13$'),(4,920302115,'Soprano','Tony','633 Stagtrail Rd','','West Caldwell','NJ','07006','633 Stagtrail Rd','','West Caldwell','NJ','07006','theBetterMobster@gmail.com',850000,'theGodfather','tlkn2me','13$');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductTypes`
--

DROP TABLE IF EXISTS `ProductTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductTypes` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Department` varchar(18) DEFAULT NULL,
  `Category` varchar(18) DEFAULT NULL,
  `SubCategory` varchar(18) DEFAULT NULL,
  `Items` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Items` (`Items`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductTypes`
--

LOCK TABLES `ProductTypes` WRITE;
/*!40000 ALTER TABLE `ProductTypes` DISABLE KEYS */;
INSERT INTO `ProductTypes` VALUES (1,'Music','CD','Metal','Judas Priest'),(2,'Music','CD','R&B','Nelly'),(3,'Music','CD','Rap','Ice Cube'),(4,'Music','CD','Rock','Aerosmith'),(5,'Movies','DVD','Action','Terminator'),(6,'Movies','DVD','Comedy','Madea Goes to Pris'),(7,'Movies','bluray','Horror','Last House on the '),(8,'Movies','bluray','Suspense','The Next Three Day'),(9,'Games','NES','Action','Super Mario Bros'),(10,'Games','Playstation 1','Adventure','Spyro');
/*!40000 ALTER TABLE `ProductTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Products` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UPCCode` int(11) DEFAULT NULL,
  `ProductBrand` varchar(18) DEFAULT NULL,
  `ProductType` varchar(18) DEFAULT NULL,
  `ProductSize` varchar(18) DEFAULT NULL,
  `ProductName` varchar(18) DEFAULT NULL,
  `ProductDescription` text,
  `ProductSellPrice` int(11) DEFAULT NULL,
  `ProductWholesalePrice` int(11) DEFAULT NULL,
  `AmountInStock` double(18,0) DEFAULT NULL,
  `Department` varchar(18) DEFAULT NULL,
  `InStock` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`Id`),
  KEY `ProductBrand` (`ProductBrand`),
  KEY `ProductType` (`ProductType`),
  KEY `Department` (`Department`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES (1,923547,'Capitol','Music','small','Sargent Peppers Lo','One of the Beatles best selling albums!',10,5,20,'music',1),(2,923548,'Warner Brothers','Movies','small','Harry Potter','Magic wizards, wands and stuff!',20,5,2000,'Movies',1),(3,923548,'Epic','Games','small','Gears of War','The best series ever!',60,30,20,'Games',1),(4,923549,'Sony','Music','small','Men In Black Sound','Soundtrack for the hit movie Men in Black',15,5,199,'Music',1);
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stores`
--

DROP TABLE IF EXISTS `Stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stores` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `StoreName` varchar(18) DEFAULT NULL,
  `StoreAddress` varchar(18) DEFAULT NULL,
  `StoreCity` varchar(18) DEFAULT NULL,
  `StoreState` char(2) DEFAULT NULL,
  `StoreZIPCode` varchar(18) DEFAULT NULL,
  `Latitude` varchar(18) DEFAULT NULL,
  `Longitude` varchar(18) DEFAULT NULL,
  `HoursOpen` text,
  `DaysOpen` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stores`
--

LOCK TABLES `Stores` WRITE;
/*!40000 ALTER TABLE `Stores` DISABLE KEYS */;
INSERT INTO `Stores` VALUES (1,'Fayetteville','410 Cross Creek Ma','Fayetteville','NC','28303','','','8','MTWTFSS'),(2,'Asheville','3 S Tunnel Rd','Asheville','NC','28805','','','8','MTWTFSS'),(3,'Concord','8481 Concord Mills','Concord','NC','28027','','','8','MTWTFSS'),(4,'Durham','6910 Fayetteville ','Durham','NC','27713','','','8','MTWTFSS');
/*!40000 ALTER TABLE `Stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vendors`
--

DROP TABLE IF EXISTS `Vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Vendors` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `VendorName` varchar(18) DEFAULT NULL,
  `ProductBrand` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `ProductBrand` (`ProductBrand`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vendors`
--

LOCK TABLES `Vendors` WRITE;
/*!40000 ALTER TABLE `Vendors` DISABLE KEYS */;
INSERT INTO `Vendors` VALUES (1,'FYEMusicVendor','Sony, Capitol'),(2,'FYEGameVendor','Epic'),(3,'FYEMovieVendor','Warner Brothers, S');
/*!40000 ALTER TABLE `Vendors` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add message',4,'add_message'),(11,'Can change message',4,'change_message'),(12,'Can delete message',4,'delete_message'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add registration profile',8,'add_registrationprofile'),(23,'Can change registration profile',8,'change_registrationprofile'),(24,'Can delete registration profile',8,'delete_registrationprofile'),(25,'Can add products',9,'add_products'),(26,'Can change products',9,'change_products'),(27,'Can delete products',9,'delete_products'),(28,'Can add site',10,'add_site'),(29,'Can change site',10,'change_site'),(30,'Can delete site',10,'delete_site'),(31,'Can add products',11,'add_products'),(32,'Can change products',11,'change_products'),(33,'Can delete products',11,'delete_products'),(34,'Can add address',12,'add_address'),(35,'Can change address',12,'change_address'),(36,'Can delete address',12,'delete_address'),(37,'Can add brand',13,'add_brand'),(38,'Can change brand',13,'change_brand'),(39,'Can delete brand',13,'delete_brand'),(40,'Can add vender',14,'add_vender'),(41,'Can change vender',14,'change_vender'),(42,'Can delete vender',14,'delete_vender'),(43,'Can add store',15,'add_store'),(44,'Can change store',15,'change_store'),(45,'Can delete store',15,'delete_store'),(46,'Can add address',16,'add_address'),(47,'Can change address',16,'change_address'),(48,'Can delete address',16,'delete_address'),(49,'Can add customer',17,'add_customer'),(50,'Can change customer',17,'change_customer'),(51,'Can delete customer',17,'delete_customer');
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'cward','','','cward@polaris.cs.wcu.edu','sha1$6be34$e1265b3832e15e7bd2eb18e14d95d18296ef525f',1,1,1,'2012-11-06 17:14:31','2012-11-01 12:52:12'),(2,'customer1','','','gottagetwave@gmail.com','sha1$56b2e$b4afd4b5a484ca40d9b978c82aa40b0206354c1d',0,0,0,'2012-11-04 13:56:10','2012-11-04 13:56:10'),(3,'customer12','','','gottagetwave@gmail.com','sha1$d2730$ebcb60b8a7155e2922f0affcf77eef014a78846a',0,0,0,'2012-11-04 13:58:35','2012-11-04 13:58:35'),(4,'cdward','','','chris.dev.ward@gmail.com','sha1$ddbba$0d0b32eef2d5de96335c8d2cce6ed513fc93012f',0,1,0,'2012-11-04 14:05:20','2012-11-04 14:03:43'),(5,'test','','','chris.dev.ward@gmail.com','sha1$9841e$a3ef826746c903f3b62c67840efe182f0cfb8834',0,1,0,'2012-11-04 14:09:38','2012-11-04 14:09:38'),(6,'cust1','','','chris.dev.ward@gmail.com','sha1$d038b$e2b4a12ad2a8a0cbe5e769d5e452d0853b2f3475',0,1,0,'2012-11-04 14:13:01','2012-11-04 14:13:01'),(7,'kraken','','','chris.dev.ward@gmail.com','sha1$2fa74$e3496619570a763cdf7ef0b62a9ce0513e225cca',0,1,0,'2012-11-04 14:18:55','2012-11-04 14:18:55'),(8,'kraken2','','','chris.dev.ward@gmail.com','sha1$78961$aa638259e85b907329b7d1e819de7b0fa64727ab',0,0,0,'2012-11-04 14:35:10','2012-11-04 14:35:10'),(9,'kraken22','','','chris.dev.ward@gmail.com','sha1$51544$2266f1a6aaa4398379cad59cea0357c8a6905926',0,1,0,'2012-11-04 14:36:06','2012-11-04 14:36:06'),(10,'cward3','','','chris.dev.ward@gmail.com','sha1$75439$7192dfa3c1a5674bfae08de70bd6c5612d916a1d',0,0,0,'2012-11-05 15:10:23','2012-11-05 15:10:23'),(11,'asdf','','','65464@derp.com','sha1$dadf1$68e97352fa90c11492acc79ea0bccf1e829c9966',0,0,0,'2012-11-05 15:33:07','2012-11-05 15:33:07'),(12,'bdana','','','chris.dev.ward@gmail.com','sha1$61bf6$4d6d8e3b25bde463853ec46f4a7e38a4df5b9f8c',0,1,0,'2012-11-05 17:28:56','2012-11-05 17:27:50'),(13,'diego','','','diego.h.gonzalez08@gmail.com','sha1$683fe$6234b7be7b4bf2b45f20e382633fef71f9238adb',0,0,0,'2012-11-06 16:52:35','2012-11-06 16:52:35'),(14,'diego2','','','chris.dev.ward@gmail.com','sha1$b4d7b$a53b8d830577a93b1e21e9ffcecee7bfb99b8ab1',0,1,0,'2012-11-06 16:54:13','2012-11-06 16:54:13'),(15,'Quailman024','','','spoonspwnzface@gmail.com','sha1$a067c$da2ed48569f0480d24e0a442560d0b995ac0458e',0,0,0,'2012-11-07 16:18:56','2012-11-07 16:18:56'),(16,'dgonzalez','','','diego.h.gonzalez08@gmail.com','sha1$a1bc2$e51fc885907368f899b9642c3abf257791d26449',1,1,1,'2012-11-09 15:35:56','2012-11-09 15:35:56');
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
-- Table structure for table `blog_products`
--

DROP TABLE IF EXISTS `blog_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UPCCode` int(11) NOT NULL,
  `ProductBrand` varchar(20) NOT NULL,
  `ProductType` varchar(10) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `ProductDescription` longtext NOT NULL,
  `ProductSellPrice` double NOT NULL,
  `ProductWholesalePrice` double NOT NULL,
  `AmountInStock` int(11) NOT NULL,
  `Department` varchar(10) NOT NULL,
  `InStock` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_products`
--

LOCK TABLES `blog_products` WRITE;
/*!40000 ALTER TABLE `blog_products` DISABLE KEYS */;
INSERT INTO `blog_products` VALUES (1,9126,'Sony','Music','Back In Black','It\'s a cd!',10,3,25,'Music',1),(2,292124,'Capitol Records','Music','Now That\'s What I call Music 9','wtf another one?',10,3,25,'Music',1);
/*!40000 ALTER TABLE `blog_products` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2012-11-01 12:52:49',1,9,'1','Products object',1,''),(2,'2012-11-01 12:53:06',1,9,'2','Products object',1,''),(3,'2012-11-04 13:30:03',1,9,'3','Products object',1,''),(4,'2012-11-04 13:30:33',1,9,'3','Products object',3,''),(5,'2012-11-04 14:07:58',1,8,'3','Registration information for cdward',3,''),(6,'2012-11-04 14:08:03',1,8,'2','Registration information for customer12',3,''),(7,'2012-11-04 14:08:06',1,8,'1','Registration information for customer1',3,''),(8,'2012-11-04 14:12:30',1,10,'1','foryourharmonics.com',2,'Changed domain and name.'),(9,'2012-11-06 17:15:04',1,8,'13','Registration information for diego2',3,''),(10,'2012-11-06 17:15:04',1,8,'12','Registration information for diego',3,''),(11,'2012-11-06 17:15:04',1,8,'11','Registration information for bdana',3,''),(12,'2012-11-06 17:15:04',1,8,'10','Registration information for asdf',3,''),(13,'2012-11-06 17:15:04',1,8,'9','Registration information for cward3',3,''),(14,'2012-11-06 17:15:04',1,8,'8','Registration information for kraken22',3,''),(15,'2012-11-06 17:15:04',1,8,'7','Registration information for kraken2',3,''),(16,'2012-11-06 17:15:04',1,8,'6','Registration information for kraken',3,''),(17,'2012-11-06 17:15:04',1,8,'5','Registration information for cust1',3,''),(18,'2012-11-06 17:15:04',1,8,'4','Registration information for test',3,''),(19,'2012-11-12 14:57:37',1,11,'1',';alskdjfa;skdfjw3oiru039',1,''),(20,'2012-11-12 14:58:16',1,11,'2','lslsls',1,''),(21,'2012-11-12 14:58:47',1,11,'3','Gameboy 2000',1,''),(22,'2012-11-12 15:04:32',1,11,'2','lslsls',2,'Changed ProductType.'),(23,'2012-11-12 15:13:45',1,11,'3','Gameboy 2000',2,'Changed ProductType.'),(24,'2012-11-12 15:30:05',1,11,'2','lslsls',2,'Changed ProductType.'),(25,'2012-11-12 15:30:20',1,11,'2','lslsls',2,'Changed ProductType.');
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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'message','auth','message'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'log entry','admin','logentry'),(8,'registration profile','registration','registrationprofile'),(9,'products','blog','products'),(10,'site','sites','site'),(11,'products','site','products'),(12,'address','easy_maps','address'),(13,'brand','site','brand'),(14,'vender','site','vender'),(15,'store','site','store'),(16,'address','site','address'),(17,'customer','site','customer');
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
INSERT INTO `django_session` VALUES ('412b457b909016cefe2dbd34624af0d5','ZDAyYTgwNDkzNjNkMGRlMmRkZDc5ZTY2NTBmNDBmYjJkODU3YjViMzqAAn1xAShVCnRlc3Rjb29r\naWVVBndvcmtlZHECVRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5nby5jb250cmliLmF1dGguYmFj\na2VuZHMuTW9kZWxCYWNrZW5kVQ1fYXV0aF91c2VyX2lkigEBdS4=\n','2012-11-27 20:34:27'),('77f38bd4b0bd12fb821d4530d9c79e76','YzdmYzgzY2VmNjFiYmExMTNmZDY3MjljYjFkZmJiN2EwNWZjZTZhMjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQx1Lg==\n','2012-11-19 17:28:56'),('dab2265aacb04323c7fbea6d0b7bb97f','MjgyZjMyMmY5YmNlODkyNTFkY2VlNWQ0MDBmMGEwMDhmMDgwNjU1NDqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-11-22 13:05:25'),('b7b8cbb484cc81680350053ab11d1c24','NjYwYTI5ZDgyYjU0MTJhYTBhY2I1MmY2ZjJiZDA0NWIwZmIyMDcxNDqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-11-26 14:53:16'),('7ae917dc7f48e96aa22f76157a635d7e','NjYwYTI5ZDgyYjU0MTJhYTBhY2I1MmY2ZjJiZDA0NWIwZmIyMDcxNDqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-11-27 20:35:05');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'foryourharmonics.com','FYH');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_maps_address`
--

LOCK TABLES `easy_maps_address` WRITE;
/*!40000 ALTER TABLE `easy_maps_address` DISABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_registrationprofile`
--

LOCK TABLES `registration_registrationprofile` WRITE;
/*!40000 ALTER TABLE `registration_registrationprofile` DISABLE KEYS */;
INSERT INTO `registration_registrationprofile` VALUES (14,15,'a257033908ae702809659c5c12da2e0c2fad3f81');
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
  `AddressLineOne` varchar(100) NOT NULL,
  `AddressLineTwo` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `ZIPCode` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_address`
--

LOCK TABLES `site_address` WRITE;
/*!40000 ALTER TABLE `site_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_address` ENABLE KEYS */;
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
  `BrandName` varchar(100) NOT NULL,
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
  `FrequentShopperNumber` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `EmailAddress` varchar(100) NOT NULL,
  `PointsGained` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_customer`
--

LOCK TABLES `site_customer` WRITE;
/*!40000 ALTER TABLE `site_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_products`
--

DROP TABLE IF EXISTS `site_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UPCCode` int(11) NOT NULL,
  `ProductBrand` varchar(20) NOT NULL,
  `ProductType` varchar(10) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `ProductDescription` longtext NOT NULL,
  `ProductSellPrice` double NOT NULL,
  `ProductWholesalePrice` double NOT NULL,
  `AmountInStock` int(11) NOT NULL,
  `Department` varchar(10) NOT NULL,
  `InStock` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_products`
--

LOCK TABLES `site_products` WRITE;
/*!40000 ALTER TABLE `site_products` DISABLE KEYS */;
INSERT INTO `site_products` VALUES (1,292123,'SOndy','Music',';alskdjfa;skdfjw3oiru039','sdfjlsafj',10,3,25,'Music',1),(2,98798,'Sony','Movie','lslsls','laskdfjalksf',10,3,25,'DVD',1),(3,292124,'Sony','Game','Gameboy 2000','the best',10,3,25,'Games',1);
/*!40000 ALTER TABLE `site_products` ENABLE KEYS */;
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
  `StoreName` varchar(100) NOT NULL,
  `Latitude` varchar(10) NOT NULL,
  `Longitude` varchar(10) NOT NULL,
  `HoursOpen` varchar(10) NOT NULL,
  `DaysOpen` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_store`
--

LOCK TABLES `site_store` WRITE;
/*!40000 ALTER TABLE `site_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_vender`
--

DROP TABLE IF EXISTS `site_vender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_vender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Vendor_ID` int(11) NOT NULL,
  `VendorName` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_vender`
--

LOCK TABLES `site_vender` WRITE;
/*!40000 ALTER TABLE `site_vender` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_vender` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-11-13 21:18:13
