from django.db import models

# Create your models here.

class Hunt(models.Model):
    name = models.CharField('Name', max_length=80)

    class Meta:
        ordering = ['name']

    def __str__(self):
        return self.name