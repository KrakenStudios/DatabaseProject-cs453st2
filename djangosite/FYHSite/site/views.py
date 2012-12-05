from models import Store
from models import Product
from django.shortcuts import render_to_response
from django.http import HttpResponse
def home(request):
    usergreet = 0
    if request.user.is_authenticated():
        usergreet = 'Hello, ' + request.user.username
    return render_to_response('index.html', {'usergreet':usergreet})

def register(request):
    usergreet = 0
    if request.user.is_authenticated():
        usergreet = 'Hello, ' + request.user.username
    return render_to_response('registration_form.html', {'usergreet':usergreet})

def music(request):
    usergreet = 0
    if request.user.is_authenticated():
        usergreet = 'Hello, ' + request.user.username
    entries = Product.objects.all()[:10]
    return render_to_response('music.html', {'Product' : entries, 
                                                       'usergreet' : usergreet})
def musicdetail(request, music_id):                                             
    usergreet = 0                                                               
    if request.user.is_authenticated():                                         
        usergreet = 'Hello, ' + request.user.username                           
    movie = Product.objects.get(pk=music_id)                                    
    return render_to_response('proddetail.html', {'product' : movie,            
                                                       'usergreet' : usergreet})


def movie(request):
    usergreet = 0
    if request.user.is_authenticated():
        usergreet = 'Hello, ' + request.user.username
    entries = Product.objects.all()[:10]
    return render_to_response('movie.html', {'Product' :entries, 
                                                       'usergreet' : usergreet})

def moviedetail(request, movie_id):                                                             
    usergreet = 0                                                               
    if request.user.is_authenticated():                                         
        usergreet = 'Hello, ' + request.user.username                           
    movie = Product.objects.get(pk=movie_id)                                        
    return render_to_response('proddetail.html', {'product' : movie,                
                                                       'usergreet' : usergreet})
def dvd(request):
    usergreet = 0
    if request.user.is_authenticated():
        usergreet = 'Hello, ' + request.user.username
    entries = Product.objects.all()[:10]
    return render_to_response('dvd.html', {'Product' : entries, 
                                                       'usergreet' : usergreet})

def bluray(request):
    usergreet = 0
    if request.user.is_authenticated():
        usergreet = 'Hello, ' + request.user.username
    entries = Product.objects.all()[:10]
    return render_to_response('bluray.html', {'Product' : entries, 
                                                       'usergreet' : usergreet})

def used(request):
    usergreet = 0
    if request.user.is_authenticated():
        usergreet = 'Hello, ' + request.user.username
    entries = Product.objects.all()[:10]
    return render_to_response('used.html', {'Product' : entries, 
                                                       'usergreet' : usergreet})

def useddetail(request, used_id):                                             
    usergreet = 0                                                               
    if request.user.is_authenticated():                                         
        usergreet = 'Hello, ' + request.user.username                           
    movie = Product.objects.get(pk=used_id)                                    
    return render_to_response('proddetail.html', {'product' : movie,            
                                                       'usergreet' : usergreet})


def help(request):
    usergreet = 0
    if request.user.is_authenticated():
        usergreet = 'Hello, ' + request.user.username
    return render_to_response('help.html', {'usergreet':usergreet})

def cart(request):
    isauthed = 0
    usergreet = 0
    if request.user.is_authenticated():
        isauthed = 1
        usergreet = 'Hello, ' + request.user.username
    return render_to_response('cart.html',{'usergreet':usergreet,
                                                           'isauthed':isauthed})

def login(request):
    usergreet = 0
    if request.user.is_authenticated():
        usergreet = 'Hello, ' + request.user.username
    return render_to_response('login.html')

def track(request):
    isauthed = 1
    usergreet = 0
    if request.user.is_authenticated():
        isauthed = 1
        usergreet = 'Hello, ' + request.user.username
    return render_to_response('ordertrack.html', {'usergreet':usergreet,
                                                           'isauthed':isauthed})

def wishlist(request):
    isauthed = 1
    usergreet = 0
    if request.user.is_authenticated():
        isauthed = 1
        usergreet = 'Hello, ' + request.user.username
    return render_to_response('wishlist.html', {'usergreet':usergreet,
                                                           'isauthed':isauthed})

def stores(request):
    usergreet = 0
    if request.user.is_authenticated():
        usergreet = 'Hello, ' + request.user.username
    city = request.GET.get('city')
    address = request.GET.get('address')
    country = request.GET.get('country')
    latitude = request.GET.get('latitude')
    longitude = request.GET.get('longitude')
    lat = None
    lng = None
    stores = Store.objects.all()
    for fyh in stores:
        print "latitude: " + fyh.Latitude
        print "longitude: " + fyh.Longitude
        if latitude == fyh.Latitude and longitude == fyh.Longitude:
            lat = latitude
            lng = longitude
        if latitude == fyh.Latitude and longitude == fyh.Longitude:
            lat = latitude
            lng = longitude

    return render_to_response('stores.html', {'latitude':latitude, 
             'longitude':longitude, 'lat':lat,'lng':lng, 'usergreet':usergreet})
def deactivate(request):
    if request.user.is_authenticated():
        request.user.is_active = 0
        request.user.save()
    return render_to_response('deactivated.html')

def account(request):
    isauthed = 1
    usergreet = 0
    user = 0
    if request.user.is_authenticated():
        isauthed = 1
        user = request.user.username
        usergreet = 'Hello, ' + user
    return render_to_response('account.html', {'usergreet':usergreet, 
                'isauthed':isauthed, 'user':user})

def games(request):
    usergreet = 0
    if request.user.is_authenticated():
        usergreet = 'Hello, ' + request.user.username
    
    entries = Product.objects.all()[:10]
    return render_to_response('games.html', {'Product' : entries, 
                                                         'usergreet':usergreet})

def gamesdetail(request, game_id):                                             
    usergreet = 0                                                               
    if request.user.is_authenticated():                                         
        usergreet = 'Hello, ' + request.user.username                           
    movie = Product.objects.get(pk=game_id)                                    
    return render_to_response('proddetail.html', {'product' : movie,            
                                                       'usergreet' : usergreet})
