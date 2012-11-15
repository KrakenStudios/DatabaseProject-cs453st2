from django.contrib import admin
from models import Products
from models import Customer
from django import forms
from django.contrib import admin
from easy_maps.widgets import AddressWithMapWidget
from models import Store
admin.site.register(Products)
admin.site.register(Customer)
class StoreAdmin(admin.ModelAdmin):
    class form(forms.ModelForm):
        class Meta:
            widgets = {
                'address': AddressWithMapWidget({'class': 'vTextField'})
            }

admin.site.register(Store, StoreAdmin)
