# Generated by Django 3.2.8 on 2021-11-14 16:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='catagory',
            field=models.CharField(choices=[('BF', 'BreakFast'), ('L', 'Lunches'), ('SM', 'Sandwich and more'), ('BIR', 'Biriyani'), ('FD', 'Fresh Dessert'), ('BG', 'Beverage')], max_length=4),
        ),
    ]