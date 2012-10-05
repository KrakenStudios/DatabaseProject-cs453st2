from django.db import models
class Products(models.Model):
    UPCCode = models.IntegerField()
    ProductBrand = models.CharField(max_length = 20)
    ProductType = models.CharField(max_length = 10)
    ProductName = models.CharField(max_length = 100)
    ProductDescription = models.TextField()
    ProductSellPrice = models.FloatField(default = 10.00)
    ProductWholesalePrice = models.FloatField(default = 3.00)
    AmountInStock = models.IntegerField(default = 25)
    Department = models.CharField(max_length = 10)
    InStock = models.BooleanField(default = 1)

