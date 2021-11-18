from django.shortcuts import redirect, render
from main.models import (Customer, Product, Cart, Catagories, OrederPlace)
# Create your views here.


def items(request):
    return render(request, 'items/item.html')

# def product_detail(request):
    #  return render(request,'items/productdetail.html')


def cartitem(request):
    user = request.user
    product_id = request.GET.get('prod_id')
    product = Product.objects.get(id = product_id)
    Cart(user=user, product=product).save()
    return redirect('showcart')

def show_cart(request):
    pass

def checkout(request):
    return render(request, 'items/checkout.html')
