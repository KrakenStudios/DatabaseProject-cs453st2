from django.conf.urls.defaults import patterns, include, url

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',

# Examples:
    # url(r'^$', 'FYHSite.views.home', name='home'),
    # url(r'^FYHSite/', include('FYHSite.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    url(r'^$','FYHSite.site.views.home',name='home'),
    # Uncomment the next line to enable the admin:
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
    url(r'^account/', include('registration.urls')),
    
)
