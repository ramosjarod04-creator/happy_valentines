import os
from django.core.wsgi import get_wsgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'valentinesite.settings')

application = get_wsgi_application()
app = application  # Add this line! Vercel needs 'app'