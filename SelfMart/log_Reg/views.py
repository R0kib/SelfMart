from django.contrib.auth.models import User
from django.shortcuts import redirect, render
from django.contrib import messages
from django.views import View
from main.models import (Customer, Product, Cart, Catagories, OrederPlace)
from django.contrib.auth import authenticate, login, logout, update_session_auth_hash
from django.contrib.auth.forms import PasswordChangeForm
from .forms import CustomerProfileForm

# Create your views here.


def login_page(request):

    if request.method == 'POST':
        username = request.POST['username']
        password1 = request.POST['password1']

        user = authenticate(username=username, password=password1)

        if user is not None:
            login(request, user)
            username = user.username
            return render(request, 'main/home.html', {'username': username})
        else:
            messages.error(request, "Incorrect username or password")
            return redirect('login')

    return render(request, 'log_Reg/login.html')


def signup(request):

    if request.method == 'POST':
        username = request.POST['username']
        email = request.POST['email']
        number = request.POST['number']
        password1 = request.POST['password1']
        password2 = request.POST['password2']

        if User.objects.filter(username = username):
            messages.error(request, "Username already exist!!")
            return redirect('signup')

        if User.objects.filter(email = email):
            messages.error(request, "Email already registered!")
            return redirect('signup')

        if password1 != password2:
            messages.error(request, "Password is not match! Try again")
            return redirect('signup')

        if not username.isalnum():
            messages.error(request, "Username must be alphanumeric")
            return redirect('signup')

        myuser = User.objects.create_user(username, email, password1)
        myuser.number = number


        messages.success(request, "Your Account has been successfully created.")


        myuser.save()
    return render(request, 'log_Reg/signup.html')

      

   
# class CustomerRegistrationView(View):
#     def get(self, request):
#         form = RegistrationForm()
#         return render(request, 'log_Reg/signup.html', {'form': form})

#     def post(self, request):
#         form = RegistrationForm(request.POST)
#         if form.is_valid():
#             form.save()
#         return render(request, 'log_Reg/signup.html', {'form': form})
    

def logout_page(request):
    logout(request)
    return redirect('home') 



def change_pass(request):

    if request.method == 'POST':
        passChange = PasswordChangeForm(user=request.user, data = request.POST)
        if passChange.is_valid():
            messages.success(request, 'Password changed successfully!!')
            passChange.save()
            update_session_auth_hash(request, passChange.user)
            return redirect('home')

    else:
        passChange = PasswordChangeForm(user = request.user)
    return render(request, 'log_Reg/changepassword.html', {'passChange': passChange})



# def profile(request):
#     return render(request, 'log_Reg/profile.html')

class ProfileView(View):
    def get(self, request):
        form = CustomerProfileForm()
        return render(request, 'log_Reg/profile.html', {'form': form})

    def post(self, request):
        form = CustomerProfileForm(request.POST)
        if form.is_valid():
            user = request.user
            name = form.cleaned_data['name']
            Area = form.cleaned_data['Area']
            city = form.cleaned_data['city']
            zipCode = form.cleaned_data['zipCode']
            divison = form.cleaned_data['divison']
            reg = Customer( user=user ,name=name, Area=Area, city=city, zipCode=zipCode, divison=divison)
            reg.save()
            messages.success(request, 'Profile Updated Successfully')
            return render(request, 'log_Reg/profile.html', {'form': form})


def address(request):
    add = Customer.objects.filter(user = request.user)
    return render(request, 'log_Reg/address.html', {'add': add})