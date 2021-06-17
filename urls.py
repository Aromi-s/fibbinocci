from django.urls import path

from django.conf.urls.static import static
from django.conf import settings
from .views import coffee_payment, payment_status

urlpatterns = [
    path('', coffee_payment, name='coffee-payment'),
    path('payment-status', payment_status, name='payment-status')
]+ static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

