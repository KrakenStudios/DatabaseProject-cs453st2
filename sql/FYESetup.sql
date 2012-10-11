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
  Password varchar(18),
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
  FirstName varchar(14),
  ShippingAddress varchar(50),
  ShippingAddress2 varchar(50),
  ShippingCity varchar(18),
  ShippingState char(2),
  ShippingZIPCode varchar(9),
  BillingAddress varchar(50),
  BillingAddress2 varchar(50),
  BillingCity varchar(18),
  BillingState char(2),
  BillingZIPCode varchar(9),
  EmailAddress varchar(30),
  PointsGained int,
  Username varchar(18),
  Password varchar(18),
  Salt varchar(5),
  PRIMARY KEY (Id)
);

CREATE TABLE `cs453db2`.`Stores`
(
  Id int NOT NULL AUTO_INCREMENT,
  StoreName varchar(18),
  StoreAddress varchar(18),
  StoreCity varchar(18),
  StoreState char(2),
  StoreZIPCode varchar(18),
  Latitude varchar(18),
  Longitude varchar(18),
  HoursOpen TEXT,
  DaysOpen varchar(7),
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
  InStock tinyint(1) DEFAULT '1',
  PRIMARY KEY (Id),
  FOREIGN KEY (ProductBrand) REFERENCES Brands (ProductBrand),
  FOREIGN KEY (ProductType) REFERENCES ProductTypes (Category),
  FOREIGN KEY (Department) REFERENCES ProductTypes (Department)
);


#Populate Admins
INSERT INTO `cs453db2`.`Admins` (`LastName`, `FirstName`, `Username`, `Password`, `Salt`, `AdminRights`, `IsSuperAdmin`) VALUES ('Ward', 'Chris', 'cward', 'lolplaintext', '12$', '777', b'1');
INSERT INTO `cs453db2`.`Admins` (`LastName`, `FirstName`, `Username`, `Password`, `Salt`, `AdminRights`, `IsSuperAdmin`) VALUES ('Gonzalez', 'Diego', 'dgonzalez', 'lolplaintext', '12$', '777', b'1');
INSERT INTO `cs453db2`.`Admins` (`LastName`, `FirstName`, `Username`, `Password`, `Salt`, `AdminRights`, `IsSuperAdmin`) VALUES ('Stender', 'Matt', 'mstender', 'lolplaintext', '12$', '777', b'1');

#Populate Brands
INSERT INTO `cs453db2`.`Brands` (`ProductBrand`, `ProductsSold`, `ProductSizes`, `ProductWeight`) VALUES ('Sony', 'CD, DVD, Bluray', 'Small', '10');
INSERT INTO `cs453db2`.`Brands` (`ProductBrand`, `ProductsSold`, `ProductSizes`, `ProductWeight`) VALUES ('Warner Brothers', 'DVD, Bluray', 'Small', '10');
INSERT INTO `cs453db2`.`Brands` (`ProductBrand`, `ProductsSold`, `ProductSizes`, `ProductWeight`) VALUES ('Epic', 'Games', 'Small', '10');
INSERT INTO `cs453db2`.`Brands` (`ProductBrand`, `ProductsSold`, `ProductSizes`, `ProductWeight`) VALUES ('Capitol', 'CD', 'Small', '10');

