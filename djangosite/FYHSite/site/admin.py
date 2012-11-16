from django.contrib import admin
from django import forms
from easy_maps.widgets import AddressWithMapWidget

from models import Customer
from models import FrequentShopper
from models import Address
from models import Store
from models import Vendor
from models import Brand
from models import Product
from models import ProductType
from models import OrderTracking
from models import ShipsTo
from models import BillsTo
from models import SellsTo
from models import SellsThese
from models import Ordered
from models import BeenOrdered
from models import Restocks
from models import InstanceOf
from models import IsATypeOf 

class StoreAdmin(admin.ModelAdmin):
    class form(forms.ModelForm):
        class Meta:
            widgets = {
                'address': AddressWithMapWidget({'class': 'vTextField'})
            }

admin.site.register(Customer)
admin.site.register(FrequentShopper)
admin.site.register(Address)
admin.site.register(Store, StoreAdmin)
admin.site.register(Vendor)
admin.site.register(Brand)
admin.site.register(Product)
admin.site.register(ProductType)
admin.site.register(OrderTracking)
admin.site.register(ShipsTo)
admin.site.register(BillsTo)
admin.site.register(SellsTo)
admin.site.register(SellsThese)
admin.site.register(Ordered)
admin.site.register(BeenOrdered)
admin.site.register(Restocks)
admin.site.register(InstanceOf)
admin.site.register(IsATypeOf)
