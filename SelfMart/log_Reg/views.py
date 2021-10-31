from django.shortcuts import render

# Create your views here.
def login(request):
    return render(request, 'log_Reg/login.html')

def signup(request):
    return render(request, 'log_Reg/signup.html')