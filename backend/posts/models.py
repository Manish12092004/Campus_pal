from django.db import models
from common.models import BaseModel
from users.models import User
from colleges.models import College

class Post(BaseModel):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    college = models.ForeignKey(College, on_delete=models.CASCADE)
    content = models.TextField()
    is_anonymous = models.BooleanField(default=False)