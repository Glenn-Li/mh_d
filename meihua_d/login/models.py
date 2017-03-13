# coding:utf-8
from django.db import models
from django.contrib import admin

# Create your models here.
class User(models.Model):
    username = models.CharField(max_length=50)
    password = models.CharField(max_length=50)

    def __unicode__(self):  # __str__ on Python 3
        return self.username

class UserAdmin(admin.ModelAdmin):
    list_display = ('username','password')

    def __str__(self):
        return self.list_display

admin.site.register(User,UserAdmin)
