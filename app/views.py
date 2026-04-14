from django.http import HttpResponse
from django.shortcuts import render
from .models import Employee


def emp(request):
    emp = Employee.objects.all()
    return HttpResponse(emp)
