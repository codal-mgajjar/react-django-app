from django.contrib import admin

# Register your models here.
from .models import User

class UserAdmin(admin.ModelAdmin):
    list_display = ('name', 'email', 'document', 'phone', 'registrationDate')
    search_fields = ('name', 'email', 'document', 'phone')
    list_filter = ('registrationDate',)

admin.site.register(User, UserAdmin)
