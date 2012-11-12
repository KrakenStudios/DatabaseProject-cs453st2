from models import Products
from django.shortcuts import render_to_response


def home(request):
    return render_to_response('index.html')

def register(request):
    return render_to_response('registration_form.html')

def music(request):
    entries = Products.objects.all()[:10]
    return render_to_response('music.html', {'Products' : entries})

def movie(request):
    entries = Products.objects.all()[:10]
    return render_to_response('movie.html', {'Products' :entries})

def dvd(request):
    entries = Products.objects.all()[:10]
    return render_to_response('dvd.html', {'Products' : entries})

def bluray(request):
    entries = Products.objects.all()[:10]
    return render_to_response('bluray.html', {'Products' : entries})

def used(request):
    entries = Products.objects.all()[:10]
    return render_to_response('used.html', {'Products':entries})

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
    return render_to_response('stores.html')

def account(request):
    return render_to_response('account.html')

def games(request):
    entries = Products.objects.all()[:10]
    return render_to_response('games.html', {'Products' : entries})
