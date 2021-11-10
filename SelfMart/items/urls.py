from django.urls import path, include
from . import views
urlpatterns = [
   path('items/', views.items, name="items"),
   path('cart-item/', views.cartitem, name="cart-item"),
   path('checkout/', views.checkout, name="checkout")
   #path('productdetail/', views.product_detail, name="productdetail"),
]  