from django.urls import path
from .models import Employee
from .views import emp

urlpatterns = [
    path('employee/', emp, name='employee'),
]