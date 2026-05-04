from rest_framework.decorators import api_view
from rest_framework.response import Response
from .models import EmailOTP
from .utils import generate_otp, send_otp_email, is_valid_college_email
from colleges.models import College


@api_view(['POST'])
def send_otp(request):
    email = request.data.get("email")

    if not email:
        return Response({"error": "Email required"}, status=400)

    if not is_valid_college_email(email):
        return Response({"error": "Invalid college email"}, status=400)

    otp = generate_otp()
    EmailOTP.objects.create(email=email, otp=otp)

    send_otp_email(email, otp)

    return Response({"message": "OTP sent"})


@api_view(['POST'])
def verify_otp(request):
    email = request.data.get("email")
    otp = request.data.get("otp")

    record = EmailOTP.objects.filter(email=email, otp=otp).last()

    if not record:
        return Response({"error": "Invalid OTP"}, status=400)

    record.is_verified = True
    record.save()

    domain = email.split("@")[1]

    college, created = College.objects.get_or_create(domain=domain)

    return Response({
        "message": "Verified",
        "college_domain": domain,
        "new_college_created": created
    })