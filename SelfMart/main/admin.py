from django.contrib import admin
from .models import (Customer, Product, Cart, Catagories, OrederPlace)

# Register your models here.

@admin.register(Customer)
class CustomerModelAdmin(admin.ModelAdmin):
    list_display = ['id', 'user', 'name', 'Area', 'city', 'zipCode', 'divison']

@admin.register(Product)
class ProductModelAdmin(admin.ModelAdmin):
    list_display = ['id', 'title', 'selling_price', 'discount_price', 'discription',
     'brand', 'catagory', 'product_image']

@admin.register(Cart)
class CartModelAdmin(admin.ModelAdmin):
    list_display = ['id', 'user', 'product', 'quantity']

@admin.register(Catagories)
class CatagoryModelAdmin(admin.ModelAdmin):
    list_display = ['id', 'Items_name']

@admin.register(OrederPlace)
class OrederPlaceModelAdmin(admin.ModelAdmin):
    list_display = ['id', 'user','customer', 'product', 
    'quantity', 'order_date', 'status']