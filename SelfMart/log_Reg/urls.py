from django.urls import path, include
from . import views
urlpatterns = [
   path('login/', views.login_page, name="login"),
   path('signup/', views.signup, name="signup"),
   path('logout/', views.logout, name="logout"),
   path('account/', views.myaccount, name="account"),
]