from django.db import models

class FrequentShopper(models.Model):
    Frequent_Shopper_ID = models.IntegerField(unique=True)
    Email = models.CharField(max_length = 50)
    PointsGained = models.IntegerField()
    Username = models.CharField(max_length = 20)
    Password = models.CharField(max_length = 16)
    #Customer_ID = models.IntegerField()

    def __unicode__(self):
        return self.Username
class Customer(models.Model):
    Customer_ID = models.IntegerField()
    FS_ID = models.ForeignKey(FrequentShopper, to_field='Frequent_Shopper_ID')
    FirstName = models.CharField(max_length = 20)
    LastName = models.CharField(max_length = 20)

    def __unicode__(self):
        return self.FirstName + self.LastName
class Address(models.Model):
    Address_ID = models.IntegerField()
    AddressLineOne = models.CharField(max_length = 50)
    AddressLineTwo = models.CharField(max_length = 50)
    City = models.CharField(max_length = 50)
    State = models.CharField(max_length = 2)
    ZIPCode = models.CharField(max_length = 5)

    def __unicode__(self):
        return self.AddressLineOne + AddressLineTwo + City + State + ZIPCode

class Store(models.Model):
    Store_ID = models.IntegerField()
    StoreName = models.CharField(max_length = 50)
    Latitude = models.CharField(max_length = 20)
    Longitude = models.CharField(max_length = 20)
    HoursDaysOpen = models.TextField()
    Address_ID = models.IntegerField()

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
    Type_ID = models.IntegerField(unique=True)                                             
    Department = models.CharField(max_length = 50)                              
                                                                                
    def __unicode__(self):                                                      
        return self.Department                                                  
                                                                                
class InstanceOf(models.Model):                                                 
    #Product_ID = models.CharField(max_length = 12, primary_key=True)                                   
    Product_ID = models.ForeignKey('Product', primary_key=True)                                  
    Type_ID = models.ForeignKey(ProductType, to_field = 'Type_ID', unique=True)               
                                                                                
    def __unicode__(self):                                                      
        return self.Product_ID                   

class Product(models.Model):
    UPCCode = models.CharField(max_length = 12, primary_key=True)
    ProductName = models.CharField(max_length = 50)
    ProductSize = models.CharField(max_length = 10)
    ProductWeight = models.CharField(max_length = 10)
    ProductDescription = models.TextField()
    ProductPrice = models.DecimalField(max_digits=3, decimal_places=2)
    ProductType = models.ForeignKey(InstanceOf, to_field = 'Type_ID')
    Brand_ID = models.IntegerField()
    
    def __unicode__(self):
        return self.ProductName

class IsATypeOf(models.Model):                                                  
    Type_ID = models.IntegerField()                                             
    Sub_Type_ID = models.IntegerField()                                         
                                                                                
    def __unicode__(self):                                                      
        return Type_ID + Sub_Type_Id           

class OrderTracking(models.Model):
    Order_ID = models.IntegerField()
    Store_ID = models.IntegerField()

    def __unicode__(self):
        return self.Order_ID

class ShipsTo(models.Model):
    Customer_ID = models.IntegerField()
    Address_ID = models.IntegerField()

    def __unicode__(self):
        return Customer_ID + Address_ID

class BillsTo(models.Model):
    Customer_ID = models.IntegerField()
    Address_ID = models.IntegerField()

    def __unicode__(self):
        return Customer_ID + Address_ID

class SellsTo(models.Model):
    Vendor_ID = models.IntegerField()
    Store_ID = models.IntegerField()

    def __unicode__(self):
        return Vendor_ID + Store_ID

class SellsThese(models.Model):
    Store_ID = models.IntegerField()
    UPCCode = models.CharField(max_length = 12)
    NumberSold = models.IntegerField()
    Price = models.CharField(max_length = 10)
    AmountInStock = models.IntegerField()

    def __unicode__(self):
        return Store_ID + UPCCode + Price

class Ordered(models.Model):
    Customer_ID = models.IntegerField()
    Order_ID = models.IntegerField()
    DateOrdered = models.CharField(max_length = 10)

    def __unicode__(self):
        return Customer_ID + Order_ID + DateOrdered

class BeenOrdered(models.Model):
    UPCCode = models.CharField(max_length = 12)
    Order_ID = models.IntegerField()
    NumberOrdered = models.IntegerField()

    def __unicode__(self):
        return UPCCode + Order_ID + NumberOrdered

class Restocks(models.Model):
    Vendor_ID = models.IntegerField()
    Brand_ID = models.IntegerField()

    def __unicode__(self):
        return Vendor_ID + Brand_ID
