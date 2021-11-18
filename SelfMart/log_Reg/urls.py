from django.urls import path, include
from . import views
urlpatterns = [
    path('login/', views.login_page, name="login"),
    #path('signup/', views.CustomerRegistrationView.as_view(), name="signup"),
    path('signup/', views.signup, name="signup"),
    path('logout/', views.logout_page, name="logout"),
    path('profile/', views.ProfileView.as_view(), name="profile"),
    path('address/', views.address, name="address"),
    path('change_pass/', views.change_pass, name="change_pass"),
]
