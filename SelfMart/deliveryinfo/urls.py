from tokenize import Name
from django.contrib import admin
from django.urls import path, include
from . import views
urlpatterns = [
    path('delivery_home/', views.delivery_home, name='delivery_home'),
    path('login/', views.login, name='delivery_login'),
    path('signup/', views.signUp, name="delivery_signup")
]
