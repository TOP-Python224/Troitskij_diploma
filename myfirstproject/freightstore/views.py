from django.shortcuts import render
from freightstore.models import Carrier, PortOfLoading, ContainerType, FreightTariffs


def index(request):
    return render(
        request,
        'freightstore/homepage.html',
        {
            'carriers_list': Carrier.objects.all(),
            'ports_list': PortOfLoading.objects.all(),
            'containers_list': ContainerType.objects.all(),
            'tariffs_list': FreightTariffs.objects.all(),
        }
    )


def carriers(request, carr_id: int):
    carrier = Carrier.objects.get(pk=carr_id)
    return render(
        request,
        'freightstore/carriers.html',
        {
            'carrier':  carrier,
            'page_title': carrier.name,
        }
    )