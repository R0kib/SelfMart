from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.db.models.base import Model
from main.models import Customer

class RegistrationForm(UserCreationForm):
    username = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control input-box', 'placeholder': 'Username'}))
    email = forms.CharField(widget=forms.EmailInput(attrs={'class': 'form-control input-box', 'placeholder': 'Email Address'}))
    password1 = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control input-box', 'placeholder': 'Password'}))
    password2 = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control input-box', 'placeholder': 'Confirm Password'}))

    class Meta:
       models = User
       fields = ['username','email' ,'password1', 'password2']



class CustomerProfileForm(forms.ModelForm):
    class Meta:
        model = Customer
        fields = ['name', 'Area', 'city', 'zipCode', 'divison']
        widget = {
            'name':forms.TextInput(attrs={'class': 'form-control p-3', 'placeholder': 'Name'}),
            'Area':forms.TextInput(attrs={'class': 'form-control p-3'}),
            'city':forms.TextInput(attrs={'class': 'form-control p-3'}),
            'zipCode':forms.NumberInput(attrs={'class': 'form-control p-3'}),
            'divison':forms.Select(attrs={'class': 'form-control p-3'}),
        
        }