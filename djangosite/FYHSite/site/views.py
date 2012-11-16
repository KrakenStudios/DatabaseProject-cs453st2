from models import Product
from django.shortcuts import render_to_response

def home(request):
    return render_to_response('index.html')

def register(request):
    return render_to_response('registration_form.html')

def music(request):
    entries = Product.objects.all()[:10]
    return render_to_response('music.html', {'Product' : entries})

def movie(request):
    entries = Product.objects.all()[:10]
    return render_to_response('movie.html', {'Product' :entries})

def dvd(request):
    entries = Product.objects.all()[:10]
    return render_to_response('dvd.html', {'Product' : entries})

def bluray(request):
    entries = Product.objects.all()[:10]
    return render_to_response('bluray.html', {'Product' : entries})

def used(request):
    entries = Product.objects.all()[:10]
    return render_to_response('used.html', {'Product':entries})

def help(request):
    return render_to_response('help.html')

def cart(request):
    return render_to_response('cart.html')

def login(request):
    return render_to_response('login.html')

def track(request):
    return render_to_response('ordertrack.html')

def wishlist(request):
    return render_to_response('wishlist.html')

def stores(request):
    city = request.GET.get('city')
    address = request.GET.get('address')
    country = request.GET.get('country')
    latitude = request.GET.get('latitude')
    longitude = request.GET.get('longitude')
    return render_to_response('stores.html', {'city':city, 'address':address})

def account(request):
    return render_to_response('account.html')

def games(request):
    entries = Product.objects.all()[:10]
    return render_to_response('games.html', {'Product' : entries})
