from typing import List
from django.shortcuts import render
from django.views import View
from .models import (Customer, Product, Cart, Catagories, OrederPlace)
# Create your views here.


# def home(request):   
#     return render(request, 'main/home.html')
class productView(View):
    def get(self, request):
        catagories = Catagories.objects.all()

        BreakFast = Product.objects.filter(catagory = 'BF')
        Lunches = Product.objects.filter(catagory = 'L')
        Sandwich = Product.objects.filter(catagory = 'SM')
        Biriyani = Product.objects.filter(catagory = 'BIR')
        FreshDessert = Product.objects.filter(catagory = 'FD')
        Beverage = Product.objects.filter(catagory = 'BG')

        catagory_Items ={
            'BreakFast': BreakFast ,
            'Lunches': Lunches, 
            'Sandwich': Sandwich ,
            'Biriyani': Biriyani ,
            'FreshDessert': FreshDessert,
            'Beverage': Beverage 
            }

        return render(request, 'main/home.html', {'catagory_Items' : catagory_Items, 'catagories': catagories})



def about(request):
    return render(request, 'main/about.html')

# def product_detail(request):
#     return render(request, 'main/product-detail.html')

class viewProductDetails(View):
    def get(self, request, pk):
        product = Product.objects.get(pk=pk)
        return render(request, 'main/product-detail.html', {'product': product})