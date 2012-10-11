#Drop database if exists
DROP DATABASE IF EXISTS cs453db2;

#Create our cs453db2 Database
CREATE DATABASE IF NOT EXISTS cs453db2;

#create tables
CREATE TABLE `cs453db2`.`Admins`
(
  Id int NOT NULL AUTO_INCREMENT,
  LastName varchar(14),
  FirstName varchar(14),
  Username varchar(18),
  Password char(18),
  Salt varchar(5),
  AdminRights varchar(4),
  IsSuperAdmin tinyint(1) DEFAULT '0',
  PRIMARY KEY (Id)
);

CREATE TABLE `cs453db2`.`Customers`
(
  Id int NOT NULL AUTO_INCREMENT,
  FrequentShopperNumber int,
  LastName varchar(14),
  FirstName varchar(18),
  ShippingAddress varchar(50),
  ShippingAddress2 varchar(50),
  ShippingCity varchar(18),
  ShippingState varchar(10),
  ShippingZIPCode varchar(9),
  BillingAddress varchar(50),
  BillingAddress2 varchar(50),
  BillingCity varchar(18),
  BillingState varchar(10),
  BillingZIPCode varchar(9),
  EmailAddress varchar(18),
  PointsGained int,
  Username varchar(18),
  Password char(56),
  Salt varchar(5),
  PRIMARY KEY (Id)
);

CREATE TABLE `cs453db2`.`Stores`
(
  Id int NOT NULL AUTO_INCREMENT,
  StoreName varchar(18),
  StoreAddress varchar(18),
  StoreCity varchar(18),
  StoreState varchar(18),
  StoreZIPCode varchar(18),
  Latitude varchar(18),
  Longitude varchar(18),
  HoursOpen int,
  DaysOpen varchar(18),
  PRIMARY KEY (Id)
);

CREATE TABLE `cs453db2`.`Vendors`
(
  Id int NOT NULL AUTO_INCREMENT,
  VendorName varchar(18),
  ProductBrand varchar(18),
  PRIMARY KEY (Id),
  FOREIGN KEY (ProductBrand) REFERENCES Brands (ProductBrand)
);

CREATE TABLE `cs453db2`.`ProductTypes`
(
  Id int NOT NULL AUTO_INCREMENT,
  Department varchar(18),
  Category varchar(18),
  SubCategory varchar(18),
  Items varchar(18),
  PRIMARY KEY (Id),
  FOREIGN KEY (Items) REFERENCES Products (ProductName)
);

CREATE TABLE `cs453db2`.`Brands`
(
  Id int NOT NULL AUTO_INCREMENT,
  ProductBrand varchar(18),
  ProductsSold varchar(18),
  ProductSizes varchar(18),
  ProductWeight varchar(18),
  PRIMARY KEY (Id)
);

CREATE TABLE `cs453db2`.`Products`
(
  Id int NOT NULL AUTO_INCREMENT,
  UPCCode int,
  ProductBrand varchar(18),
  ProductType varchar(18),
  ProductSize varchar(18),
  ProductName varchar(18),
  ProductDescription TEXT,
  ProductSellPrice int,
  ProductWholesalePrice int,
  AmountInStock double(18,0),
  Department varchar(18),
  InStock tinyint(1) DEFAULT '1'
  PRIMARY KEY (Id),
  FOREIGN KEY (ProductBrand) REFERENCES Brands (ProductBrand),
  FOREIGN KEY (ProductType) REFERENCES ProductTypes (Category),
  FOREIGN KEY (Department) REFERENCES ProductTypes (Department),
);


