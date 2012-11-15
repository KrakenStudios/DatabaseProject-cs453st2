from django.db import models
class Customer(models.Model):
    Customer_ID = models.IntegerField()
    FirstName = models.CharField(max_length = 20)
    LastName = models.CharField(max_length = 20)
    
    def __unicode__(self):
        return self.FirstName + self.LastName

class FrequentShopper(models.Model):
    Frequent_Shopper_ID = models.IntegerField()
    Email = models.CharField(max_length = 50)
    PointsGained = models.IntegerField()
    Username = models.CharField(max_length = 20)
    Password = models.CharField(max_length = 16)

    def __unicode__(self):
        return self.Username

class Address(models.Model):
    Address_ID = models.IntegerField()
    AddressLineOne = models.CharField(max_length = 50)
    AddressLineTwo = models.CharField(max_length = 50)
    City = models.CharField(max_length = 50)
    State = models.CharField(length = 2)
    ZIPCode = models.CharField(length = 5)

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

class Product(models.Model):
    UPCCode = models.CharField(length = 12)
    ProductName = models.CharField(max_length = 50)
    ProductSize = models.CharField(max_length = 10)
    ProductWeight = models.CharField(max_length = 10)
    ProductDescription = models.TextField()
    
    def __unicode__(self):
        return self.ProductName

class ProductType(models.Model):
    Type_ID = models.IntegerField()
    Department = models.CharField(max_length = 50)

    def __unicode__(self):
        return self.Department

class OrderTracking(models.Model):
    Order_ID = models.IntegerField()
    Store_ID = models.IntegerField()

    def __unicode__(self):
        return self.Order_ID
