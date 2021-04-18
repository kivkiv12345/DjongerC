from django.urls import path

from DjongerApp.views import IndexView

urlpatterns = [
    path('', IndexView.as_view(), name='index-view'),
]

app_name = 'DjongerApp'