#Populate Admins
INSERT INTO `cs453db2`.`Admins` (`LastName`, `FirstName`, `Username`, `Password`, `Salt`, `AdminRights`, `IsSuperAdmin`) VALUES ('Ward', 'Chris', 'cward', 'lolplaintext', '12$', '777', b'1');
INSERT INTO `cs453db2`.`Admins` (`LastName`, `FirstName`, `Username`, `Password`, `Salt`, `AdminRights`, `IsSuperAdmin`) VALUES ('Gonzalez', 'Diego', 'dgonzalez', 'lolplaintext', '12$', '777', b'1');
INSERT INTO `cs453db2`.`Admins` (`LastName`, `FirstName`, `Username`, `Password`, `Salt`, `AdminRights`, `IsSuperAdmin`) VALUES ('Stender', 'Matt', 'mstender', 'loldrugs', '12$', '777', b'1');

#Populate Brands
INSERT INTO `cs453db2`.`Brands` (`BrandName`, `ProductsSold`, `ProductSizes`, `ProductWeight`) VALUES ('1', 'Pepsi', 'Pepsi, Mountain Dew, Dr. Pepper, Mello Yellow, Diet Pepsi, Diet Moutain Dew', 'Medium', '192');

#Populate Customers
INSERT INTO `cs453db2`.`Customers` (`FrequentShopperNumber`, `LastName`, `FirstName`, `ShippingAddress`, `ShippingAddress2`, `ShippingCity`, `ShippingState`, `ShippingZIPCode`, `BillingAddress`, `BillingAddress2`, `BillingCity`, `BillingState`, `BillingZIPCode`, `EmailAddress`, `PointsGained`, `Username`, `Password`, `Salt`) VALUES ('1', '920302112', 'Ward', 'Chris', '23 Cats Den Dr', 'APT 723', 'Cullowhee', 'NC', '28723', '23 Cats Den Dr', 'APT 723', 'Cullowhee', 'NC', '28723', 'chris.dev.ward@gmail.com', '9001', 'cwardcust', 'lolplaintext', '13$');

#Populate Products
INSERT INTO `cs453db2`.`Products` (`UPCCode`,  `ProductBrand`, `ProductType`, `ProductName`, `ProductDescription`, `ProductSellPrice`, `ProductWholesalePrice`, `AmountInStock`, `InStock`) VALUES ('923547', 'Capitol', 'Music', 'Sargent Peppers Lonely Heart's Club Band', 'One of the Beatles' best selling albums!', '10.00', '5.00', '20', b'1');
INSERT INTO `cs453db2`.`Products` (`UPCCode`,  `ProductBrand`, `ProductType`, `ProductName`, `ProductDescription`, `ProductSellPrice`, `ProductWholesalePrice`, `AmountInStock`, `InStock`) VALUES ('923548', 'PetCo', 'Pets', 'Hermit Crab', 'Its a crab!', '20.00', '5.00', '2000', b'1');
INSERT INTO `cs453db2`.`Products` (`UPCCode`,  `ProductBrand`, `ProductType`, `ProductName`, `ProductDescription`, `ProductSellPrice`, `ProductWholesalePrice`, `AmountInStock`, `InStock`) VALUES ('923549', 'Sony', 'Music', 'Men In Black Soundtrack', 'Soundtrack for the hit movie 'Men in Black'', '14.99', '5.00', '199', b'1');

#Populate ProductTypes
INSERT INTO `cs453db2`.`ProductTypes` (`Department`, `Category`, `SubCategory`, `Items`) VALUES ('1', 'Food', 'Beverages', 'Soda', 'Cola');

#Populate Stores
INSERT INTO `cs453db2`.`Stores` (`StoreName`, `StoreAddress`, `StoreCity`, `StoreState`, `StoreZIPCode`, `Latitude`, `Longitude`, `HoursOpen`, `DaysOpen`) VALUES ('1', 'cs453db2', '227 A.K. Hinds University Center ', 'Cullowhee', 'NC', '28723', '35.31129', '-83.18270 ', '8', 'MTWTFSS');

#Populate Vendors
INSERT INTO `cs453db2`.`Vendors` (`VendorName`, `BrandsSold`) VALUES ('1', 'Fun!Entertainment', 'PartyHardy');
