from django.urls import path, include
from . import views
urlpatterns = [
   path('items/', views.items, name="items"),
   path('cart-item/', views.cartitem, name="cart-item"),
   path('cart/', views.show_cart, name="showcart"),
   path('checkout/', views.checkout, name="checkout")
   #path('productdetail/', views.product_detail, name="productdetail"),
]  