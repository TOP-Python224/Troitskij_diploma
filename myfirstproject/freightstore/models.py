from django.core.exceptions import ValidationError
from django.db import models

#  export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$PATH"


class PositiveTinyAutoField(models.AutoField):
    def get_db_prep_value(self, value, connection, prepared=False):
        value = super().get_db_prep_value(value, connection, prepared)
        if not (0 <= value < 256):
            raise ValidationError('value of this field should be between 0 and 255')
        return value

    def db_type(self, connection):
        return 'tinyint unsigned auto_increment'

    def rel_db_type(self, connection):
        return 'tinyint unsigned'


class Carrier(models.Model):
    id = PositiveTinyAutoField(primary_key=True)
    name = models.CharField(max_length=50)

    class Meta:
        db_table = 'carrier'

    def __str__(self):
        return f'{self.name}'


class PortOfLoading(models.Model):
    id = PositiveTinyAutoField(primary_key=True)
    name = models.CharField(max_length=50)

    class Meta:
        db_table = 'port_of_loading'

    def __str__(self):
        return f'{self.name}'


class ContainerType(models.Model):
    id = PositiveTinyAutoField(primary_key=True)
    name = models.CharField(max_length=50)

    class Meta:
        db_table = 'container_type'

    def __str__(self):
        return f'{self.name}'


class FreightTariffs(models.Model):
    id = PositiveTinyAutoField(primary_key=True)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    carrier = models.ForeignKey(Carrier, models.CASCADE)
    port = models.ForeignKey(PortOfLoading, models.CASCADE)
    container = models.ForeignKey(ContainerType, models.CASCADE)

    class Meta:
        db_table = 'freight_tariffs'

    def __str__(self):
        return f'{self.price}'
