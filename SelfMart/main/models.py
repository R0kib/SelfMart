from django.db import models
from django.contrib.auth.models import User
from django.core.validators import MaxValueValidator, MinValueValidator

# Create your models here.
STATE_DIVISON =(
    ('Dhaka','Dhaka'),
    ('Khulna', 'Khulna'),
    ('Barisal', 'Barisal'),
    ('Chittagong', 'Chittagong'),
    ('Mymensingh', 'Mymensingh'),
    ('Rajshahi', 'Rajshahi'),
    ('Sylhet', 'Sylhet'),
    ('Rangpur', 'Rangpur'),
)
class Customer(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    name = models.CharField(max_length=200)
    Area = models.CharField(max_length=200)
    city = models.CharField(max_length=200)
    zipCode = models.IntegerField()
    divison = models.CharField(choices=STATE_DIVISON , max_length=50)
    
    def __str__(self):
        return str(self.id)

class Catagories(models.Model):
    Items_name = models.CharField(max_length=200)

    def __str__(self):
        return str(self.id)

class Product(models.Model):
    title = models.CharField(max_length=200)
    selling_price = models.FloatField()
    discount_price = models.FloatField()
    discription = models.TextField()
    brand = models.CharField(max_length=100)
    catagory = models.ForeignKey(Catagories, on_delete = models.CASCADE)
    product_image = models.ImageField(upload_to= 'productImg')

    def __str__(self):
        return str(self.id)


class Cart(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.PositiveIntegerField(default=1)

    def __str__(self):
        return str(self.id)


STATUS_CHOICES = (
    ('Accepted', 'Accepted'),
    ('Picked', 'Picked'),
    ('On the Way', 'On the Way'),
    ('Delivered', 'Delivered'),
    ('cancel', 'cancel'),
)

class OrederPlace(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    customer = models.ForeignKey(Customer, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.IntegerField()
    order_date = models.DateField(auto_now_add=True)
    status = models.CharField(max_length=50, choices=STATUS_CHOICES, default= 'Pending')






