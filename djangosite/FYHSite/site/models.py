from django.db import models

class Customer(models.Model):
    Customer_ID = models.IntegerField()
    FirstName = models.CharField(max_length = 20)
    LastName = models.CharField(max_length = 20)

    def __unicode__(self):
        return self.FirstName + self.LastName

class FrequentShopper(models.Model):
    Frequent_Shopper_ID = models.IntegerField(unique=True)
    Email = models.CharField(max_length = 50)
    PointsGained = models.IntegerField()
    Username = models.CharField(max_length = 20)
    Password = models.CharField(max_length = 16)
    Customer_ID = models.ForeignKey(Customer)

    def __unicode__(self):
        return self.Username

class Address(models.Model):
    Address_ID = models.IntegerField()
    AddressLineOne = models.CharField(max_length = 50)
    AddressLineTwo = models.CharField(max_length = 50)
    City = models.CharField(max_length = 50)
    State = models.CharField(max_length = 2)
    ZIPCode = models.CharField(max_length = 5)

    def __unicode__(self):
        return self.AddressLineOne + self.AddressLineTwo + self.City + self.State + self.ZIPCode

class Store(models.Model):
    Store_ID = models.IntegerField()
    StoreName = models.CharField(max_length = 50)
    Latitude = models.CharField(max_length = 20)
    Longitude = models.CharField(max_length = 20)
    HoursDaysOpen = models.TextField()
    Address = models.ForeignKey(Address)

    def __unicode__(self):
        return self.StoreName

class Vendor(models.Model):
    Vendor_ID = models.IntegerField()
    VendorName = models.CharField(max_length = 50)

    def __unicode__(self):
        return self.VendorName

class Brand(models.Model):
    Brand_ID = models.IntegerField()
    BrandName = models.CharField(max_length = 50)

    def __unicode__(self):
        return self.BrandName

class ProductType(models.Model):                                                
    Type_ID = models.IntegerField(primary_key=True)                                             
    Department = models.CharField(max_length = 50)                              
                                                                                
    def __unicode__(self):                                                      
        return self.Department                                                  
                                                                                
class InstanceOf(models.Model):                                                 
    Product = models.ForeignKey(Product)
    Type = models.ForeignKey(ProductType)               
                                                                                
    def __unicode__(self):                                                      
        return str(self.Type_ID)

class Product(models.Model):
    UPCCode = models.CharField(max_length = 12, primary_key=True)
    ProductName = models.CharField(max_length = 50)
    ProductSize = models.CharField(max_length = 10)
    ProductWeightInPounds = models.DecimalField(max_digits=3, decimal_places=2)
    ProductPrice = models.DecimalField(max_digits=3, decimal_places=2)
    ProductDescription = models.TextField()
    ProductType = models.ManyToManyField(ProductType)
    #ProductType = models.ForeignKey(InstanceOf, to_field = 'Type_ID')
    Brand = models.ForeignKey(Brand)
    
    def __unicode__(self):
        return self.ProductName

class IsATypeOf(models.Model):                                                  
    Type = models.ForeignKey(Type)                                             
    Sub_Type = models.ForeignKey(Type)                                         
                                                                                
    def __unicode__(self):                                                      
        return self.Type_ID + self.Sub_Type_Id           

class OrderTracking(models.Model):
    Order_ID = models.IntegerField()
    Store = models.ForeignKey(Store)

    def __unicode__(self):
        return self.Order_ID

class ShipsTo(models.Model):
    Customer = models.ForeignKey(Customer)
    Address = models.ForeignKey(Address)

    def __unicode__(self):
        return "Customer: " + str(self.Customer_ID) + " " + "Address:" + str(self.Address_ID)

class BillsTo(models.Model):
    Customer = models.ForeignKey(Customer)
    Address = models.ForeignKey(Address)

    def __unicode__(self):
        return self.Customer_ID + self.Address_ID

class SellsTo(models.Model):
    Vendor = models.ForeignKey(Vendor)
    Store = models.ForeignKey(Store)

    def __unicode__(self):
        return self.Vendor + self.Store

class SellsThese(models.Model):
    Store = models.ForeignKey(Store)
    Product = models.ForeignKey(Product)
    NumberSold = models.IntegerField()
    Price = models.CharField(max_length = 10)
    AmountInStock = models.IntegerField()

    def __unicode__(self):
        return self.Store + self.Product + self.Price

class Ordered(models.Model):
    Customer = models.ForeignKey(Customer)
    Order = models.ForeignKey(OrderTracking)
    DateOrdered = models.DateField()

    def __unicode__(self):
        return self.Customer + self.Order + self.DateOrdered

class BeenOrdered(models.Model):
    Product = models.ForeignKey(Product);
    Order = models.ForeignKey(OrderTracking)
    NumberOrdered = models.IntegerField()

    def __unicode__(self):
        return self.Product + self.Order + self.NumberOrdered

class Restocks(models.Model):
    Vendor = models.ForeignKey(Vendor)
    Brand = models.ForeignKey(Brand)

    def __unicode__(self):
        return self.Vendor + self.Brand
