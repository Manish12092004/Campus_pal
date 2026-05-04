from django.db import models

# Create your models here.
from common.models import BaseModel

class College(BaseModel):
    name = models.CharField(max_length=255)
    domain = models.CharField(max_length=255, unique=True)
    is_verified = models.BooleanField(default=False)

    def __str__(self):
        return self.name