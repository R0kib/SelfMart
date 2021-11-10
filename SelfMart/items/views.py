from django.shortcuts import render

# Create your views here.


def items(request):
    return render(request, 'items/item.html')

# def product_detail(request):
    #  return render(request,'items/productdetail.html')


def cartitem(request):

    return render(request, 'items/cart_item.html')


def checkout(request):
    return render(request, 'items/checkout.html')
