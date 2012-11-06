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
    url(r'^$','FYHSite.blog.views.home',name='home'),
    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
    url(r'^games/', 'FYHSite.blog.views.games',name='games'),
    url(r'^dvd/', 'FYHSite.blog.views.dvd',name='dvd'),
    url(r'^bluray/', 'FYHSite.blog.views.bluray',name='bluray'),
    url(r'^music/', 'FYHSite.blog.views.music',name='music'),
    url(r'^used/', 'FYHSite.blog.views.used',name='used'),
    url(r'^cart/', 'FYHSite.blog.views.cart',name='cart'),
    url(r'^track/', 'FYHSite.blog.views.track',name='track'),
    url(r'^wishlist/', 'FYHSite.blog.views.wishlist',name='wishlist'),
    url(r'^help/', 'FYHSite.blog.views.help',name='help'),
    url(r'^stores/', 'FYHSite.blog.views.stores',name='stores'),
    url(r'^account/', include('registration.urls')),
    
)
