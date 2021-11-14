from typing import List
from django.shortcuts import render
from django.views import View
from .models import (Customer, Product, Cart, Catagories, OrederPlace)
# Create your views here.


# def home(request):   
#     return render(request, 'main/home.html')
class productView(View):
    def get(self, request):
        BreakFast = Product.objects.filter(catagory = 'BF')
        Lunches = Product.objects.filter(catagory = 'L')
        Sandwich = Product.objects.filter(catagory = 'SM')
        Biriyani = Product.objects.filter(catagory = 'BIR')
        FreshDessert = Product.objects.filter(catagory = 'FD')
        Beverage = Product.objects.filter(catagory = 'BG')

        return render(request, 'main/home.html', {'BreakFast': BreakFast ,
        'Lunches': Lunches, 'Sandwich': Sandwich , 'Biriyani': Biriyani ,
         'FreshDessert': FreshDessert, 'Beverage': Beverage })



def about(request):
    return render(request, 'main/about.html')

def product_detail(request):
    return render(request, 'main/product-detail.html')