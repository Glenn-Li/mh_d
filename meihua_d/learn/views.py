from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse

def index(request):
    return HttpResponse("Welcome!")

def add(requset, a, b):
    c = int(a) + int(b)
    return HttpResponse(c)

def home(request):
    return render(request, "learn/home.html")