#Populate Customers
INSERT INTO `cs453db2`.`Customers` (`FrequentShopperNumber`, `LastName`, `FirstName`, `ShippingAddress`, `ShippingAddress2`, `ShippingCity`, `ShippingState`, `ShippingZIPCode`, `BillingAddress`, `BillingAddress2`, `BillingCity`, `BillingState`, `BillingZIPCode`, `EmailAddress`, `PointsGained`, `Username`, `Password`, `Salt`) VALUES ('920302112', 'Montana', 'Antonio', '323 Cockroach Ave', '', 'Miami', 'FL', '33101', '323 Cockroach Ave', '', 'Miami', 'FL', '33101', 'tonytheboss@gmail.com', '900000', 'tonyMontana', 'myLittleFriend', '13$');
INSERT INTO `cs453db2`.`Customers` (`FrequentShopperNumber`, `LastName`, `FirstName`, `ShippingAddress`, `ShippingAddress2`, `ShippingCity`, `ShippingState`, `ShippingZIPCode`, `BillingAddress`, `BillingAddress2`, `BillingCity`, `BillingState`, `BillingZIPCode`, `EmailAddress`, `PointsGained`, `Username`, `Password`, `Salt`) VALUES ('920302113', 'Castle', 'Frank', '1414 32nd St', 'Apartment 7', 'New York', 'NY', '10453', '1414 32nd St', 'Apartment 7', 'New York', 'NY', '10453', 'FCastle@gmail.com', '100', 'thePunisher', 'justice', '13$');
INSERT INTO `cs453db2`.`Customers` (`FrequentShopperNumber`, `LastName`, `FirstName`, `ShippingAddress`, `ShippingAddress2`, `ShippingCity`, `ShippingState`, `ShippingZIPCode`, `BillingAddress`, `BillingAddress2`, `BillingCity`, `BillingState`, `BillingZIPCode`, `EmailAddress`, `PointsGained`, `Username`, `Password`, `Salt`) VALUES ('920302114', 'Schwarzenegger', 'Arnold', '12989 Chalon Rd', '', 'Los Angeles', 'CA', '90049', '12989 Chalon Rd', '', 'Los Angeles', 'CA', '90049', 'theGovernator@gmail.com', '7500', 'arnoldT1000', 'illBeBack', '13$');
INSERT INTO `cs453db2`.`Customers` (`FrequentShopperNumber`, `LastName`, `FirstName`, `ShippingAddress`, `ShippingAddress2`, `ShippingCity`, `ShippingState`, `ShippingZIPCode`, `BillingAddress`, `BillingAddress2`, `BillingCity`, `BillingState`, `BillingZIPCode`, `EmailAddress`, `PointsGained`, `Username`, `Password`, `Salt`) VALUES ('920302115', 'Soprano', 'Tony', '633 Stagtrail Rd', '', 'West Caldwell', 'NJ', '07006', '633 Stagtrail Rd', '', 'West Caldwell', 'NJ', '07006', 'theBetterMobster@gmail.com', '850000', 'theGodfather', 'tlkn2me', '13$');

#Populate Products
INSERT INTO `cs453db2`.`Products` (`UPCCode`,  `ProductBrand`, `ProductType`, `ProductName`, `ProductDescription`, `ProductSellPrice`, `ProductWholesalePrice`, `AmountInStock`, `InStock`, `Department`, `ProductSize`) VALUES ('923547', 'Capitol', 'Music', 'Sargent Peppers Lonely Hearts Club Band', 'One of the Beatles best selling albums!', '10.00', '5.00', '20', b'1', 'music', 'small');
INSERT INTO `cs453db2`.`Products` (`UPCCode`,  `ProductBrand`, `ProductType`, `ProductName`, `ProductDescription`, `ProductSellPrice`, `ProductWholesalePrice`, `AmountInStock`, `InStock`, `Department`, `ProductSize`) VALUES ('923548', 'Warner Brothers', 'Movies', 'Harry Potter', 'Magic wizards, wands and stuff!', '20.00', '5.00', '2000', b'1', 'Movies', 'small');
INSERT INTO `cs453db2`.`Products` (`UPCCode`,  `ProductBrand`, `ProductType`, `ProductName`, `ProductDescription`, `ProductSellPrice`, `ProductWholesalePrice`, `AmountInStock`, `InStock`, `Department`, `ProductSize`) VALUES ('923548', 'Epic', 'Games', 'Gears of War', 'The best series ever!', '60.00', '30.00', '20', b'1','Games','small');
INSERT INTO `cs453db2`.`Products` (`UPCCode`,  `ProductBrand`, `ProductType`, `ProductName`, `ProductDescription`, `ProductSellPrice`, `ProductWholesalePrice`, `AmountInStock`, `InStock`, `Department`, `ProductSize`) VALUES ('923549', 'Sony', 'Music', 'Men In Black Soundtrack', 'Soundtrack for the hit movie Men in Black', '14.99', '5.00', '199', b'1','Music','small');

