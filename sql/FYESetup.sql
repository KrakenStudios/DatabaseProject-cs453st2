#Drop database if exists
DROP DATABASE IF EXISTS cs453db2;

#Create our cs453db2 Database
CREATE DATABASE IF NOT EXISTS cs453db2;

#Create Tables

#Entity Tables

DROP TABLE IF EXISTS `cs453db2`.`Customers` 
CREATE TABLE `cs453db2`.`Customers`
(
Customer_ID int NOT NULL,
FirstName varchar(20),
LastName varchar(20),
PRIMARY KEY (Customer_ID)
);

DROP TABLE IF EXISTS `cs453db2`.`FrequentShopper`
CREATE TABLE `cs453db2`.`FrequentShopper`
(
Frequent_Shopper_ID int NOT NULL,
Email varchar(50),
PointsGained int,
Username varchar(20),
Password varchar(16),
Customer_ID int,
PRIMARY KEY (Frequent_Shopper_ID),
FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

DROP TABLE IF EXISTS `cs453db2`.`Address`
CREATE TABLE `cs453db2`.`Address`
(
Address_ID int NOT NULL,
AddressLineOne varchar(50),
AddressLineTwo varchar(50),
City varchar(50),
State char(2),
ZIPCode char(5),
PRIMARY KEY (Address_ID)
);

DROP TABLE IF EXISTS `cs453db2`.`Store`
CREATE TABLE `cs453db2`.`Store`
(
Store_ID int NOT NULL,
StoreName varchar(50),
Latitude varchar(20),
Longitude varchar(20),
HoursDaysOpen TEXT,
Address_ID int,
PRIMARY KEY (Store_ID),
FOREIGN KEY (Address_ID) REFERENCES Address(Address_ID)
);

DROP TABLE IF EXISTS `cs453db2`.`Vendor`
CREATE TABLE `cs453db2`.`Vendor`
(
Vendor_ID int NOT NULL,
VendorName varchar(50),
PRIMARY KEY (Vendor_ID)
);

DROP TABLE IF EXISTS `cs453db2`.`Brand`
CREATE TABLE `cs453db2`.`Brand`
(
Brand_ID int NOT NULL,
BrandName varchar(50),
PRIMARY KEY (Brand_ID)
);

DROP TABLE IF EXISTS `cs453db2`.`Product`
CREATE TABLE `cs453db2`.`Product`
(
UPCCode varchar(12) NOT NULL,
ProductName varchar(50),
ProductSize varchar(10),
ProductWeight varchar(10),
Description TEXT,
Brand_ID int,
PRIMARY KEY (UPCCode),
FOREIGN KEY (Brand_ID) REFERENCES Brand(Brand_ID)
);

DROP TABLE IF EXISTS `cs453db2`.`ProductType`
CREATE TABLE `cs453db2`.`ProductType`
(
Type_ID int NOT NULL,
Department varchar(50),
PRIMARY KEY (Type_ID)
);

DROP TABLE IF EXISTS `cs453db2`.`OrderTracking`
CREATE TABLE `cs453db2`.`OrderTracking`
(
Order_ID int NOT NULL,
Store_ID int,
PRIMARY KEY (Order_ID),
FOREIGN KEY (Store_ID) REFERENCES Store(Store_ID)
);

#Relational Tables

#DROP TABLE IF EXISTS `cs453db2`.`FrequentlyShops`
#CREATE TABLE `cs453db2`.`FrequentlyShops`
#(
#Dropped this table because FrequentShoppers can only be one customer.
#);

DROP TABLE IF EXISTS `cs453db2`.`ShipsTo`
CREATE TABLE `cs453db2`.`ShipsTo`
(
Customer_ID int,
Address_ID int,
PRIMARY KEY (Customer_ID, Address_ID),
FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
FOREIGN KEY (Address_ID) REFERENCES Address(Address_ID)
);

DROP TABLE IF EXISTS `cs453db2`.`BillsTo`
CREATE TABLE `cs453db2`.`BillsTo`
(
Customer_ID int,
Address_ID int,
PRIMARY KEY (Customer_ID, Address_ID),
FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
FOREIGN KEY (Address_ID) REFERENCES Address(Address_ID)
);

#DROP TABLE IF EXISTS `cs453db2`.`LocatedAt`
#CREATE TABLE `cs453db2`.`LocatedAt`
#(
#Dropped this table because every store has only one location.
#);

DROP TABLE IF EXISTS `cs453db2`.`SellsTo`
CREATE TABLE `cs453db2`.`SellsTo`
(
Vendor_ID int,
Store_ID int,
PRIMARY KEY (Vendor_ID, Store_ID),
FOREIGN KEY (Vendor_ID) REFERENCES Vendor(Vendor_ID),
FOREIGN KEY (Store_ID) REFERENCES Store(Store_ID),
);

DROP TABLE IF EXISTS `cs453db2`.`SellsThese`
CREATE TABLE `cs453db2`.`SellsThese`
(
Store_ID int,
UPCCode varchar(12),
NumberSold int,
Price varchar(10),
AmountInStock int,
PRIMARY KEY (Store_ID, UPCCode),
FOREIGN KEY (Store_ID) REFERENCES Store(Store_ID),
FOREIGN KEY (UPCCode) REFERENCES Product(UPCCode)
);

DROP TABLE IF EXISTS `cs453db2`.`Ordered`
CREATE TABLE `cs453db2`.`Ordered`
(
Customer_ID int,
Order_ID int,
DateOrdered varchar(10),
PRIMARY KEY (Customer_ID, Order_ID),
FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
FOREIGN KEY (Order_ID) REFERENCES OrderTracking(Order_ID)
);

DROP TABLE IF EXISTS `cs453db2`.`BeenOrdered`
CREATE TABLE `cs453db2`.`BeenOrdered`
(
UPCCode varchar(12),
Order_ID int,
NumberOrdered int,
PRIMARY KEY (UPCCode, Order_ID),
FOREIGN KEY (UPCCode) REFERENCES Product(UPCCode),
FOREIGN KEY (Order_ID) REFERENCES OrderTracking(Order_ID)
);

DROP TABLE IF EXISTS `cs453db2`.`Restocks`
CREATE TABLE `cs453db2`.`Restocks`
(
Vendor_ID int,
Brand_ID int,
PRIMARY KEY (Vendor_ID, Brand_ID),
FOREIGN KEY (Vendor_ID) REFERENCES Vendor(Vendor_ID),
FOREIGN KEY (Brand_ID) REFERENCES Brand(Brand_ID)
);

#DROP TABLE IF EXISTS `cs453db2`.`IsABrandOf`
#CREATE TABLE `cs453db2`.`IsABrandOf`
#(
#Dropped this table because each product will only be one brand.
#);

DROP TABLE IF EXISTS `cs453db2`.`InstanceOf`
CREATE TABLE `cs453db2`.`InstanceOf`
(
Product_ID int,
Type_ID int
PRIMARY KEY (Product_ID, Type_ID)
FOREIGN KEY () REFERENCES _()
FOREIGN KEY () REFERENCES _()
);

DROP TABLE IF EXISTS `cs453db2`.`IsATypeOf`
CREATE TABLE `cs453db2`.`IsATypeOf`
(
Type_ID int,
Sub_Type_ID int
PRIMARY KEY (Type_ID, Sub_Type_ID)
FOREIGN KEY () REFERENCES _()
FOREIGN KEY () REFERENCES _()
);

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
