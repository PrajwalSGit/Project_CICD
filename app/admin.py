from django.contrib import admin
from .models import Employee


class EmpAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'email', 'salary']


admin.site.register(Employee, EmpAdmin)
