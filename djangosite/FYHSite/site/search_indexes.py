import datetime
from haystack.indexes import *
from haystack import site
from models import Products

class ProductIndex(SearchIndex):
    text = CharField(document=True, use_template=True)
    name = CharField(model_attr='ProductName')
    desc = CharField(model_attr='ProductDescription')

    def get_queryset(self):
        """
        This is used when the entire index for model is updated, and should only include
        public entries
        """
        return Products.objects.all()

site.register(Products, ProductIndex)
