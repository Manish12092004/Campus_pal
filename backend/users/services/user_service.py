# users/services/user_service.py

def create_user(email, college):
    from users.models import User
    return User.objects.create(email=email, college=college)