from django.db import models

# Create your models here.
from common.models import BaseModel
from colleges.models import College

class User(BaseModel):
    email = models.EmailField(unique=True)
    name = models.CharField(max_length=100)
    department = models.CharField(max_length=100, blank=True)
    college = models.ForeignKey(College, on_delete=models.CASCADE)

    is_verified = models.BooleanField(default=False)