from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse

def index(req):
    return HttpResponse("Welcome!")

def add(req, a, b):
    c = int(a) + int(b)
    return HttpResponse(c)


