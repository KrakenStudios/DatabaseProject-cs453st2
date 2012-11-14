from django.db import models
class Products(models.Model):
    #Products_ID = models.IntegerField()
    UPCCode = models.IntegerField()
    ProductName = models.CharField(max_length = 100)
    #ProductSize = models.CharField(max_length = 10)
    #ProductWeight = models.CharField(max_length = 10)
    ProductDescription = models.TextField()
    
    def __unicode__(self):
        return self.ProductName

class Brand(models.Model):
    Brand_ID = models.IntegerField()
    BrandName = models.CharField(max_length = 100)

    def __unicode__(self):
        return self.BrandName

class Vender(models.Model):
    Vendor_ID = models.IntegerField()
    VendorName = models.CharField(max_length = 100)

    def __unicode__(self):
        return self.VendorName

class Store(models.Model):
    Store_ID = models.IntegerField()
    StoreName = models.CharField(max_length = 100)
    Latitude = models.CharField(max_length = 10)
    Longitude = models.CharField(max_length = 10)
    HoursOpen = models.CharField(max_length = 10)
    DaysOpen = models.CharField(max_length = 8)

    def __unicode__(self):
        return self.StoreName

class Address(models.Model):
    AddressLineOne = models.CharField(max_length = 100)
    AddressLineTwo = models.CharField(max_length = 100)
    City = models.CharField(max_length = 50)
    State = models.CharField(max_length = 50)
    ZIPCode = models.CharField(max_length = 5)

    def __unicode__(self):
        return self.AddressLineOne + self.AddressLineTwo + City + State + ZIPCode

class Customer(models.Model):
    Customer_ID = models.IntegerField()
    FrequentShopperNumber = models.IntegerField()
    FirstName = models.CharField(max_length = 50)
    LastName = models.CharField(max_length = 50)
    EmailAddress = models.CharField(max_length = 100)
    PointsGained = models.IntegerField()
    Username = models.CharField(max_length = 20)
    Password = models.CharField(max_length = 20)

    def __unicode__(self):
        return self.FirstName + self.LastName

