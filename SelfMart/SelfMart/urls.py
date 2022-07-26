from django.contrib import admin
from django.urls import path, include
from main import views
from django.conf import settings
from django.conf.urls.static import static
urlpatterns = [
    path('admin/', admin.site.urls),
   # path('', views.home, name="home"),
    path('', views.productView.as_view(), name="home"),
    path('about/', views.about, name="about"),
    path('product_detail/<int:pk>', views.viewProductDetails.as_view(), name="product_detail"),
    path('item/', include('items.urls')),           
    path('log_reg/', include('log_Reg.urls')),
    path('delivery/', include('deliveryinfo.urls'))
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
