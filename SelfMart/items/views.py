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
    if request.user.is_authenticated:
        user = request.user
        carts = Cart.objects.filter(user=user)
        amount = 0.0
        shipping_amount = 50.0
        total_amount = 0.0
        product_cart = [p for p in Cart.objects.all() if p.user == user]


        if product_cart:
            for p in product_cart:
                amount += (p.quantity * p.product.discount_price)
                totalamount = shipping_amount + amount

                allPrice = {
                    'totalamount':totalamount, 
                    'amount' : amount ,
                    'shippingAmount' : shipping_amount,
                    }
        return render(request, 'items/cart_item.html', {'carts': carts, 'allPrice': allPrice})

def checkout(request):
    return render(request, 'items/checkout.html')
