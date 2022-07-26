from django.shortcuts import render

# Create your views here.
def login(request):
    return render(request, 'deliveryinfo/delivery_Login.html')

def signUp(request):
    return render(request, 'deliveryinfo/delivery_SignUp.html')

def delivery_home(request):
    return render(request, 'deliveryinfo/delivery_home.html')