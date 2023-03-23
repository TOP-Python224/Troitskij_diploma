from django.urls import path
from freightstore import views


urlpatterns = [
    path('', views.index, name='main'),
    path('maersk/', views.carriers, kwargs={'carr_id': 1}, name='maersk'),
    path('msc/', views.carriers, kwargs={'carr_id': 2}, name='msc'),
    path('cma_cgm/', views.carriers, kwargs={'carr_id': 3}, name='cma_cgm'),
    path('evergreen/', views.carriers, kwargs={'carr_id': 4}, name='evergreen'),
    path('hapag_lloyd/', views.carriers, kwargs={'carr_id': 5}, name='hapag_lloyd'),
]