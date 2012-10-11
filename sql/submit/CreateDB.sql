#creates our tables 
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
