from django.shortcuts import render ,HttpResponse

#create your views here

def home(request):
    return HttpResponse("My coding practice")