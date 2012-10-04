CREATE DATABASE  IF NOT EXISTS `cs453db2` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cs453db2`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
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
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customers` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FrequentShopperNumber` int(11) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `ShippingAddress` varchar(255) DEFAULT NULL,
  `ShippingAddress2` varchar(255) DEFAULT NULL,
  `ShippingCity` varchar(255) DEFAULT NULL,
  `ShippingState` varchar(255) DEFAULT NULL,
  `ShippingZIPCode` varchar(255) DEFAULT NULL,
  `BillingAddress` varchar(255) DEFAULT NULL,
  `BillingAddress2` varchar(255) DEFAULT NULL,
  `BillingCity` varchar(255) DEFAULT NULL,
  `BillingState` varchar(255) DEFAULT NULL,
  `BillingZIPCode` varchar(255) DEFAULT NULL,
  `EmailAddress` varchar(255) DEFAULT NULL,
  `PointsGained` int(11) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` char(56) DEFAULT NULL,
  `Salt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,920302112,'Ward','Chris','23 Cats Den Dr','APT 723','Cullowhee','NC','28723','23 Cats Den Dr','APT 723','Cullowhee','NC','28723','chris.dev.ward@gmail.com',9001,'cwardcust','lolplaintext','13$');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stores`
--

DROP TABLE IF EXISTS `Stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stores` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `StoreName` varchar(255) DEFAULT NULL,
  `StoreAddress` varchar(255) DEFAULT NULL,
  `StoreCity` varchar(255) DEFAULT NULL,
  `StoreState` varchar(255) DEFAULT NULL,
  `StoreZIPCode` varchar(255) DEFAULT NULL,
  `Latitude` varchar(255) DEFAULT NULL,
  `Longitude` varchar(255) DEFAULT NULL,
  `HoursOpen` int(11) DEFAULT NULL,
  `DaysOpen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stores`
--

LOCK TABLES `Stores` WRITE;
/*!40000 ALTER TABLE `Stores` DISABLE KEYS */;
INSERT INTO `Stores` VALUES (1,'cs453db2','227 A.K. Hinds University Center ','Cullowhee','NC','28723','35.31129','-83.18270 ',8,'MTWTFSS');
/*!40000 ALTER TABLE `Stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductTypes`
--

DROP TABLE IF EXISTS `ProductTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductTypes` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Department` varchar(255) DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `SubCategory` varchar(255) DEFAULT NULL,
  `Items` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductTypes`
--

LOCK TABLES `ProductTypes` WRITE;
/*!40000 ALTER TABLE `ProductTypes` DISABLE KEYS */;
INSERT INTO `ProductTypes` VALUES (1,'Food','Beverages','Soda','Cola');
/*!40000 ALTER TABLE `ProductTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Admins`
--

DROP TABLE IF EXISTS `Admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Admins` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `LastName` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` char(56) DEFAULT NULL,
  `Salt` varchar(255) DEFAULT NULL,
  `AdminRights` varchar(255) DEFAULT NULL,
  `IsSuperAdmin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admins`
--

LOCK TABLES `Admins` WRITE;
/*!40000 ALTER TABLE `Admins` DISABLE KEYS */;
INSERT INTO `Admins` VALUES (1,'Ward','Chris','cward','lolplaintext','12$','777',1);
/*!40000 ALTER TABLE `Admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vendors`
--

DROP TABLE IF EXISTS `Vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Vendors` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `VendorName` varchar(255) DEFAULT NULL,
  `BrandsSold` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vendors`
--

LOCK TABLES `Vendors` WRITE;
/*!40000 ALTER TABLE `Vendors` DISABLE KEYS */;
INSERT INTO `Vendors` VALUES (1,'Fun!Entertainment','PartyHardy');
/*!40000 ALTER TABLE `Vendors` ENABLE KEYS */;
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
  `ProductBrand` varchar(255) DEFAULT NULL,
  `ProductType` varchar(255) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductDescription` text,
  `ProductSellPrice` int(11) DEFAULT NULL,
  `ProductWholesalePrice` int(11) DEFAULT NULL,
  `AmountInStock` double(255,0) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `InStock` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES (1,923547,'PartyHardy','Entertainment','WackyFlailingInflatableArmMan','WACKYINFLATABLEFLAILINGARMMAN',300,10,20,NULL,1),(2,923548,'PetCo','Pets','Hermit Crab','Its a crab!',20,5,2000,NULL,1),(3,923549,'Sony','music','Men in Black Soundtrack','The soundtrack from the hit movie \'Men in Black\'',20,5,299,'Music',1),(4,923550,'Sony','music','Now That\'s What I Call Music 93','Top music of 1993!',7,3,299,'Music',1),(5,923551,'Sony','music','Now That\'s What I Call Music 92','Top music of 1992!',7,3,299,'Music',1),(6,923552,'Sony','music','Now That\'s What I Call Music 91','Top music of 1991!',7,3,299,'Music',1),(7,923553,'Sony','music','Now That\'s What I Call Music 90','Top music of 1990!',7,3,299,'Music',1),(8,923554,'WarnerBrothers','movies','Harry Potter and the Philosopher\'s Stone - Bluray','Wizards and shit!',24,10,299,'Movies',1),(9,923555,'WarnerBrothers','movie','Harry Potter and the Chamber of Secrets - Bluray','Wizards and shit plus a snake!',24,10,299,'Movies',1),(10,923556,'WarnerBrothers','movie','Harry Potter and the Prisoner of Azkaban - Bluray','Wizards and shit plus an escaped convict!',24,10,299,'Movies',1),(11,923557,'WarnerBrothers','movie','Harry Potter and the Prisoner of Goblet of Fire - Bluray','Wizards and shit plus an escaped convict AND FIRE HELL YEAH!',24,10,299,'Movies',1),(12,923558,'Nintendo','game','Super Mario Brothers','Game of the year 1984',24,10,299,'Games',1),(13,923559,'TradeWest','game','BattleToads','Why yes. We do have this in stock!',50,5,299,'Games',1),(14,923560,'Nintendo','game','Dr. Mario','It\'s like tetris - but with Mario!',24,10,299,'Games',1),(15,923561,'Nintendo & Square','game','Final Fantasy','The most successful RPG ever created for NES. Also, one of the best selling RPG series of all time',240,90,299,'Games',1),(16,923562,'Nintendo','game','Excitbike','Too scared to actually ride a real dirtbike? Play this!',15,10,299,'Games',1);
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Brands`
--

DROP TABLE IF EXISTS `Brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Brands` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(255) DEFAULT NULL,
  `ProductsSold` varchar(255) DEFAULT NULL,
  `ProductSizes` varchar(255) DEFAULT NULL,
  `ProductWeight` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Brands`
--

LOCK TABLES `Brands` WRITE;
/*!40000 ALTER TABLE `Brands` DISABLE KEYS */;
INSERT INTO `Brands` VALUES (1,'Pepsi','Pepsi, Mountain Dew, Dr. Pepper, Mello Yellow, Diet Pepsi, Diet Moutain Dew','Medium','192');
/*!40000 ALTER TABLE `Brands` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-03 23:08:46