#Populate ProductTypes
INSERT INTO `cs453db2`.`ProductTypes` (`Department`, `Category`, `SubCategory`, `Items`) VALUES ('Music', 'CD', 'Metal', 'Judas Priest');
INSERT INTO `cs453db2`.`ProductTypes` (`Department`, `Category`, `SubCategory`, `Items`) VALUES ('Music', 'CD', 'R&B', 'Nelly');
INSERT INTO `cs453db2`.`ProductTypes` (`Department`, `Category`, `SubCategory`, `Items`) VALUES ('Music', 'CD', 'Rap', 'Ice Cube');
INSERT INTO `cs453db2`.`ProductTypes` (`Department`, `Category`, `SubCategory`, `Items`) VALUES ('Music', 'CD', 'Rock', 'Aerosmith');
INSERT INTO `cs453db2`.`ProductTypes` (`Department`, `Category`, `SubCategory`, `Items`) VALUES ('Movies', 'DVD', 'Action', 'Terminator');
INSERT INTO `cs453db2`.`ProductTypes` (`Department`, `Category`, `SubCategory`, `Items`) VALUES ('Movies', 'DVD', 'Comedy', 'Madea Goes to Prison');
INSERT INTO `cs453db2`.`ProductTypes` (`Department`, `Category`, `SubCategory`, `Items`) VALUES ('Movies', 'bluray', 'Horror', 'Last House on the Left');
INSERT INTO `cs453db2`.`ProductTypes` (`Department`, `Category`, `SubCategory`, `Items`) VALUES ('Movies', 'bluray', 'Suspense', 'The Next Three Days');
INSERT INTO `cs453db2`.`ProductTypes` (`Department`, `Category`, `SubCategory`, `Items`) VALUES ('Games', 'NES', 'Action', 'Super Mario Bros');
INSERT INTO `cs453db2`.`ProductTypes` (`Department`, `Category`, `SubCategory`, `Items`) VALUES ('Games', 'Playstation 1', 'Adventure', 'Spyro');

#Populate Stores
INSERT INTO `cs453db2`.`Stores` (`StoreName`, `StoreAddress`, `StoreCity`, `StoreState`, `StoreZIPCode`, `Latitude`, `Longitude`, `HoursOpen`, `DaysOpen`) VALUES ('Fayetteville', '410 Cross Creek Mall', 'Fayetteville', 'NC', '28303', '', '', '8', 'MTWTFSS');
INSERT INTO `cs453db2`.`Stores` (`StoreName`, `StoreAddress`, `StoreCity`, `StoreState`, `StoreZIPCode`, `Latitude`, `Longitude`, `HoursOpen`, `DaysOpen`) VALUES ('Asheville', '3 S Tunnel Rd', 'Asheville', 'NC', '28805', '', '', '8', 'MTWTFSS');
INSERT INTO `cs453db2`.`Stores` (`StoreName`, `StoreAddress`, `StoreCity`, `StoreState`, `StoreZIPCode`, `Latitude`, `Longitude`, `HoursOpen`, `DaysOpen`) VALUES ('Concord', '8481 Concord Mills Blvd', 'Concord', 'NC', '28027', '', '', '8', 'MTWTFSS');
INSERT INTO `cs453db2`.`Stores` (`StoreName`, `StoreAddress`, `StoreCity`, `StoreState`, `StoreZIPCode`, `Latitude`, `Longitude`, `HoursOpen`, `DaysOpen`) VALUES ('Durham', '6910 Fayetteville Rd', 'Durham', 'NC', '27713', '', '', '8', 'MTWTFSS');

#Populate Vendors
INSERT INTO `cs453db2`.`Vendors` (`VendorName`, `ProductBrand`) VALUES ('FYEMusicVendor', 'Sony, Capitol');
INSERT INTO `cs453db2`.`Vendors` (`VendorName`, `ProductBrand`) VALUES ('FYEGameVendor', 'Epic');
INSERT INTO `cs453db2`.`Vendors` (`VendorName`, `ProductBrand`) VALUES ('FYEMovieVendor', 'Warner Brothers, Sony');
