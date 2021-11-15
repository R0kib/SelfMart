from django.shortcuts import redirect, render
from django.contrib.auth.models import User
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout

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

        myuser = User.objects.create_user(username, email, password1)
        myuser.number = number


        messages.success(request, "Your Account has been successfully created.")


        myuser.save()

        return redirect('signup')

    return render(request, 'log_Reg/signup.html')


def logout_page(request):
    logout(request)
    return redirect('home')


def profile(request):
    return render(request, 'log_Reg/profile.html')


def change_pass(request):
    return render(request, 'log_Reg/changepassword.html')


def address(request):
    return render(request, 'log_Reg/address.html')

