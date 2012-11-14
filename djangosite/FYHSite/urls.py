from django.conf.urls.defaults import patterns, include, url
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',

    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    url(r'^$','FYHSite.site.views.home',name='home'),
    url(r'^admin/', include(admin.site.urls)),
    url(r'^games/', 'FYHSite.site.views.games',name='games'),
    url(r'^movie/', 'FYHSite.site.views.movie',name='movie'),
    url(r'^music/', 'FYHSite.site.views.music',name='music'),
    url(r'^used/', 'FYHSite.site.views.used',name='used'),
    url(r'^cart/', 'FYHSite.site.views.cart',name='cart'),
    url(r'^track/', 'FYHSite.site.views.track',name='track'),
    url(r'^wishlist/', 'FYHSite.site.views.wishlist',name='wishlist'),
    url(r'^help/', 'FYHSite.site.views.help',name='help'),
    url(r'^stores/', 'FYHSite.site.views.stores',name='stores'),
    url(r'^accounts/', 'FYHSite.site.views.account',name='account'),
    url(r'^account/', include('registration.urls')),
    url(r'^search/', include('haystack.urls')), 
)
