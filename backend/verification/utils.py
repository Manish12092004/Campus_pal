import random
from django.conf import settings
from django.core.mail import send_mail

ALLOWED_DOMAINS = [".edu", ".ac.in", ".edu.in"]

def generate_otp():
    return str(random.randint(100000, 999999))

def is_valid_college_email(email):
    return any(email.endswith(domain) for domain in ALLOWED_DOMAINS)

def send_otp_email(email, otp):
    send_mail(
        subject="CampusPal OTP",
        message=f"Your OTP is {otp}",
        from_email=settings.EMAIL_HOST_USER,
        recipient_list=[email],
    )