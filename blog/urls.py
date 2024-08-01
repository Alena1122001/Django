from django.urls import path
from . import views
from blog.views import main

urlpatterns = [
    path('', views.store, name='posts'),
]
