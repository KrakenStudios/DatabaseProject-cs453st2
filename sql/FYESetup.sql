#Drop database if exists
DROP DATABASE IF EXISTS cs453db2;

#Create our cs453db2 Database
CREATE DATABASE IF NOT EXISTS cs453db2;

#create tables
CREATE TABLE `cs453db2`.`Admins`
(
  Id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  LastName varchar(255),
  FirstName varchar(255),
  Username varchar(255),
  Password char(56),
  Salt varchar(255),
  AdminRights varchar(255),
  IsSuperAdmin tinyint(1) DEFAULT '0'
);

CREATE TABLE `cs453db2`.`Customers`
(
  Id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  FrequentShopperNumber int,
  LastName varchar(255),
  FirstName varchar(255),
  ShippingAddress varchar(255),
  ShippingAddress2 varchar(255),
  ShippingCity varchar(255),
  ShippingState varchar(255),
  ShippingZIPCode varchar(255),
  BillingAddress varchar(255),
  BillingAddress2 varchar(255),
  BillingCity varchar(255),
  BillingState varchar(255),
  BillingZIPCode varchar(255),
  EmailAddress varchar(255),
  PointsGained int,
  Username varchar(255),
  Password char(56),
  Salt varchar(255)
);

CREATE TABLE `cs453db2`.`Stores`
(
  Id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  StoreName varchar(255),
  StoreAddress varchar(255),
  StoreCity varchar(255),
  StoreState varchar(255),
  StoreZIPCode varchar(255),
  Latitude varchar(255),
  Longitude varchar(255),
  HoursOpen int,
  DaysOpen varchar(255)
);

CREATE TABLE `cs453db2`.`Vendors`
(
  Id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  VendorName varchar(255),
  BrandsSold varchar(255)
);

CREATE TABLE `cs453db2`.`ProductTypes`
(
  Id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Department varchar(255),
  Category varchar(255),
  SubCategory varchar(255),
  Items varchar(255)
);

CREATE TABLE `cs453db2`.`Brands`
(
  Id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  BrandName varchar(255),
  ProductsSold varchar(255),
  ProductSizes varchar(255),
  ProductWeight varchar(255)
);

CREATE TABLE `cs453db2`.`Products`
(
  Id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  UPCCode int,
  ProductBrand varchar(255),
  ProductType varchar(255),
  ProductName varchar(255),
  ProductDescription TEXT,
  ProductSellPrice int,
  ProductWholesalePrice int,
  AmountInStock double(255,0),
  Department varchar(255),
  InStock tinyint(1) DEFAULT '1'
);


#Populate Admins
INSERT INTO `cs453db2`.`Admins` (`Id`, `LastName`, `FirstName`, `Username`, `Password`, `Salt`, `AdminRights`, `IsSuperAdmin`) VALUES (1, 'Ward', 'Chris', 'cward', 'lolplaintext', '12$', '777', b'1');

#Populate Brands
INSERT INTO `cs453db2`.`Brands` (`Id`, `BrandName`, `ProductsSold`, `ProductSizes`, `ProductWeight`) VALUES ('1', 'Pepsi', 'Pepsi, Mountain Dew, Dr. Pepper, Mello Yellow, Diet Pepsi, Diet Moutain Dew', 'Medium', '192');

#Populate Customers
INSERT INTO `cs453db2`.`Customers` (`Id`, `FrequentShopperNumber`, `LastName`, `FirstName`, `ShippingAddress`, `ShippingAddress2`, `ShippingCity`, `ShippingState`, `ShippingZIPCode`, `BillingAddress`, `BillingAddress2`, `BillingCity`, `BillingState`, `BillingZIPCode`, `EmailAddress`, `PointsGained`, `Username`, `Password`, `Salt`) VALUES ('1', '920302112', 'Ward', 'Chris', '23 Cats Den Dr', 'APT 723', 'Cullowhee', 'NC', '28723', '23 Cats Den Dr', 'APT 723', 'Cullowhee', 'NC', '28723', 'chris.dev.ward@gmail.com', '9001', 'cwardcust', 'lolplaintext', '13$');

#Populate Products
INSERT INTO `cs453db2`.`Products` (`UPCCode`,  `ProductBrand`, `ProductType`, `ProductName`, `ProductDescription`, `ProductSellPrice`, `ProductWholesalePrice`, `AmountInStock`, `InStock`) VALUES ('923547', 'Capitol', 'Music', 'Sargent Peppers Lonely Heart's Club Band', 'One of the Beatles' best selling albums!', '10.00', '5.00', '20', b'1');
INSERT INTO `cs453db2`.`Products` (`UPCCode`,  `ProductBrand`, `ProductType`, `ProductName`, `ProductDescription`, `ProductSellPrice`, `ProductWholesalePrice`, `AmountInStock`, `InStock`) VALUES ('923548', 'PetCo', 'Pets', 'Hermit Crab', 'Its a crab!', '20.00', '5.00', '2000', b'1');
INSERT INTO `cs453db2`.`Products` (`UPCCode`,  `ProductBrand`, `ProductType`, `ProductName`, `ProductDescription`, `ProductSellPrice`, `ProductWholesalePrice`, `AmountInStock`, `InStock`) VALUES ('923549', 'Sony', 'Music', 'Men In Black Soundtrack', 'Soundtrack for the hit movie 'Men in Black'', '14.99', '5.00', '199', b'1');

#Populate ProductTypes
INSERT INTO `cs453db2`.`ProductTypes` (`Id`, `Department`, `Category`, `SubCategory`, `Items`) VALUES ('1', 'Food', 'Beverages', 'Soda', 'Cola');

#Populate Stores
INSERT INTO `cs453db2`.`Stores` (`Id`, `StoreName`, `StoreAddress`, `StoreCity`, `StoreState`, `StoreZIPCode`, `Latitude`, `Longitude`, `HoursOpen`, `DaysOpen`) VALUES ('1', 'cs453db2', '227 A.K. Hinds University Center ', 'Cullowhee', 'NC', '28723', '35.31129', '-83.18270 ', '8', 'MTWTFSS');

#Populate Vendors
INSERT INTO `cs453db2`.`Vendors` (`Id`, `VendorName`, `BrandsSold`) VALUES ('1', 'Fun!Entertainment', 'PartyHardy');