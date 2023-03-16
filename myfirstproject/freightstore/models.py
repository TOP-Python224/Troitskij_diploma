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
    name = models.CharField(max_length=50, unique=True)

    class Meta:
        db_table = 'carrier'

    def __str__(self):
        return f'{self.name}'