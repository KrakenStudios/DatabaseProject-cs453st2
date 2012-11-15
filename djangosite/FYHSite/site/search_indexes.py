import datetime
from haystack.indexes import *
from haystack import site
from models import Product

class ProductIndex(SearchIndex):
    text = CharField(document=True, use_template=True)
    name = CharField(model_attr='ProductName')
    desc = CharField(model_attr='ProductDescription')

    def index_queryset(self):
        """
        This is used when the entire index for model is updated, and should only include
        public entries
        """
        return Product.objects.all()

site.register(Product, ProductIndex)
